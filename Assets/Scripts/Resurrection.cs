using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UIElements;

public class Resurrection : MonoBehaviour
{
    public Transform[] checkpoint;

    public Transform resurrectPoint;
    public Transform Player;
    public int currentCheckpointIndex;

    public GameObject checkzero;
    public GameObject checkone;
    public GameObject checktwo;
    public GameObject checkthree;
    public GameObject checkfour;
    public int skillleft;
    public int skillright;
    public bool lll;
    public bool rrr;

    void Update()
    {
       
        if (Input.GetKeyDown(KeyCode.R))
        {
            Player.position = resurrectPoint.position;
            old();
            newnew();
        }
    }
    private void Start()
    {
        resurrectPoint.position = transform.position;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<CheckPointComponent>() != null)
        {
            CheckPointComponent checkPointComponent = other.GetComponent<CheckPointComponent>();

            if (checkPointComponent.checknumber > currentCheckpointIndex)
            {
                currentCheckpointIndex = checkPointComponent.checknumber;
                UpdateResurrectPoint();
                Fresh();
                // = randomskill.instance.leftskill;
            }
        }
    }
    
    private void UpdateResurrectPoint()
    {
        if (currentCheckpointIndex < checkpoint.Length)
        {
            resurrectPoint.position = checkpoint[currentCheckpointIndex].position;
        }
        else
        {
            Debug.LogError("Invalid checkpoint index: " + currentCheckpointIndex);
        }
    }
    public void Fresh()
    {
        skillleft = randomskill.instance.leftskill;
        skillright = randomskill.instance.rightskill;
        lll = randomskill.instance.left;
        rrr = randomskill.instance.right;
    }
    public void old()
    {
        randomskill.instance.leftzeroicon.SetActive(false);
        randomskill.instance.leftoneicon.SetActive(false);
        randomskill.instance.lefttwoicon.SetActive(false);
        randomskill.instance.leftthreeicon.SetActive(false);
        randomskill.instance.rightzeroicon.SetActive(false);
        randomskill.instance.rightoneicon.SetActive(false);
        randomskill.instance.righttwoicon.SetActive(false);
        randomskill.instance.rightthreeicon.SetActive(false);
    }
    public void newnew()
    {
        randomskill.instance.left = lll;
         randomskill.instance.right=rrr ;
         randomskill.instance.leftskill=skillleft;
       randomskill.instance.rightskill=skillright;
       
    }
    public void save()
    {
        switch (currentCheckpointIndex)
        {
            case 0:checkzero.SetActive(true); checkone.SetActive(true);  ; break;
            case 1:checkone.SetActive(true); checktwo.SetActive(true); break;
            case 2: checktwo.SetActive(true); checkthree.SetActive(true); break;
            case 3: checkthree.SetActive(true); checkfour.SetActive(true); break;
            case 4: checkfour.SetActive(true); break;
           // case 5: checkone.SetActive(false); break;
        }
    }
}
