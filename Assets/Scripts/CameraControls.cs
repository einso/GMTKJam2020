using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

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

        Scene[] scenes = SceneManager.GetAllScenes();
        print("scenes " + scenes.Length);

        if (scenes.Length <= 1)
        {
            SceneManager.LoadScene(1, LoadSceneMode.Additive);
        }
    }

    // Update is called once per frame
    void Update()
    {
        //Mouse lock, muss escapebar sein TODO
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;

        //follow ball pos
        myTransform.position += target.position - lastPosition;
        lastPosition = target.position;

        //rotate around ball
        myTransform.RotateAround(target.position, Vector3.up, Input.GetAxis("Mouse X"));
        myTransform.RotateAround(target.position, myTransform.right, -Input.GetAxis("Mouse Y"));


        //reset level
        if (Input.GetKeyDown(KeyCode.R))
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
        }

        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            SceneManager.LoadScene(0);
        }

        if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            SceneManager.LoadScene(1);
        }
    }
}
