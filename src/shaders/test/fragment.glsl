precision mediump float;

// integer
int a = 2;
// float
float b = 0.2;
// booolean
bool truty = true;

// we made a conversion to float with float() function
// in order to do matematical operations
float c = float(a) * b;

// here we are doing matematical operation with vector
// which will in this case multiply items, which
// will create new vector with new items
vec2 d = vec2(b,c) * 1.0;


// this is vector4 and his properties are x,y,z,w
// and      r, g, b, a
vec4 foo = vec4(0.0, 0.9, 0.5, 1.0);

// this is how we extract vector2 from our vector4
vec2 bar = foo.wy; // doing this is also called swizzle
// as you can see swizzle order can be inverted, you don't need to
// go xy for example, you can go yx
vec2 lorem = foo.yx;


// here we extracted vec3 from vec4
vec3 baz = foo.rgb;
// we can change value of the property;


void main() {


  //  we can increment like this
  foo *= 0.5;

  // we can only do this inside   main  scope
  // I tried doing it outside the scope and I got error 
  foo.y = 0.2;

  // gl_FragColor = vec4(foo.x, foo.y, foo.z, foo.w);


  // this is how we can use vec4 parts, and vec2 parts for example,
  // to build another vec4
  gl_FragColor = vec4(bar.g, foo.xy, 1.0);

  // gl_FragColor = foo;

}