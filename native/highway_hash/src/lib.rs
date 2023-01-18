use highway::{HighwayHash, Key, PortableHash};

#[rustler::nif]
fn hash64(data: String) -> u64 {
  // NOTE: using a dummy key here just so we can validate against the unit test
  // https://github.com/nickbabcock/highway-rs/blob/master/tests/hash.rs#L4
  return PortableHash::new(Key([0,0,0,0])).hash64(data.as_bytes());
}

rustler::init!("Elixir.NifExample.HighwayHash", [hash64]);
