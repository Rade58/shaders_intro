precision mediump float;


int a = 2;
float b = 0.2;

// we made a conversion to float in order to do matematical operations
float c = float(a) * b;

bool truty = true;

vec2 d = vec2(b,c * 0.9) * 1.0;


// this is vector4 and his properties are x,y,z,w
vec4 foo = vec4(0.0, 0.9, 0.5, 1.0);

// this is how we extract vector2 from our vector4
vec2 bar = foo.xw;


void main() {
  
  // gl_FragColor = vec4(foo.x, foo.y, foo.z, foo.w);

  // this is how we can use vec2 for example, to build vec4
  gl_FragColor = vec4(1.0, bar, 1.0);
}