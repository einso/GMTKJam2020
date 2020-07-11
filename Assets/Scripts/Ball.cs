using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Ball : MonoBehaviour
{
    public float power = 100;
    public float minPower, maxPower;
    public float minUpVector, maxUpVector;
    public Transform arrow;
    public float reloadTimer = 1;
    public float reloadTimerFull = 2;
    public bool flying;
    public float maxVelocity = 4;
    public float checkerRadius = 10;

    Rigidbody body;
    public Scrollbar powerbar;

    // Start is called before the first frame update
    void Start()
    {
        body = GetComponent<Rigidbody>();
    }

    void FixedUpdate()
    {



    }

    private void Shot()
    {


        if (Input.GetKeyDown(KeyCode.Space))
        {


            if (state == ShotState.ReadyShot)
            {
                //Progressbar somewhere else

                //only use for transition

                //lock arrow movement

                state = ShotState.Hit;

            }

            if (state == ShotState.WaitForShot)
            {
                state = ShotState.ReadyShot;
                //print("ready");
            }

            if (state == ShotState.Hit)
            {
                body.isKinematic = false;
                power = Mathf.Lerp(minPower, maxPower, currentPower);
                body.AddForce(arrow.forward * power);
                reloadTimer = reloadTimerFull;
                flying = true;
                state = ShotState.WaitForShot;
            }


        }
    }

    public enum ShotState
    {
        WaitForShot,
        ReadyShot,
        Hit,
    }

    public ShotState state;

    void LockMovement()
    {
        body.velocity = Vector3.zero;
        body.isKinematic = true;

    }


    // Update is called once per frame
    void Update()
    {
        //reload timer ausnutzen für roll zeitraum
        if (!flying)
            reloadTimer -= Time.deltaTime;

        print(reloadTimer);

        /*
        if (body.velocity.magnitude < maxVelocity || Physics.OverlapSphere(body.position, checkerRadius).Length <= 1)
        {
            flying = true;
        }
        else
        {
            flying = false;
        }
        */

        if (body.velocity.magnitude > maxVelocity)
        {
            flying = true;
        }
        else
        {
            if (Physics.OverlapSphere(body.position, checkerRadius).Length <= 1)
            {
                flying = true;
            }
            else
            {
                flying = false;
            }
        }

        if (flying)
        {
            reloadTimer = reloadTimerFull;
        }

        if (reloadTimer < 0 && !flying)
        {
            LockMovement();
            Shot();
        }

        if (state == ShotState.ReadyShot)
        {
            powerbar.gameObject.SetActive(true);
            //update ui power bar
            currentPower = (Mathf.Sin(Time.timeSinceLevelLoad * powerSpeed) + 1) / 2;
            //powerbar.text = "Power " + currentPower;
            powerbar.value = currentPower;
        }
        else
        {
            powerbar.gameObject.SetActive(false);
        }

        //print(Time.timeSinceLevelLoad);

        //print(body.velocity.magnitude + " " + Physics.OverlapSphere(body.position, checkerRadius).Length + " " + flying);
    }

    public float currentPower;
    public float powerSpeed = .1f;
}
