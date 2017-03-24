using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayLeftRight : MonoBehaviour {
    public float speed = 5;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

        if (Input.GetKey("d"))
        {
            transform.Translate(Vector3.right * speed * Time.deltaTime);

        } else if (Input.GetKey ("a"))
        {
            transform.Translate(Vector3.left * speed * Time.deltaTime);
        }
		
	}
}
