using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hook : MonoBehaviour
{

    //     
    //    shen.forward = ook.position - shen.position;
    //    shen.localScale = new Vector3(shen.localScale.x, shen.localScale.y, Vector3.Distance(shen.position, ook.position));
    public GameObject cordd;
    public GameObject icon;
    public Transform Player;
    public float HookDistance;
    public Vector3 hook;
    public Transform hookpoint;
    public Transform cord;
    public float playerdistance;
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        HookDistance = (Player.position - transform.position).magnitude;
        if (HookDistance < playerdistance)
        {
            cordd.SetActive(true);
            icon.SetActive(true);
            if (Input.GetKey(KeyCode.E))
            {
                hook=hookpoint.position;
                Player.position = Vector3.Lerp(Player.position, hookpoint.position, 0.03f);
            }
           
        }
        else if (HookDistance > playerdistance)
        {
            cordd.SetActive(false);
            icon.SetActive(false);
        }
       
        cord.forward = hookpoint.position - cord.position;
        cord.localScale = new Vector3(cord.localScale.x, cord.localScale.y, Vector3.Distance(cord.position, hookpoint.position));
    }
   
}
