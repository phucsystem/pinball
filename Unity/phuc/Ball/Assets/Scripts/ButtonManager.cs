using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ButtonManager : MonoBehaviour
{

	private Paddle paddle;

	void Start ()
	{
		paddle = FindObjectOfType<Paddle> ();
	}

	void Update(){
		if (Input.GetKeyDown (KeyCode.LeftArrow)) {
			movePaddle (-1);
		}

		if (Input.GetKeyDown (KeyCode.RightArrow)) {
			movePaddle (+1);
		}
	}

	public void clickLeft ()
	{
		movePaddle (-1);

	}

	public void clickRight ()
	{
		movePaddle (1);
	}

	private void movePaddle (int moveDistance)
	{			
		Vector3 paddlePos = paddle.transform.position;
		paddlePos.x += moveDistance;
		paddle.transform.position = paddlePos;
	}
}
