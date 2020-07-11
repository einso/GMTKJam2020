using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraControls : MonoBehaviour
{
    public Transform target;

    Transform myTransform;
    Vector3 lastPosition;
    // Start is called before the first frame update
    void Start()
    {
        myTransform = transform;
        lastPosition = target.position;
    }

    // Update is called once per frame
    void Update()
    {
        //Mouse lock
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;

        //follow ball pos
        myTransform.position += target.position - lastPosition;
        lastPosition = target.position;

        //rotate around ball
        myTransform.RotateAround(target.position, Vector3.up, Input.GetAxis("Mouse X"));
    }
}
