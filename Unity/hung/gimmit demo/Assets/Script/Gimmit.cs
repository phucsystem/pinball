using UnityEngine;

public class Gimmit : MonoBehaviour {
    public float speed;

    // move = 0 : No move, move = 1 : moving
    public int move = 0;

    // direction = 0 : move from left to right | direction = 1 : move from right to left
    public int direction = 0;

    private float _gimmitMax;
    private float _gimmitMin;
    // Use this for initialization
    void Start () {
        this.speed = Random.Range(1,10);
        //the min/max pipe can random
        this._gimmitMax = 3.89f;
        this._gimmitMin = -2f;
        
        Vector3 gimmit = transform.position;
        gimmit.x = 3.5f;
        gimmit.y = Random.Range(_gimmitMin, _gimmitMax);
        transform.position = gimmit;
    }
	
	// Update is called once per frame
	void Update () {
        // Find gimmit object position
        Vector3 gimmit = transform.position;

        if (move == 0)
        {
            transform.Translate(Vector3.left * speed * Time.deltaTime);
            move = 1;
        }
        else
        {
            if (direction == 0)
            {
                transform.Translate(Vector3.left * speed * Time.deltaTime);
                if (gimmit.x < -2.5)
                {
                    direction = 1;
                }
            }
            else
            {
                transform.Translate(Vector3.right * speed * Time.deltaTime);
                if (gimmit.x > 2.5)
                {
                    direction = 0;
                }
            }
        }
    }
}
