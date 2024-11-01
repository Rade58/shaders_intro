precision mediump float;

int a = 2;
float b = 0.2;

float c = float(a) * b;

bool truty = true;

vec2 d = vec2(b,c * 0.9) * 1.0;

void main() {
  gl_FragColor = vec4(1.0, d, 1.0);
}