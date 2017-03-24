using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ball : MonoBehaviour {
    public float ballVelocity = 10000;

    Rigidbody rb;
    bool isPlay;
    int randInt;

	// Use this for initialization
	void Awake () {

        rb = gameObject.GetComponent<Rigidbody>();
        randInt = Random.Range(1, 2);
		
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetMouseButton(0) == true && isPlay == false)
        {
            transform.parent = null;
            isPlay = true;
            rb.isKinematic = false;
            if (randInt == 1)
            {
                rb.AddForce(new Vector3(ballVelocity, ballVelocity, 0));
            }

            if (randInt == 2)
            {
                rb.AddForce(new Vector3(-ballVelocity, -ballVelocity, 0));
            }
        }
	}
}
