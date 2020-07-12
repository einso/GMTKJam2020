// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5330188,fgcg:0.8829606,fgcb:1,fgca:1,fgde:0.003,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7227,x:33252,y:32756,varname:node_7227,prsc:2|emission-2778-OUT,clip-6885-OUT,voffset-8414-OUT;n:type:ShaderForge.SFN_TexCoord,id:8151,x:31872,y:32570,varname:node_8151,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:5614,x:32020,y:32757,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_5614,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8151-UVOUT;n:type:ShaderForge.SFN_Color,id:4991,x:32220,y:32585,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_4991,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:2778,x:32431,y:32771,varname:node_2778,prsc:2|A-5614-RGB,B-4991-RGB;n:type:ShaderForge.SFN_ValueProperty,id:3403,x:32037,y:32996,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_3403,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:6885,x:32330,y:32970,varname:node_6885,prsc:2|A-5614-A,B-3403-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:7306,x:31225,y:33151,varname:node_7306,prsc:2;n:type:ShaderForge.SFN_Abs,id:8933,x:31457,y:33137,varname:node_8933,prsc:2|IN-7306-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:8068,x:31649,y:33137,varname:node_8068,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-8933-OUT;n:type:ShaderForge.SFN_Dot,id:5522,x:31868,y:33244,varname:node_5522,prsc:2,dt:4|A-3651-OUT,B-8068-R;n:type:ShaderForge.SFN_Normalize,id:3651,x:31602,y:33356,varname:node_3651,prsc:2|IN-7306-X;n:type:ShaderForge.SFN_Normalize,id:8144,x:31602,y:33469,varname:node_8144,prsc:2|IN-7306-Z;n:type:ShaderForge.SFN_Dot,id:6989,x:31868,y:33415,varname:node_6989,prsc:2,dt:4|A-8144-OUT,B-8068-G;n:type:ShaderForge.SFN_Append,id:4879,x:32081,y:33317,varname:node_4879,prsc:2|A-5522-OUT,B-6989-OUT;n:type:ShaderForge.SFN_TexCoord,id:4726,x:32298,y:33172,varname:node_4726,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:9192,x:32298,y:33317,varname:node_9192,prsc:2,spu:1,spv:0|UVIN-4879-OUT,DIST-3281-OUT;n:type:ShaderForge.SFN_Slider,id:5060,x:31673,y:33833,ptovrint:False,ptlb:WindSpeed,ptin:_WindSpeed,varname:node_5060,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Time,id:2732,x:31849,y:33651,varname:node_2732,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3281,x:32124,y:33646,varname:node_3281,prsc:2|A-2732-TTR,B-5060-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4713,x:32298,y:33493,ptovrint:False,ptlb:UV scale,ptin:_UVscale,varname:node_4713,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:4343,x:32507,y:33317,varname:node_4343,prsc:2|A-9192-UVOUT,B-4713-OUT,C-4726-UVOUT;n:type:ShaderForge.SFN_Append,id:4473,x:32664,y:33774,varname:node_4473,prsc:2|A-3651-OUT,B-5801-OUT,C-5801-OUT;n:type:ShaderForge.SFN_Tex2d,id:4617,x:32684,y:33317,ptovrint:False,ptlb:WindTex,ptin:_WindTex,varname:node_4617,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4343-OUT;n:type:ShaderForge.SFN_VertexColor,id:6483,x:32892,y:33499,varname:node_6483,prsc:2;n:type:ShaderForge.SFN_Slider,id:2319,x:32507,y:33553,ptovrint:False,ptlb:WindStrength,ptin:_WindStrength,varname:_WindSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:8414,x:33080,y:33329,varname:node_8414,prsc:2|A-4617-RGB,B-2319-OUT,C-6483-R,D-9258-XYZ;n:type:ShaderForge.SFN_Transform,id:9258,x:32866,y:33757,varname:node_9258,prsc:2,tffrom:0,tfto:1|IN-4473-OUT;n:type:ShaderForge.SFN_Vector1,id:5801,x:32463,y:33830,varname:node_5801,prsc:2,v1:0;proporder:5614-4991-3403-5060-4713-4617-2319;pass:END;sub:END;*/

Shader "Custom/Grasswind" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Opacity ("Opacity", Float ) = 0
        _WindSpeed ("WindSpeed", Range(0, 1)) = 0
        _UVscale ("UV scale", Float ) = 0
        _WindTex ("WindTex", 2D) = "white" {}
        _WindStrength ("WindStrength", Range(0, 1)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _WindTex; uniform float4 _WindTex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _Opacity)
                UNITY_DEFINE_INSTANCED_PROP( float, _WindSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _UVscale)
                UNITY_DEFINE_INSTANCED_PROP( float, _WindStrength)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                float4 node_2732 = _Time;
                float _WindSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WindSpeed );
                float node_3651 = normalize(mul(unity_ObjectToWorld, v.vertex).r);
                float2 node_8068 = abs(mul(unity_ObjectToWorld, v.vertex).rgb).rb;
                float _UVscale_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UVscale );
                float2 node_4343 = ((float2(0.5*dot(node_3651,node_8068.r)+0.5,0.5*dot(normalize(mul(unity_ObjectToWorld, v.vertex).b),node_8068.g)+0.5)+(node_2732.a*_WindSpeed_var)*float2(1,0))*_UVscale_var*o.uv0);
                float4 _WindTex_var = tex2Dlod(_WindTex,float4(TRANSFORM_TEX(node_4343, _WindTex),0.0,0));
                float _WindStrength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WindStrength );
                float node_5801 = 0.0;
                v.vertex.xyz += (_WindTex_var.rgb*_WindStrength_var*o.vertexColor.r*mul( unity_WorldToObject, float4(float3(node_3651,node_5801,node_5801),0) ).xyz.rgb);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float _Opacity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Opacity );
                clip((_MainTex_var.a*_Opacity_var) - 0.5);
////// Lighting:
////// Emissive:
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float3 emissive = (_MainTex_var.rgb*_Color_var.rgb);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _WindTex; uniform float4 _WindTex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _Opacity)
                UNITY_DEFINE_INSTANCED_PROP( float, _WindSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _UVscale)
                UNITY_DEFINE_INSTANCED_PROP( float, _WindStrength)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                float4 node_2732 = _Time;
                float _WindSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WindSpeed );
                float node_3651 = normalize(mul(unity_ObjectToWorld, v.vertex).r);
                float2 node_8068 = abs(mul(unity_ObjectToWorld, v.vertex).rgb).rb;
                float _UVscale_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UVscale );
                float2 node_4343 = ((float2(0.5*dot(node_3651,node_8068.r)+0.5,0.5*dot(normalize(mul(unity_ObjectToWorld, v.vertex).b),node_8068.g)+0.5)+(node_2732.a*_WindSpeed_var)*float2(1,0))*_UVscale_var*o.uv0);
                float4 _WindTex_var = tex2Dlod(_WindTex,float4(TRANSFORM_TEX(node_4343, _WindTex),0.0,0));
                float _WindStrength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _WindStrength );
                float node_5801 = 0.0;
                v.vertex.xyz += (_WindTex_var.rgb*_WindStrength_var*o.vertexColor.r*mul( unity_WorldToObject, float4(float3(node_3651,node_5801,node_5801),0) ).xyz.rgb);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float _Opacity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Opacity );
                clip((_MainTex_var.a*_Opacity_var) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
