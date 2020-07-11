using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ArrowController : MonoBehaviour
{
    public Transform ball;
    public Transform cam;

    Transform myTransform;

    // Start is called before the first frame update
    void Start()
    {
        myTransform = transform;
    }

    // Update is called once per frame
    void Update()
    {
        //print(HelperFunctions.Test(Vector3.zero));
        myTransform.forward = cam.forward;
    }
}
