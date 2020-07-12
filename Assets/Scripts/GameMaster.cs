using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameMaster : MonoBehaviour
{
    public bool flagParams = true;
    public float minFlagPosition, maxFlagPosition;
    public bool terrainParams = true;
    public float terrainSpeed, terrainFrequency, terrainAmplitude, terrainPersistance, terrainOctaves;
    public bool ballParams = true;
    public float minBallPower, maxBallPower, minAngle, maxAngle, reloadHitTimer, maxIdleVelocity, powerBarSpeed;

    HolePlacement hole;
    TerrainControls terrain;
    Ball ball;
    // Start is called before the first frame update
    void Start()
    {
        hole = GameObject.FindObjectOfType<HolePlacement>();
        terrain = GameObject.FindObjectOfType<TerrainControls>();
        ball = GameObject.FindObjectOfType<Ball>();

        if (flagParams)
        {
            hole.min = minFlagPosition;
            hole.max = maxFlagPosition;
        }

        if (terrainParams)
        {
            terrain.amp = terrainAmplitude;
            terrain.freq = terrainFrequency;
            terrain.oct = (int)terrainOctaves;
            terrain.pers = terrainPersistance;
            terrain.speed = terrainSpeed;
        }
    }

    // Update is called once per frame
    void Update()
    {

    }
}
