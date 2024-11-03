// these are matrices
uniform mat4 projectionMatrix; // yes,   mat    means matrix here

// as we found out from previous lesson
// multiplication of these tow matrices
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;
// is this shorthand matrix
// uniform mat4 modelViewMatrix; // ==   viewMatrix * modelMatrix  
// but we won't be using the shorthand

// We will use mentioned two matrices to separate things
// even more



attribute vec3 position;



void main(){

  // What we will do is creating 3 vec4 instead
  // since we know from previous lesson that
  // we can multiply mat4 matrice with a vec4

  // as we learn from previous lesson
  // by doing that we are getting coordinate transformations (in my word as I remebered)

  // so by doing these I assume we can get mesh related coordinates
  vec4 modelPosition = modelMatrix * vec4(position, 1.0);

  // these are camera coordinates
  // again we are multiplying matrix 4 with vector 4
  vec4 viewPosition = viewMatrix * modelPosition;

  // and these are I assume clip space coordinates we talked about in
  // previous lesson
  vec4 projectionPosition = projectionMatrix * viewPosition;

  // now instead of this
  // gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);
  // we can just write this
  gl_Position = projectionPosition;


}