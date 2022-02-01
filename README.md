# Flutter Fragment Shader Test

This reposistory was created to showcase shader support in Flutter. For more 
information about my findings see the [Medium post](https://wolfenrain.medium.com/flutter-shaders-an-initial-look-d9eb98d3fd7a).

## Compiling shaders

You can compile shaders using `glslc`. You can download it for your platform [here](https://github.com/google/shaderc/blob/main/downloads.md). 

```sh
glslc --target-env=opengl -fshader-stage=fragment -o assets/shaders/simple.sprv shaders/simple.glsl 
```

## Useful links
- https://github.com/flutter/flutter/issues/58361
- https://docs.google.com/document/d/1z9K5LernwQ0LVAzfbAMW6ITx63QRdRsoax1NLYEfm4Y
- https://thebookofshaders.com/
