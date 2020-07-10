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

    public Transform target;

    // Start is called before the first frame update
    void Start()
    {
        terr = Terrain.activeTerrain;
        hmWidth = terr.terrainData.heightmapResolution;
        hmHeight = terr.terrainData.heightmapResolution;
    }

    // Update is called once per frame
    void Update()
    {
        // get the normalized position of this game object relative to the terrain
        Vector3 tempCoord = (target.position - terr.gameObject.transform.position);
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
        print("x " + posXInTerrain + " y " + posYInTerrain + " offset " + offset + " size " + size);
        float[,] heights = terr.terrainData.GetHeights(posXInTerrain - offset, posYInTerrain - offset, size, size);

        // we set each sample of the terrain in the size to the desired height
        for (int i = 0; i < size; i++)
        {
            for (int j = 0; j < size; j++)
            {
                desiredHeight = Mathf.PerlinNoise(i/size, j/size);
                heights[i, j] = desiredHeight;
                print(desiredHeight);
                
            }
        }

        // go raising the terrain slowly
        //desiredHeight += Time.deltaTime;

        // set the new height
        terr.terrainData.SetHeights(posXInTerrain - offset, posYInTerrain - offset, heights);
    }
}
