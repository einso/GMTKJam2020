using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ArrowController : MonoBehaviour
{
    public Transform ball;
    public Transform cam;
    public float angle;

    Transform myTransform;

    public bool autoRotate;
    public float speed = 1;

    // Start is called before the first frame update
    void Start()
    {
        myTransform = transform;
    }

    void Update()
    {
        myTransform.Rotate(Vector3.up, Input.GetAxis("Horizontal") * speed, Space.World);
    }

    // Update is called once per frame
    void LateUpdate()
    {
        if (autoRotate)
        {
            //flatten vector
            myTransform.forward = HelperFunctions.FlattenY(cam.forward, true);

            //angle rotate
            myTransform.Rotate(myTransform.right, angle, Space.World);
        }

        //follow ball
        myTransform.position = ball.position;
    }
}
