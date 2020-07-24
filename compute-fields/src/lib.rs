use parity_scale_codec::{Decode, Error};
use parity_scale_codec_derive::Decode;
use std::mem;

#[no_mangle]
pub extern "C" fn allocate(size: usize) -> *mut u8 {
    let mut buffer = Vec::with_capacity(size);
    let pointer = buffer.as_mut_ptr();
    mem::forget(buffer);
    pointer
}

#[derive(Debug, PartialEq, Decode)]
pub struct Signed {
    pub identity: Vec<u8>,
    pub document_version: Vec<u8>,
    pub value: Vec<u8>,
    pub signed_type: String,
    pub signature: Vec<u8>,
    pub public_key: Vec<u8>,
}

#[derive(Debug, PartialEq, Decode)]
pub struct Attribute {
    pub key: String,
    pub attr_type: String,
    pub value: Vec<u8>,
    pub signed: Signed,
}

/// fetch_bytes convert raw vec pointer to Vec<u8>
pub fn fetch_bytes(pointer: *mut u8, size: usize) -> Vec<u8> {
    let v: Vec<u8> = unsafe { Vec::from_raw_parts(pointer, size, size) };
    v
}

/// fetch_attributes decodes the scale encoded Attribute Bytes and returns list of decoded attributes
pub fn decode_attributes(encoded_attrs: Vec<u8>) -> Result<Vec<Attribute>, String> {
    let res: Result<Vec<Attribute>, Error> =
        Vec::<Attribute>::decode::<&[u8]>(&mut encoded_attrs.as_slice());
    match res {
        Ok(attributes) => Ok(attributes),
        Err(err) => Err(err.to_string()),
    }
}

/// convert the vector to pointer.
/// Used when passing Vec from rust to foreign
pub fn vec_to_ptr<T>(v: Vec<T>) -> *const T {
    let ptr = v.as_ptr();
    mem::forget(v);
    ptr
}
