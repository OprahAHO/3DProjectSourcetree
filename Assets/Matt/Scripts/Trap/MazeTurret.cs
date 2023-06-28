using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MazeTurret : MonoBehaviour
{
    public static MazeTurret instance;
    private Quaternion ChassisRot, rotatorRot;         
    public Transform chassis, rotator;                 
    public Transform target;                           
    public float rotSpeed = 10;                        
    public float minRot = -89f, MaxRot = 10f;
    public float distance;
    public float attackdistance;


    public void Awake()
    {
        instance= this;
    }
    // Update is called once per frame
    void Update()
    {
       distance = (target.position - chassis.position).magnitude;

        
        if (distance < attackdistance)
        {
            Vector3 tarDir = target.position - rotator.position;
            Vector3 rotatorDir = Vector3.ProjectOnPlane(tarDir, transform.up);

            Vector3 tempDir = transform.InverseTransformVector(rotatorDir);
            Quaternion tempRQ = Quaternion.LookRotation(tempDir);
            rotator.localRotation = Quaternion.Lerp(rotator.localRotation, tempRQ, Time.deltaTime * rotSpeed);
            Vector3 chassisDir = target.position - chassis.position;
            float angle = Vector3.Angle(chassisDir, rotatorDir);
            if (chassis.parent.InverseTransformPoint(target.position).y > 0)
            {
                angle *= -1;
                angle = Mathf.Clamp(angle, minRot, MaxRot);
            }
            Quaternion tempCQ = Quaternion.Euler(angle, 0, 0);
            chassis.localRotation = Quaternion.Lerp(chassis.localRotation, tempCQ, Time.deltaTime * rotSpeed);

           
        }

    }


}
