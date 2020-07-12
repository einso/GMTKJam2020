using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class CameraControls : MonoBehaviour
{
    public Transform target;

    public Transform myTransform;
    Transform realTransform;
    Vector3 lastPosition;
    // Start is called before the first frame update
    void Start()
    {
        //myTransform = transform;
        realTransform = transform;

        lastPosition = target.position;

        Scene[] scenes = SceneManager.GetAllScenes();
        print("scenes " + scenes.Length);

        if (scenes.Length <= 1)
        {
            SceneManager.LoadScene(1, LoadSceneMode.Additive);
            SceneManager.LoadScene(2, LoadSceneMode.Additive);
        }
    }

    // Update is called once per frame
    void Update()
    {
        //Mouse lock, muss escapebar sein TODO
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;


        FollowBall();
        realTransform.position = myTransform.position;
        realTransform.rotation = myTransform.rotation;

        //clipping
        RaycastHit hito;

        if (Physics.Raycast(target.position, myTransform.position - target.position, out hito, Vector3.Distance(myTransform.transform.position, target.position)))
        {
            realTransform.rotation = myTransform.rotation;
            realTransform.position = hito.point + realTransform.forward * .1f + hito.normal * .9f;
        }
        else
        {
            realTransform.position = myTransform.position;
            realTransform.rotation = myTransform.rotation;
        }


        //reset level
        if (Input.GetKeyDown(KeyCode.R))
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
        }

    }

    public void FollowBall()
    {
        //follow ball pos
        myTransform.position += target.position - lastPosition;
        lastPosition = target.position;

        //rotate around ball
        myTransform.RotateAround(target.position, Vector3.up, Input.GetAxis("Mouse X"));
        myTransform.RotateAround(target.position, myTransform.right, -Input.GetAxis("Mouse Y"));
    }
}
