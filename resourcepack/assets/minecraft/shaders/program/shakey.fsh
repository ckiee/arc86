#version 110
#extension GL_EXT_gpu_shader4 : enable

uniform sampler2D DiffuseSampler;
uniform float Time;

varying vec2 texCoord;
varying vec2 oneTexel;

void main(){
//  float distFromCenter = distance(texCoord, vec2(0.5, 0.5));

//  if (distFromCenter < 0.38) {
//      // Inside circle
//      vec2 zoomedCoord = ((texCoord - vec2(0.5, 0.5)) * 0.2) + vec2(0.5, 0.5);
//      gl_FragColor = texture2D(DiffuseSampler, zoomedCoord);
//  } else if (distFromCenter >= 0.38 && distFromCenter < 0.4) {
//      // Orange border
//  } else {
//      // Outside, normal pixels
//      gl_FragColor = texture2D(DiffuseSampler, texCoord);
//  }
	// int alternate = (int(Time * 4.0) % 2 == 0) ? -1 : 1;
	gl_FragColor = texture2D(DiffuseSampler, texCoord + vec2((sin(Time)-0.5), 0.0));
}
