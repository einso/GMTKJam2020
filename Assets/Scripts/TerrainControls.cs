using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TerrainControls : MonoBehaviour
{
    Terrain terr; // terrain to modify
    int hmWidth; // heightmap width
    int hmHeight; // heightmap height

    public int posXInTerrain; // position of the game object in terrain width (x axis)
    public int posYInTerrain; // position of the game object in terrain height (z axis)

    public int size = 50; // the diameter of terrain portion that will raise under the game object
    float desiredHeight = 0; // the height we want that portion of terrain to be
    public float heightMultiplier = 10;
    public float noiseTiling = 10;
    public float speed = .5f;
    public float refreshRate = .1f;
    public bool invokeApproach;
    public float gameTime;
    public bool terrainPlay;

    // Start is called before the first frame update
    void Start()
    {
        terr = Terrain.activeTerrain;
        hmWidth = terr.terrainData.heightmapResolution;
        hmHeight = terr.terrainData.heightmapResolution;

        if (invokeApproach)
            InvokeRepeating("TerrainUpdate", .1f, refreshRate);

        
    }

    void Update(){

        if (!invokeApproach){
            TerrainUpdate();
        }

        if (terrainPlay){
            gameTime += Time.deltaTime;
        }
    }

    // Update is called once per frame
    void TerrainUpdate()
    {
        // get the normalized position of this game object relative to the terrain
        Vector3 tempCoord = (new Vector3(100, .5f, 100) - terr.gameObject.transform.position);
        Vector3 coord;
        coord.x = tempCoord.x / terr.terrainData.size.x;
        coord.y = tempCoord.y / terr.terrainData.size.y;
        coord.z = tempCoord.z / terr.terrainData.size.z;

        // get the position of the terrain heightmap where this game object is
        posXInTerrain = (int)(coord.x * hmWidth);
        posYInTerrain = (int)(coord.z * hmHeight);

        // we set an offset so that all the raising terrain is under this game object
        int offset = size / 2;

        // get the heights of the terrain under this game object
        //print("x " + posXInTerrain + " y " + posYInTerrain + " offset " + offset + " size " + size);
        float[,] heights = terr.terrainData.GetHeights(posXInTerrain - offset, posYInTerrain - offset, size, size);
        //float[,] heights = new float[10,10];

        // we set each sample of the terrain in the size to the desired height
        for (int i = 0; i < size; i++)
        {
            for (int j = 0; j < size; j++)
            {
                //desiredHeight = Mathf.PerlinNoise(((float)i / (float)size) * noiseTiling + Time.time * speed, ((float)j / (float)size) * noiseTiling + Time.time * speed) * heightMultiplier;
                float x = (float)i / (float)size;
                //x *= noiseTiling;
                //x += Time.time * speed;

                float y = (float)j / (float)size;
                //y *= noiseTiling;
                //x += Time.time * speed;

                float z = gameTime * speed;
                //x += Time.time * speed;
                desiredHeight = Noise3D(x, y, z, freq, amp, pers, oct, seed);

                heights[i, j] = desiredHeight;

                //print(desiredHeight);

            }
        }

        // go raising the terrain slowly
        //desiredHeight += Time.deltaTime;
        //print(desiredHeight);

        // set the new height
        terr.terrainData.SetHeights(posXInTerrain - offset, posYInTerrain - offset, heights);
    }

    public float freq, amp, pers;
    public int oct, seed;


    public static float Noise3D(float x, float y, float z, float frequency, float amplitude, float persistence, int octave, int seed)
    {
        float noise = 0.0f;

        for (int i = 0; i < octave; ++i)
        {
            // Get all permutations of noise for each individual axis
            float noiseXY = Mathf.PerlinNoise(x * frequency + seed, y * frequency + seed) * amplitude;
            float noiseXZ = Mathf.PerlinNoise(x * frequency + seed, z * frequency + seed) * amplitude;
            float noiseYZ = Mathf.PerlinNoise(y * frequency + seed, z * frequency + seed) * amplitude;

            // Reverse of the permutations of noise for each individual axis
            float noiseYX = Mathf.PerlinNoise(y * frequency + seed, x * frequency + seed) * amplitude;
            float noiseZX = Mathf.PerlinNoise(z * frequency + seed, x * frequency + seed) * amplitude;
            float noiseZY = Mathf.PerlinNoise(z * frequency + seed, y * frequency + seed) * amplitude;

            // Use the average of the noise functions
            noise += (noiseXY + noiseXZ + noiseYZ + noiseYX + noiseZX + noiseZY) / 6.0f;

            amplitude *= persistence;
            frequency *= 2.0f;
        }

        // Use the average of all octaves
        return noise / octave;
    }
}
