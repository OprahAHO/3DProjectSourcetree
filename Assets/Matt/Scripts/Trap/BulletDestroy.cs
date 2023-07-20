using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BulletDestroy : MonoBehaviour
{
   // public Transform Maze;
    public Transform remaze;
    public float bulletdistance;
    void Start()
    {
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
        

    }
    // Update is called once per frame
    void Update()
    {
           // BulletDestroy bd = GetComponent<BulletDestroy>();
       // Maze= remaze;
        bulletdistance = (remaze.position - transform.position).magnitude;
        if (bulletdistance > 20)
        {
            Destroy(gameObject);
        }
    }
}
