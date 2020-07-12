using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Ruheleiste : MonoBehaviour
{
    Ball ball;
    RectTransform rect;
    float startScale;
    // Start is called before the first frame update
    void Start()
    {
        ball = GameObject.FindObjectOfType<Ball>();
        rect = GetComponent<RectTransform>();
        startScale = rect.localScale.x;
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 scale = rect.localScale;

        scale.x = Mathf.Lerp(0.0f, startScale, (ball.reloadTimer / ball.reloadTimerFull));

        rect.localScale = scale;
    }
}
