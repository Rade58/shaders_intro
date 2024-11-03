uniform mat4 projectionMatrix;

//
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;
//
// uniform mat4 modelViewMatrix; // ==   viewMatrix * modelMatrix  




attribute vec3 position;



void main(){

 
  // we created next 3 vector 4 in previous lesson


  vec4 modelPosition = modelMatrix * vec4(position, 1.0);

  // tweaking coordinates of modelPosition I assume would
  // change position of the mesh
  modelPosition.y += 0.3;   // yes on the screen our plane moved on y axis by value we incremented
  // this will move mesh in z position towards us (toward camera to be precise)
  modelPosition.z += 0.5;

  // based on what we understand in this lesson about modelPosition
  // let's move coordinates in next lesson by using trigonometry
  // to get something interesting


  vec4 viewPosition = viewMatrix * modelPosition;
  vec4 projectedPosition = projectionMatrix * viewPosition;



  gl_Position = projectedPosition;

}