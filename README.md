# Shaders - Intro project

## Vertex shader will be used **to position each vertex** of the geometry

- Vertex shader(a special program) we create, as an instruction will be sent to GPU
  Most simple thing that can be drown is a triangle
- We send mentioned vertex shader together with data like:

  - vertices coordinates
  - mesh transformations
  - cammera informations
  - etc.

  and GPU will follow instruction (vertex shader program) and position the vertices

IMORTANT: `Vertex Shader program will be run for each of the vertices`

### Data availble in Vertex Shader: Uniforms and Attributes

- Attribute: a data that differs for each of the the vertex, like position of of the vertex
- Uniform: a data that is same for every vertex, **for example, a data like the position of the mesh that is being formed by the vertices**, **color**, **camera position** because we don't change camera positon for every vertex, it is positioned same for every vertex

So when vertex shader program runs agains one vertex, it will have, for example position attribute specific only for that vertex

### After Vertex Shader programs execute and place every vertex, Fragment shader can be executed after all of that

Once the vertices are placed by the vertex shader, the GPU knoes what pixels of the geometry are visible and can proceed to the fragment shader

### Same fragment shader program will be used for every visible fragment of the geometry

Order is like this

- We create fragment shader
- We send shader to the GPU
  with data: like the color
- GPU follows the instructions and colors the fragments

### Data available in Fragment Shader: Varying and Uniforms

Same Uniforms available to Vertex shader are available to Fragment shader too

There is no attributes, they are only passed to Vertex Shader but not the Fragment shader

**But Varyings are avaible for fragment shader, and they are passed from Vertex Shader after its execution**

What will be varying in case of single Fragment Shader execution.
Well, as a varying, that can be interpolated color (**a mix between colors**) value of the single fragment that is somwhere "on the surface" that is formed between all of these vertices positioned earlier by the Vertex shader executions

![graph](/notes_images/Screenshot%20from%202024-10-30%2020-00-39.png)

# ShaderMaterial and RawShaderMaterial

First will have some code added to it automatically, second will have nothing, and we are using second one.

# `vite-plugin-glsl` or `vite-plugin-glslify`

Second one has advantage of using import syntax in glsl

Author of the workshop uses first plugin, but I like using second one

vite config for first one (I manged to make it work only by using dynamic import with async function):

```js
import { defineConfig } from "vite";

export default defineConfig(async () => {
  const glsl = (await import("vite-plugin-glsl")).default;

  return {
    base: "./",
    root: "src/",
    publicDir: "../static/",
    build: {
      outDir: "../dist",
      emptyOutDir: true,
      sourcemap: true,
    },
    server: {
      host: true,
      open: !(
        "SANDBOX_URL" in process.env || "CODESANDBOX_HOST" in process.env
      ),
    },
    plugins: [
      // glslify(),
      glsl(),
    ],
  };
});
```

vite config for second one, which I'll use. And as you can se we don't need to use dynamic import and async function

```js
import glslify from "vite-plugin-glslify";

/** @type {import('vite').UserConfig} */
export default {
  base: "./",
  root: "src/",
  publicDir: "../static/",
  build: {
    outDir: "../dist",
    emptyOutDir: true,
    sourcemap: true,
  },
  server: {
    host: true,
    open: !("SANDBOX_URL" in process.env || "CODESANDBOX_HOST" in process.env),
  },
  plugins: [glslify()],
};
```

# Documentation for glsl isn't that begginer friendly

- [Kronsos Group Registry](https://registry.khronos.org/): OpenGL docs but very close to the WebGL
- [Book of Shaders glossary](https://thebookofshaders.com/glossary/): A great course about fragment shaders
- [Shaderific](https://shaderific.com/glsl.html): docs on an iOS application to the shaders
