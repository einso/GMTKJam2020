﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HolePlacement : MonoBehaviour
{

    public float heightToCastFrom = 100;

    Transform myTransform;
    public Transform goalpost;
    public float min, max;
    public GameObject vfxKonfetti;
    public float minScale, maxScale;
    Vector3 startScale;

    // Start is called before the first frame update
    void Start()
    {
        myTransform = transform;
        startScale = myTransform.localScale;
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            print("HIT " + Time.time);

            Instantiate(vfxKonfetti, myTransform.position, Quaternion.Euler(-90, 0, 0));

            RandomPosition();
        }
    }

    void RandomPosition()
    {
        float x = Random.Range(min, max);
        float z = Random.Range(min, max);
        myTransform.position = new Vector3(x, heightToCastFrom, z);

        //random hole scale
        myTransform.localScale = startScale * Random.Range(minScale, maxScale);
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 castPosition = new Vector3(myTransform.position.x, heightToCastFrom, myTransform.position.z);

        RaycastHit hito;
        if (Physics.Raycast(castPosition, Vector3.down, out hito))
        {
            myTransform.position = hito.point;
            myTransform.up = hito.normal;
            goalpost.position = hito.point;
        }

        //cheat code
        if (Input.GetKeyDown(KeyCode.N))
        {
            RandomPosition();
        }
    }
}
