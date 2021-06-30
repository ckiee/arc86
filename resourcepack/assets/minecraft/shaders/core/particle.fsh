#version 150

#moj_import <fog.glsl>

uniform sampler2D Sampler0;
uniform sampler2D Sampler2;
uniform sampler2D DiffuseSampler;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

in float vertexDistance;
in vec2 texCoord0;
in vec4 vertexColor;
in vec3 position;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;
    vec4 bgpxColor = texture(Sampler2, texCoord0) * vertexColor * ColorModulator;
    vec3 noise_position = floor(position * 1) / 1;
	if (bgpxColor.g > 0.25 && position.x > -105) {
		fragColor = vec4(noise_position.x, 0.1, 0.1, 1.1);
	} else {
		if (color.a < 0.1) {
			discard;
		}
		fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
	}
}
