using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ButtonControl : MonoBehaviour {

    public ButtonControl.ButtonType bt;
    public float speed = 5;

    public ButtonControl()
    {}

    private void OnMouseDown()
    {
        transform.localScale = new Vector3(0.48f, 0.48f);
    }

    private void OnMouseUp()
    {
        transform.localScale = new Vector3(0.5f, 0.5f);

        if (bt == ButtonControl.ButtonType.btnPlay)
        {
            Application.LoadLevel("PlayGame");
        }

        if (bt == ButtonControl.ButtonType.btRight)
        {
            transform.Translate(Vector3.right * speed * Time.deltaTime);
        }

        if (bt == ButtonControl.ButtonType.btLeft)
        {
            transform.Translate(Vector3.left * speed * Time.deltaTime);
        }
    }

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

        if (bt == ButtonControl.ButtonType.btRight)
        {
            transform.Translate(Vector3.right * speed * Time.deltaTime);

        }

    }

    public enum ButtonType
    {
        btnPlay,
        btRight,
        btLeft
    }
}
