// TODO: Needs documentation.

#version 150 core

uniform sampler2D albedo;

in VertexData {
    vec2 tex_coord;
    vec4 color_factor;
} vertex;

out vec4 color;

void main() {
    color = texture(albedo, vertex.color_factor) * vertex.color_factor;
}
