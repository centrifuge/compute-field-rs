use compute_fields::{decode_attributes, encode_risk_value, to_u128, Attribute};

#[no_mangle]
pub extern "C" fn compute(pointer: *mut u8, size: usize) -> *const u8 {
    let attrs = decode_attributes(pointer, size);
    let risk = 0 as u128;
    match attrs {
        Ok(attributes) => {
            let value = average(attributes);
            match value {
                (None, Some(value)) => encode_risk_value(risk, value),
                (Some(risk), Some(value)) => encode_risk_value(risk, value),
                _ => encode_risk_value(0, 0),
            }
        }
        Err(_err) => encode_risk_value(0, 0),
    }
}

/// averages all the attributes and returns risk and value
/// assumes each value is u128
fn average(attributes: Vec<Attribute>) -> (Option<u128>, Option<u128>) {
    let mut len = 0;
    let result = attributes.into_iter().fold(
        (Some(0 as u128), Some(0 as u128)),
        |mut acc: (Option<u128>, Option<u128>), attr| {
            match attr.key.as_str() {
                "RiskScore" => {
                    acc.0 = Some(to_u128(attr.value));
                    acc
                }

                _ => {
                    match attr.attr_type.as_str() {
                        "signed" => {
                            let v = to_u128(attr.signed.value);
                            acc.1 = acc.1.unwrap().checked_add(v);
                            len += 1;
                            acc
                        }

                        // assuming the type is always integer
                        _ => {
                            let v = to_u128(attr.value);
                            acc.1 = acc.1.unwrap().checked_add(v);
                            len += 1;
                            acc
                        }
                    }
                }
            }
        },
    );
    (
        result.0,
        result.1.and_then(|s: u128| s.checked_div(len as u128)),
    )
}
