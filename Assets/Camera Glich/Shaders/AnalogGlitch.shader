Shader "SimpleEffects/Glitch"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
    }

    CGINCLUDE
    #include "UnityCG.cginc"

    sampler2D _MainTex;
    float2 _MainTex_TexelSize;

    float2 _ScanLineFactor; 
    float2 _VerticalFactor;   
    float _HorizontalFactor;
    float2 _ColorFactor;
    float _RedX;
    float _RedY;
    float _GreenX;
    float _GreenY;
    float _BlueX;
    float _BlueY;

    float calcRandom(float x, float y)
    {
        return frac(sin(dot(float2(x, y), float2(12.9898, 78.233))) * 43758.5453);
    }

    half4 frag(v2f_img i) : SV_Target
    {
        float jitter = calcRandom(i.uv.y, _Time.x) * 2 - 1;
        jitter *= step(_ScanLineFactor.y, abs(jitter)) * _ScanLineFactor.x;
        float verticalOffset = lerp(i.uv.y, frac(i.uv.y + _VerticalFactor.y), _VerticalFactor.x);
        float horizontalOffset = (calcRandom(_Time.x, 2) - 0.5) * _HorizontalFactor;
        half4 src1 = tex2D(_MainTex, frac(float2(i.uv.x + jitter + horizontalOffset, verticalOffset)));
        return half4(src1.r, tex2D(_MainTex, frac(float2(i.uv.x + jitter + horizontalOffset + sin(verticalOffset + _ColorFactor.y) * _ColorFactor.x, verticalOffset))).g, src1.b, 1);
    }
    
    ENDCG

    SubShader
    {
        Pass
        {
            ZTest Always Cull Off ZWrite Off
            CGPROGRAM
            #pragma vertex vert_img
            #pragma fragment frag
            #pragma target 3.0
            ENDCG
        }
    }
}
