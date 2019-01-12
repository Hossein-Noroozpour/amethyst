// TODO: Needs documentation.

#version 150 core

layout (std140) uniform VertexArgs {
    uniform vec4 color_factor;
    uniform vec2 tiling;
    uniform vec2 offset;
};

out VertexData {
    vec2 tex_coord;
    vec4 color_factor;
} vertex;

void main() {
    vertex.color_factor = color_factor;
    ivec2 uv = ivec2(gl_VertexIndex & 2, (gl_VertexIndex << 1) & 2);
	vertex.tex_coord = (vec2(uv) * tiling) + offset;
    uv <<= 1;
    uv -= 1;
    gl_Position = vec4(uv, 0.999, 1.0);
}
