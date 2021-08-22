precision mediump float;

// varying float vRandom; 

uniform vec3 uColor;
// sampler2D is the type of textures
uniform sampler2D uTexture;
varying vec2 vUv;
varying float vElevation;

void main()
{
    vec4 textureColor = texture2D(uTexture,vUv);
    textureColor.rgb *= vElevation * 2.0 + 0.5;
    gl_FragColor =textureColor;
}