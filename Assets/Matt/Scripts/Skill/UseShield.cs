using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UseShield : MonoBehaviour
{
    public static UseShield instance;
    Rigidbody rb;
    public float rbSpeed;
    public GameObject Shield;
    public float ShieldTime;
    // Start is called before the first frame update
    public void Awake()
    {
        instance = this;
    }
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    private void Update()
    {
        SpeedCheck();
    }
    void SpeedCheck()
    {
        rbSpeed = new Vector3(rb.velocity.x, rb.velocity.y, rb.velocity.z).magnitude;
        //Debug.Log(rbSpeed);
    }
    void Used()
    {
        Shield.SetActive(false);
    }
   public void UseShields0()
    {
        if (Input.GetMouseButtonDown(0)) 
        { 
            Shield.SetActive(true);
            Invoke("Used", ShieldTime);
            randomskill.instance.left = false;
        }
    }
    public void UseShields1()
    {
        if (Input.GetMouseButtonDown(1))
        {
            Shield.SetActive(true);
            Invoke("Used", ShieldTime);
            randomskill.instance.right = false;
        }
    }
}
