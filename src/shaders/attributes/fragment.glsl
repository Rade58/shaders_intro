precision mediump float;

varying float vRandom;


void main() {

  // I played a little 
  // vec3 foo = vRandom * vec3(0.1, 0.5, 0.1);

  // gl_FragColor = vec4(foo, 1.0);

  // but author of the workshop did this
  // and what he accomplished looks nice
  gl_FragColor = vec4(vRandom, 0.4, 0.4, 1.0);

  // so we now have diferent color set for every vertex
  // but how did we get the effect of interpolation

  // well you can ***consider vertex as a source of color*** you set
  // which means if we have two neghboring vertices,

  // ***THE COLOR INSIDE A FIELD THESE NEIGBORING VERTICES 
  // ARE MAKING BETWEEN THEM ENDS UP -INTERPOLATED- BETWEEN
  // MENTIONED SOURCES OF COLOR***

  // ***also if it's not clear to you yet, it is important 
  //                  for you to notice***
  // BETWEEN CLOSEST VERTICES THE THING THAT IS FORMED IS **TRIANGLE**
  // you can see this by looking at wireframe
  // which means that:
  //                   COLOR IS INTERPOLATED BETWEEN THREE VERTICES
  //                   OR TO SAY IN MY WORDS, BETWEEN THREE
  //                   SOURCES OF COLOR



}