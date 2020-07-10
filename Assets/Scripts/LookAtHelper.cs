using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LookAtHelper : MonoBehaviour
{
    public Transform target;
    // Start is called before the first frame update
    void Start()
    {
        trans = transform;
    }
    Transform trans;

    // Update is called once per frame
    void Update()
    {
        trans.LookAt(target.position, Vector3.up);
    }
}
