using UnityEngine;

public class BirdMovement : MonoBehaviour
{
    void Start() { }
    public float jumpVelocity;
    float g = -9.8f;

    void Update()
    {
        // x = x0 + v0 * t + a * t * t / 2
        transform.position += Vector3.up * (jumpVelocity * Time.deltaTime + g * Time.deltaTime * Time.deltaTime / 2);
        // vt = v0 + a * t
        jumpVelocity += g * Time.deltaTime;
        if (Input.GetKeyDown(KeyCode.Space) || Input.GetMouseButtonDown(0))
        {
            jumpVelocity = 2.5f;
        }
    }
}