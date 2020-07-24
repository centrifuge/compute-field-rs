use compute_fields::decode_attributes;

#[no_mangle]
pub extern "C" fn compute(pointer: *mut u8, size: usize) -> usize {
    let attrs = decode_attributes(pointer, size);
    match attrs {
        Ok(attributes) => attributes.len(),
        Err(_err) => 0,
    }
}
