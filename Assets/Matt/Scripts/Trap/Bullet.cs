using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour
{
    public GameObject BulletPrefab;
    public float deltaT = 0.5f;
    private float InvokeTime;
    public float speed;
    

    void Start()
    {
        InvokeTime = deltaT;
    }

    // Update is called once per frame
    void Update()
    {if (MazeTurret.instance.distance <= MazeTurret.instance.attackdistance)
        {
            InvokeTime += Time.deltaTime;
            if(InvokeTime > deltaT)
            {
                shoot();
                InvokeTime = 0;
            }
           
        }
    else if(MazeTurret.instance.distance > MazeTurret.instance.attackdistance)
            {
            InvokeTime = deltaT;
        }

        //bulletdistance=(Maze.position-transform.position).magnitude;
        //if(bulletdistance > 20)
        //{
        //    Destroy(gameObject);
        //}
    }
    public void shoot()
    {
        GameObject bullet = GameObject.Instantiate(BulletPrefab, transform.position, transform.rotation);
        bullet.GetComponent<BulletDestroy>().Maze = MazeTurret.instance.gameObject.transform;
        Rigidbody bb = bullet.GetComponent<Rigidbody>();
        bb.AddForce(transform.forward * speed);
    }
}
