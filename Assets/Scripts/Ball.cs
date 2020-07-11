using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ball : MonoBehaviour
{
    public float power = 100;
    public Transform arrow;
    public float reloadTimer = 1;
    public bool flying;

    Rigidbody body;

    // Start is called before the first frame update
    void Start()
    {
        body = GetComponent<Rigidbody>();
    }

    void FixedUpdate()
    {
        if (Input.GetKeyDown(KeyCode.Space) && reloadTimer < 0)
        {
            body.AddForce(arrow.forward * power);
            reloadTimer = 1;
        }
    }

    // Update is called once per frame
    void Update()
    {
        reloadTimer -= Time.deltaTime;
        print(body.velocity.magnitude + " " + Physics.OverlapSphere(body.position, 10).Length);
    }
}
