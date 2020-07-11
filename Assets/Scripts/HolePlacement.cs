using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HolePlacement : MonoBehaviour
{

    public float heightToCastFrom = 100;

    Transform myTransform;

    // Start is called before the first frame update
    void Start()
    {
        myTransform = transform;
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
        }
    }
}
