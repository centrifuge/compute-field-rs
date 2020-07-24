use compute_fields::{decode_attributes, fetch_bytes};

#[no_mangle]
pub extern "C" fn compute(pointer: *mut u8, size: usize) -> usize {
    let encoded_attrs: Vec<u8> = fetch_bytes(pointer, size);
    let attrs = decode_attributes(encoded_attrs);
    match attrs {
        Ok(attributes) => attributes.len(),
        Err(_err) => 0,
    }
}
