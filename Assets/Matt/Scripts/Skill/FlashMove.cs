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
    public bool Useskill;
    public bool Flash;
    public Material enemyMaterial;
    public LayerMask mask;
    public Rigidbody Player;
    public Transform point;
 //   public GameObject tttpoint;
    public GameObject Phypoint;
    void Start()
    {
        Useskill = false;
    }

    // Update is called once per frame
   
    public void flashmove0()
    {

        if (Input.GetMouseButton(0))
        {
            Phypoint.SetActive(true);
            //   Useskill = true;
            fff();
            randomskill.instance.left = false;
            Phypoint.SetActive(false);
        }
        //if (Input.GetMouseButtonUp(0))
        //{
        //   Useskill= false;
        //    randomskill.instance.left = false;
        //}
    }
    public void flashmove1()
    {

        if (Input.GetMouseButton(1))
        {
            Phypoint.SetActive(true);
            // Useskill = true;
            fff();
            randomskill.instance.right = false;
            Phypoint.SetActive(false);
        }
        //if (Input.GetMouseButtonUp(1))
        //{
        //    Useskill= false;
           
        //}
        
    }
    public void fff()
    {
        Ray ray = new Ray(transform.position, transform.forward);
        RaycastHit hitInfo;

        if (Physics.Raycast(ray, out hitInfo, 10f))
        {

            Debug.DrawLine(transform.position, hitInfo.point, Color.yellow);
            Player.position = hitInfo.point;
        }

        else
        {
            Player.position = point.transform.position;
        }
    }
}


