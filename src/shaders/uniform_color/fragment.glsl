precision mediump float;

// uniform float uFrequency;
// varying float vRandom;

uniform vec3 uColor;


void main() {

  // vec3 foo = vRandom * vec3(0.1, 0.5, 0.1);
  // gl_FragColor = vec4(foo, 1.0);

  // gl_FragColor = vec4(vRandom, 0.4, 0.4, 1.0);

  // gl_FragColor = vec4(0.6, 0.5, 0.3, 1.0);
  
  gl_FragColor = vec4(uColor, 1.0);

}