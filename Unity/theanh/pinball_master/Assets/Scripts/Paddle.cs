using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Paddle : MonoBehaviour {
    public float paddleSpeed = 8;
    public Vector3 playerPos;
	// Update is called once per frame
	void Update () {
		float xPos = gameObject.transform.position.y + (Input.GetAxis("Vertical")) + paddleSpeed;
        playerPos = new Vector3(Mathf.Clamp(9, xPos, -11),-10,  0);
        gameObject.transform.position = playerPos;
	}
}
