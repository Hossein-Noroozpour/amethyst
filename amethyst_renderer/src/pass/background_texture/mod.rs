pub use self::interleaved::DrawBackgroundTexture;

mod interleaved;

use crate::pass::util::TextureType;

static VERT_SRC: &[u8] = include_bytes!("../shaders/vertex/background_texture.glsl");
static FRAG_SRC: &[u8] = include_bytes!("../shaders/fragment/background_texture.glsl");

static TEXTURES: [TextureType; 1] = [TextureType::Albedo];
