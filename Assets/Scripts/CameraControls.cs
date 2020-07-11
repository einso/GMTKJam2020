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
        myTransform.position += target.position - lastPosition;
    }
}
