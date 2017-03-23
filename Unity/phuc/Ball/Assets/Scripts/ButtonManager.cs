using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ButtonManager : MonoBehaviour
{

	private Paddle paddle;
	private StickBar stick_bar;

	private double destinationRotation = 0;
	private double distanceRotation = 0;
	private int degreesPerSecond = 15;

	private bool backToOrigin = true;
	private bool IsRotating = false;


	void Start ()
	{
		paddle = FindObjectOfType<Paddle> ();
		stick_bar = FindObjectOfType<StickBar> ();
	}

	void Update ()
	{

		if (Input.GetKeyDown (KeyCode.LeftArrow)) {
			MovePaddle (-1);
		}

		if (Input.GetKeyDown (KeyCode.RightArrow)) {
			MovePaddle (1);
		}

		DoRotate ();
	}

	void MovePaddle (int moveVal)
	{
		Vector3 paddlePos = paddle.transform.position;
		paddlePos.x += moveVal;
		paddlePos.x = Mathf.Clamp (paddlePos.x, 6f, 10f);
		paddle.transform.position = paddlePos;
	}

	public void RotateToLeft ()
	{
		if (IsRotating == false) {
			distanceRotation = -90.0f;
			destinationRotation += distanceRotation;

			IsRotating = true;
		}
	}

	public void RotateToRight ()
	{
		if (IsRotating == false) {
			distanceRotation = 90.0f;
			destinationRotation += distanceRotation;

			IsRotating = true;
		}
	}

	void DoRotate(){
		if (destinationRotation != 0) {
			if (destinationRotation > 0) {
				stick_bar.transform.Rotate (Vector3.forward * degreesPerSecond);
				destinationRotation -= degreesPerSecond;
			} else {
				stick_bar.transform.Rotate (Vector3.back * degreesPerSecond);
				destinationRotation += degreesPerSecond;
			}
		} else if (distanceRotation != 0) {
			destinationRotation -= distanceRotation;
			distanceRotation = 0;
		} else {
			IsRotating = false;
		}
	}

	
}
