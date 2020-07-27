use compute_fields::{decode_attributes, encode_risk_value, to_u128, Attribute};

#[no_mangle]
pub extern "C" fn compute(pointer: *mut u8, size: usize) -> *const u8 {
    let attrs = decode_attributes(pointer, size);
    let risk = 1 as u128;
    match attrs {
        Ok(attributes) => {
            let value = average(attributes);
            match value {
                Some(v) => encode_risk_value(risk, v),
                None => encode_risk_value(0, 0),
            }
        }
        Err(_err) => encode_risk_value(0, 0),
    }
}

/// averages all the attributes and returns risk and value
/// assumes each value is u128
fn average(attributes: Vec<Attribute>) -> Option<u128> {
    attributes
        .into_iter()
        .fold(Some(0 as u128), |acc: Option<u128>, attr| {
            match attr.attr_type.as_str() {
                "signed" => {
                    let v = to_u128(attr.signed.value);
                    acc.unwrap().checked_add(v)
                }

                // assuming the type is always integer
                _ => {
                    let v = to_u128(attr.value);
                    acc.unwrap().checked_add(v)
                }
            }
        })
}
