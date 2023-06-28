using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlashMove : MonoBehaviour
{
    public static FlashMove instance;
    private void Awake()
    {
        if (instance != null && instance != this)
        {
            Destroy(instance);
        }
        else
        {
            instance = this;
        }
    }

    public bool Flash;
    public Material enemyMaterial;
    public LayerMask mask;
    public Transform Player;
    public Transform point;
    public GameObject Phypoint;
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        //Ray ray = new Ray(transform.position, transform.forward);
        //RaycastHit hitInfo;
        //if (Input.GetMouseButton(0))
        //{
        //    if (Physics.Raycast(ray, out hitInfo, 10f, mask))
        //    {
              
        //        Debug.DrawLine(transform.position, hitInfo.point, Color.yellow);
        //        point.transform.position = hitInfo.point;
        //        Phypoint.SetActive(true);
        //    }

        //    else
        //    {
        //        Debug.DrawRay(transform.position, transform.forward * 10, Color.blue);
        //    }
        //}
        //if (Input.GetMouseButtonUp(0))
        //{
        //    if (Physics.Raycast(ray, out hitInfo, 10f, mask))
        //    {
        //        Player.transform.position = hitInfo.point;
        //        Phypoint.SetActive(false);
        //    }
        //}

    }
    public void flashmove0()
    {
        Ray ray = new Ray(transform.position, transform.forward);
        RaycastHit hitInfo;
        if (Input.GetMouseButton(0))
        {
            if (Physics.Raycast(ray, out hitInfo, 10f, mask))
            {
               
                Debug.DrawLine(transform.position, hitInfo.point, Color.yellow);
                point.transform.position = hitInfo.point;
                Phypoint.SetActive(true);
               
            }

          
        }
        if (Input.GetMouseButtonUp(0))
        {
            if (Physics.Raycast(ray, out hitInfo, 10f, mask))
            {
                Player.transform.position = hitInfo.point;
                Phypoint.SetActive(false);
                randomskill.instance.left = false;
            }
        }
    }
    public void flashmove1()
    {
        Ray ray = new Ray(transform.position, transform.forward);
        RaycastHit hitInfo;
        if (Input.GetMouseButton(1))
        {
            if (Physics.Raycast(ray, out hitInfo, 10f, mask))
            {
             //   hitInfo.collider.gameObject.GetComponent<Renderer>().material = enemyMaterial;
                Debug.DrawLine(transform.position, hitInfo.point, Color.yellow);
                point.transform.position = hitInfo.point;
                Phypoint.SetActive(true);
               
            }

            else
            {
                Debug.DrawRay(transform.position, transform.forward * 10, Color.blue);
            }
        }
        if (Input.GetMouseButtonUp(1))
        {
            if (Physics.Raycast(ray, out hitInfo, 10f, mask))
            {
                Player.transform.position = hitInfo.point;
                Phypoint.SetActive(false);
                randomskill.instance.right = false;
            }
        }
    }
}


