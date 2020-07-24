pub use compute_fields::*;
use std::mem;

#[no_mangle]
pub extern "C" fn compute(pointer: *mut u8, size: usize) -> *const u8 {
    let encode_attr_bytes: Vec<u8> = unsafe { Vec::from_raw_parts(pointer, size, size) };
    let c: Vec<u8> = encode_attr_bytes.into_iter().map(|x| x + 1).collect();
    let ptr = c.as_ptr();
    mem::forget(c);
    ptr
}
