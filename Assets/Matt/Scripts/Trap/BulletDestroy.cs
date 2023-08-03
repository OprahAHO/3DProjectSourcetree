using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BulletDestroy : MonoBehaviour
{
    public Transform Maze;
   // public Transform remaze;
    public float bulletdistance;
    void Start()
    {
        BulletDestroy bulletDestroy= GetComponent<BulletDestroy>();
    }
    //public void Initialize(Transform targetTransform)
    //{
    //    Maze = targetTransform;
    //}
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovementAdv>() != null)
        {
            GameManager.instance.GameOver();
        }
        if (other.GetComponent<BoxCollider>() != null)
        {
            Destroy(gameObject);
        }

    }
    void bb()
    {
        Destroy(gameObject);
    }
    // Update is called once per frame
    void Update()
    {
           // BulletDestroy bd = GetComponent<BulletDestroy>();
       // Maze= remaze;
        bulletdistance = (Maze.position - transform.position).magnitude;
        if (bulletdistance > 20)
        {

            Invoke("bb", 2f);
        }
    }
}
