uniform mat4 projectionMatrix;
//
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;
//
// uniform we created
// it is vec2
uniform vec2 uFrequency;
// we used this 

attribute vec3 position;


attribute float aRandom;
// varying float vRandom;



void main(){
 
  vec4 modelPosition = modelMatrix * vec4(position, 1.0);


  // modelPosition.z += aRandom * 0.1;
  
  // now we will use uniform we created here to modify
  // frequiency in sin function
  // so if we look from a point of view of a one vertix
  // which we should since this shader program will be run for
  // each vertex separately
  // in here vertex will be deformed by   z
  // and as you can see we are incrementing
  // 
  // and we are doing 
  modelPosition.z += sin(modelPosition.x * uFrequency.x) * 0.1;
  modelPosition.z += sin(modelPosition.y * uFrequency.y) * 0.1;
  // 0.1 is amplitude (just telling you if you forgot, we are not changing it)



  vec4 viewPosition = viewMatrix * modelPosition;

  vec4 projectedPosition = projectionMatrix * viewPosition;


  gl_Position = projectedPosition;


  // 
  // vRandom = aRandom;

}