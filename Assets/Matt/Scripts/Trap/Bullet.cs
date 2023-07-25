using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour
{
    public GameObject BulletPrefab;
    public float deltaT = 0.5f;
    private float InvokeTime;
    public float speed;
    private AudioSource audioSource;

    void Start()
    {
        InvokeTime = deltaT;
        audioSource = GetComponent<AudioSource>();
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

        
    }
    public void shoot()
    {
        GameObject bullet = GameObject.Instantiate(BulletPrefab, transform.position, transform.rotation);
      //  bullet.GetComponent<BulletDestroy>().Maze = MazeTurret.instance.gameObject.transform;
        Rigidbody bb = bullet.GetComponent<Rigidbody>();
        bb.AddForce(transform.forward * speed);
        AudioManager.instance.PlaySfx_Level_Shoot(audioSource);
        //BulletDestroy bulletDestroy = bullet.GetComponent<BulletDestroy>();
        //if (bulletDestroy != null)
        //{
        //    bulletDestroy.Initialize(bulletDestroy.Maze); // ????????????? Maze
        //}
    }
}
