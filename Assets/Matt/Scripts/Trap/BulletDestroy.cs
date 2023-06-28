using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BulletDestroy : MonoBehaviour
{
    public Transform Maze;
    public float bulletdistance;
    void Start()
    {
        
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovementAdv>() != null)
        {
            GameManager.instance.GameOver();
        }

    }
    // Update is called once per frame
    void Update()
    {

        bulletdistance = (Maze.position - transform.position).magnitude;
        if (bulletdistance > 20)
        {
            Destroy(gameObject);
        }
    }
}
