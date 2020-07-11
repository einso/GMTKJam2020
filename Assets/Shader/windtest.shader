// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5330188,fgcg:0.8829606,fgcb:1,fgca:1,fgde:0.003,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:8322,x:32990,y:32449,varname:node_8322,prsc:2|diff-6592-OUT,normal-7257-RGB,voffset-4231-OUT;n:type:ShaderForge.SFN_Time,id:9362,x:30760,y:32466,varname:node_9362,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:7676,x:30760,y:32617,ptovrint:False,ptlb:trunkwindpow,ptin:_trunkwindpow,varname:node_7676,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:1478,x:30953,y:32501,varname:node_1478,prsc:2|A-9362-T,B-7676-OUT;n:type:ShaderForge.SFN_Sin,id:1477,x:31173,y:32422,varname:node_1477,prsc:2|IN-1478-OUT;n:type:ShaderForge.SFN_Cos,id:1164,x:31173,y:32583,varname:node_1164,prsc:2|IN-1478-OUT;n:type:ShaderForge.SFN_Multiply,id:6438,x:31567,y:32332,varname:node_6438,prsc:2|A-1477-OUT,B-6034-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6034,x:31314,y:32536,ptovrint:False,ptlb:windamp,ptin:_windamp,varname:node_6034,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:6562,x:31173,y:32717,varname:node_6562,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:2572,x:31484,y:32638,varname:node_2572,prsc:2|A-6034-OUT,B-6562-OUT;n:type:ShaderForge.SFN_Multiply,id:1446,x:31704,y:32601,varname:node_1446,prsc:2|A-1164-OUT,B-2572-OUT;n:type:ShaderForge.SFN_Multiply,id:8065,x:31896,y:32561,varname:node_8065,prsc:2|A-1446-OUT,B-6396-A;n:type:ShaderForge.SFN_VertexColor,id:6396,x:31578,y:32459,varname:node_6396,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6926,x:31834,y:32337,varname:node_6926,prsc:2|A-6438-OUT,B-6396-A;n:type:ShaderForge.SFN_Vector1,id:2354,x:31834,y:32463,varname:node_2354,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:4485,x:32049,y:32390,varname:node_4485,prsc:2|A-6926-OUT,B-2354-OUT,C-8065-OUT;n:type:ShaderForge.SFN_Add,id:4231,x:32289,y:32402,varname:node_4231,prsc:2|A-4485-OUT,B-7058-OUT;n:type:ShaderForge.SFN_Multiply,id:7058,x:32259,y:32667,varname:node_7058,prsc:2|A-3445-OUT,B-5629-RGB,C-4710-OUT,D-4433-OUT;n:type:ShaderForge.SFN_Tex2d,id:7257,x:32685,y:32448,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:node_7257,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_VertexColor,id:5629,x:30651,y:32966,varname:node_5629,prsc:2;n:type:ShaderForge.SFN_Pi,id:7,x:30698,y:33112,varname:node_7,prsc:2;n:type:ShaderForge.SFN_Time,id:700,x:30665,y:33242,varname:node_700,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:6712,x:30678,y:33394,ptovrint:False,ptlb:leafwindpow,ptin:_leafwindpow,varname:_windpow_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:5150,x:30897,y:33293,varname:node_5150,prsc:2|A-700-T,B-6712-OUT;n:type:ShaderForge.SFN_Multiply,id:6521,x:30897,y:33057,varname:node_6521,prsc:2|A-5629-R,B-7-OUT;n:type:ShaderForge.SFN_Add,id:3996,x:31111,y:33145,varname:node_3996,prsc:2|A-6521-OUT,B-5150-OUT;n:type:ShaderForge.SFN_Multiply,id:1506,x:31325,y:33258,varname:node_1506,prsc:2|A-3996-OUT,B-263-OUT;n:type:ShaderForge.SFN_Vector1,id:263,x:31125,y:33278,varname:node_263,prsc:2,v1:3;n:type:ShaderForge.SFN_Sin,id:2870,x:31515,y:33196,varname:node_2870,prsc:2|IN-1506-OUT;n:type:ShaderForge.SFN_Vector1,id:886,x:31515,y:33327,varname:node_886,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Vector1,id:8838,x:31515,y:33420,varname:node_8838,prsc:2,v1:5;n:type:ShaderForge.SFN_Multiply,id:323,x:31771,y:33196,varname:node_323,prsc:2|A-2870-OUT,B-886-OUT;n:type:ShaderForge.SFN_Multiply,id:6825,x:31771,y:33391,varname:node_6825,prsc:2|A-3996-OUT,B-8838-OUT;n:type:ShaderForge.SFN_Sin,id:6845,x:31771,y:33065,varname:node_6845,prsc:2|IN-3996-OUT;n:type:ShaderForge.SFN_Add,id:2213,x:31989,y:33140,varname:node_2213,prsc:2|A-6845-OUT,B-323-OUT;n:type:ShaderForge.SFN_Cos,id:2645,x:31989,y:33321,varname:node_2645,prsc:2|IN-6825-OUT;n:type:ShaderForge.SFN_Subtract,id:4710,x:32167,y:33166,varname:node_4710,prsc:2|A-2213-OUT,B-2645-OUT;n:type:ShaderForge.SFN_NormalVector,id:885,x:31481,y:32919,prsc:2,pt:True;n:type:ShaderForge.SFN_Vector4Property,id:4374,x:31632,y:32881,ptovrint:False,ptlb:LeafWindDir,ptin:_LeafWindDir,varname:node_4374,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1,v2:0.5,v3:0.5,v4:0;n:type:ShaderForge.SFN_Add,id:1677,x:31855,y:32881,varname:node_1677,prsc:2|A-4374-XYZ,B-885-OUT;n:type:ShaderForge.SFN_Normalize,id:3445,x:32033,y:32881,varname:node_3445,prsc:2|IN-1677-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4433,x:31957,y:32771,ptovrint:False,ptlb:LeafWinAmpli,ptin:_LeafWinAmpli,varname:node_4433,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.03;n:type:ShaderForge.SFN_Tex2d,id:6749,x:32522,y:32906,ptovrint:False,ptlb:Base Color,ptin:_BaseColor,varname:node_6749,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:4216,x:32522,y:33094,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_4216,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:6592,x:32718,y:33025,varname:node_6592,prsc:2|A-6749-RGB,B-4216-RGB;proporder:7676-6034-7257-6712-4374-4433-6749-4216;pass:END;sub:END;*/

Shader "Custom/windtest" {
    Properties {
        _trunkwindpow ("trunkwindpow", Float ) = 0.5
        _windamp ("windamp", Float ) = 1
        _NormalMap ("NormalMap", 2D) = "white" {}
        _leafwindpow ("leafwindpow", Float ) = 0.5
        _LeafWindDir ("LeafWindDir", Vector) = (1,0.5,0.5,0)
        _LeafWinAmpli ("LeafWinAmpli", Float ) = 0.03
        _BaseColor ("Base Color", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _BaseColor; uniform float4 _BaseColor_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _trunkwindpow)
                UNITY_DEFINE_INSTANCED_PROP( float, _windamp)
                UNITY_DEFINE_INSTANCED_PROP( float, _leafwindpow)
                UNITY_DEFINE_INSTANCED_PROP( float4, _LeafWindDir)
                UNITY_DEFINE_INSTANCED_PROP( float, _LeafWinAmpli)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_9362 = _Time;
                float _trunkwindpow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _trunkwindpow );
                float node_1478 = (node_9362.g*_trunkwindpow_var);
                float _windamp_var = UNITY_ACCESS_INSTANCED_PROP( Props, _windamp );
                float4 _LeafWindDir_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LeafWindDir );
                float4 node_700 = _Time;
                float _leafwindpow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _leafwindpow );
                float node_3996 = ((o.vertexColor.r*3.141592654)+(node_700.g*_leafwindpow_var));
                float _LeafWinAmpli_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LeafWinAmpli );
                v.vertex.xyz += (float3(((sin(node_1478)*_windamp_var)*o.vertexColor.a),0.0,((cos(node_1478)*(_windamp_var*0.5))*o.vertexColor.a))+(normalize((_LeafWindDir_var.rgb+v.normal))*o.vertexColor.rgb*((sin(node_3996)+(sin((node_3996*3.0))*0.2))-cos((node_3996*5.0)))*_LeafWinAmpli_var));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _NormalMap_var = tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _BaseColor_var = tex2D(_BaseColor,TRANSFORM_TEX(i.uv0, _BaseColor));
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float3 diffuseColor = (_BaseColor_var.rgb*_Color_var.rgb);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _BaseColor; uniform float4 _BaseColor_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _trunkwindpow)
                UNITY_DEFINE_INSTANCED_PROP( float, _windamp)
                UNITY_DEFINE_INSTANCED_PROP( float, _leafwindpow)
                UNITY_DEFINE_INSTANCED_PROP( float4, _LeafWindDir)
                UNITY_DEFINE_INSTANCED_PROP( float, _LeafWinAmpli)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_9362 = _Time;
                float _trunkwindpow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _trunkwindpow );
                float node_1478 = (node_9362.g*_trunkwindpow_var);
                float _windamp_var = UNITY_ACCESS_INSTANCED_PROP( Props, _windamp );
                float4 _LeafWindDir_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LeafWindDir );
                float4 node_700 = _Time;
                float _leafwindpow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _leafwindpow );
                float node_3996 = ((o.vertexColor.r*3.141592654)+(node_700.g*_leafwindpow_var));
                float _LeafWinAmpli_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LeafWinAmpli );
                v.vertex.xyz += (float3(((sin(node_1478)*_windamp_var)*o.vertexColor.a),0.0,((cos(node_1478)*(_windamp_var*0.5))*o.vertexColor.a))+(normalize((_LeafWindDir_var.rgb+v.normal))*o.vertexColor.rgb*((sin(node_3996)+(sin((node_3996*3.0))*0.2))-cos((node_3996*5.0)))*_LeafWinAmpli_var));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _NormalMap_var = tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _BaseColor_var = tex2D(_BaseColor,TRANSFORM_TEX(i.uv0, _BaseColor));
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float3 diffuseColor = (_BaseColor_var.rgb*_Color_var.rgb);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
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
            Cull Back
            
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
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _trunkwindpow)
                UNITY_DEFINE_INSTANCED_PROP( float, _windamp)
                UNITY_DEFINE_INSTANCED_PROP( float, _leafwindpow)
                UNITY_DEFINE_INSTANCED_PROP( float4, _LeafWindDir)
                UNITY_DEFINE_INSTANCED_PROP( float, _LeafWinAmpli)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float3 normalDir : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_9362 = _Time;
                float _trunkwindpow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _trunkwindpow );
                float node_1478 = (node_9362.g*_trunkwindpow_var);
                float _windamp_var = UNITY_ACCESS_INSTANCED_PROP( Props, _windamp );
                float4 _LeafWindDir_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LeafWindDir );
                float4 node_700 = _Time;
                float _leafwindpow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _leafwindpow );
                float node_3996 = ((o.vertexColor.r*3.141592654)+(node_700.g*_leafwindpow_var));
                float _LeafWinAmpli_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LeafWinAmpli );
                v.vertex.xyz += (float3(((sin(node_1478)*_windamp_var)*o.vertexColor.a),0.0,((cos(node_1478)*(_windamp_var*0.5))*o.vertexColor.a))+(normalize((_LeafWindDir_var.rgb+v.normal))*o.vertexColor.rgb*((sin(node_3996)+(sin((node_3996*3.0))*0.2))-cos((node_3996*5.0)))*_LeafWinAmpli_var));
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
