using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ArrowController : MonoBehaviour
{
    public Transform ball;
    public Transform cam;
    public float angle;

    Transform myTransform;

    // Start is called before the first frame update
    void Start()
    {
        myTransform = transform;
    }

    // Update is called once per frame
    void LateUpdate()
    {
        //flatten vector
        myTransform.forward = HelperFunctions.FlattenY(cam.forward, true);

        //angle rotate
        myTransform.Rotate(myTransform.right, angle, Space.World);

        //follow ball
        myTransform.position = ball.position;
    }
}
