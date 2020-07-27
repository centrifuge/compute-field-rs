use parity_scale_codec::{Decode, Error};
use parity_scale_codec_derive::Decode;
use std::convert::TryInto;
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
fn fetch_bytes(pointer: *mut u8, size: usize) -> Vec<u8> {
    let v: Vec<u8> = unsafe { Vec::from_raw_parts(pointer, size, size) };
    v
}

/// fetch_attributes decodes the scale encoded Attribute Bytes and returns list of decoded attributes
pub fn decode_attributes(pointer: *mut u8, size: usize) -> Result<Vec<Attribute>, String> {
    let encoded_attrs = fetch_bytes(pointer, size);
    let res: Result<Vec<Attribute>, Error> =
        Vec::<Attribute>::decode::<&[u8]>(&mut encoded_attrs.as_slice());
    match res {
        Ok(attributes) => Ok(attributes),
        Err(err) => Err(err.to_string()),
    }
}

/// convert the vector to pointer.
/// Used when passing Vec from rust to foreign
fn vec_to_ptr<T>(v: Vec<T>) -> *const T {
    let ptr = v.as_ptr();
    mem::forget(v);
    ptr
}

// encodes the risk and value into a 32byte to be passed to Foreign function
pub fn encode_risk_value(risk: u128, value: u128) -> *const u8 {
    let rb: [u8; 16] = risk.to_be_bytes();
    let vb: [u8; 16] = value.to_be_bytes();

    let mut result = Vec::with_capacity(32);
    result.extend_from_slice(&rb);
    result.extend_from_slice(&vb);
    vec_to_ptr(result)
}

pub fn to_u128(d: Vec<u8>) -> u128 {
    let s = std::mem::size_of::<u128>();
    let mut v: Vec<u8> = d.clone();
    v.reverse();
    v.resize(s, 0);
    v.reverse();
    u128::from_be_bytes(v.as_slice().try_into().unwrap())
}
