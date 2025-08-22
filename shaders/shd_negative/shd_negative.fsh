//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    // Obtém a cor da textura
    vec4 textureColor = texture2D(gm_BaseTexture, v_vTexcoord);
    
    // Inverte a cor da textura
    vec4 invertedColor = vec4(1.0 - textureColor.rgb, textureColor.a);
    
    // Multiplica a cor invertida pela cor do vértice e define a cor final
    gl_FragColor = invertedColor * v_vColour;
}