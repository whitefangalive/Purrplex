// fragment shader
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float grain_time;
uniform float grain_intensity;

float rand(vec2 co) {
 return fract(sin(dot(co.xy, vec2(12.93588361, 78.2333))) * 43758.54213);
}
void main()
{
 float grain = grain_intensity * rand( grain_time + v_vTexcoord);
    vec4 colour = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
 colour.rgb += grain;
 gl_FragColor = colour;
}
