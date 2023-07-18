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
    public Transform Player;
    public Transform point;
 //   public GameObject tttpoint;
    public GameObject Phypoint;
    void Start()
    {
        Useskill = false;
    }

    // Update is called once per frame
    void LateUpdate()
    {
       // if (Useskill)
      //  {
            //Ray ray = new Ray(transform.position, transform.forward);
            //RaycastHit hitInfo;
            //// if (Input.GetMouseButton(0))
            ////   {
            //if (Physics.Raycast(ray, out hitInfo, 10f, mask))
            //{

            //    Debug.DrawLine(transform.position, hitInfo.point, Color.yellow);
            //    Player.transform.position = hitInfo.point;
            //    // point.transform.position = hitInfo.point;
            //    //  Phypoint.SetActive(true);
            //    //  tttpoint.SetActive(true);
            //}

            //else
            //{
            //    Debug.DrawRay(transform.position, transform.forward * 10, Color.blue);
            //}
            //    }
            //if (Input.GetMouseButtonUp(0))
            //{
            //    if (Physics.Raycast(ray, out hitInfo, 10f, mask))
            //    {
            //        Player.transform.position = hitInfo.point;
            //        Phypoint.SetActive(false);
            //        tttpoint.SetActive(false);
            //        if (randomskill.instance.left = true && randomskill.instance.leftskill > 2 && randomskill.instance.leftskill < 4)
            //        {

            //        }
            //    }
            //}
      //  }

    }
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
            // if (Input.GetMouseButton(0))
            //   {
            if (Physics.Raycast(ray, out hitInfo, 10f, mask))
            {

                Debug.DrawLine(transform.position, hitInfo.point, Color.yellow);
                Player.transform.position = hitInfo.point;
                // point.transform.position = hitInfo.point;
                //  Phypoint.SetActive(true);
                //  tttpoint.SetActive(true);
            }

            else
            {
            Player.transform.position = point.transform.position;
            }
        }
}


