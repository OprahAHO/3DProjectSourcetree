using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoomNow : MonoBehaviour
{
    public float SmallBoomRange;
    public float MediumBoomRange;
    public float BigBoomRange;
    private float distance;
    public float small;
    public float mid;
    public float large;
    private Vector3 addForceVector;
    public float time;
    public float upPoint;
    
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.GetComponent<WallComponent>() != null || collision.gameObject.GetComponent<groundedComponent>() != null)
            StartBoom();
    }
    private void Update()
    {
        CheckDistance();
    }
    void StartBoom()
    {
        Rigidbody boomRb = GetComponent<Rigidbody>();
        Collider boomCo = GetComponent<Collider>();

        boomRb.velocity = Vector3.zero;
        boomRb.constraints = RigidbodyConstraints.FreezePosition;
        boomCo.isTrigger = true;

        Delay();
    }
    void CheckDistance()
    {
        distance = Vector3.Distance(transform.position, BigBoom.Instance.orientation.position);
    }
    void Delay()
    {
        StartCoroutine(DelayCoroutine());
    }
    IEnumerator DelayCoroutine()
    {
        yield return new WaitForSeconds(time);
        ChooseABoomWay();
    }

    void ChooseABoomWay()
    {
        if (distance > SmallBoomRange)
        {
            Debug.Log("NothingHapend");
        }
        else if (SmallBoomRange > distance && distance > MediumBoomRange)
        {
            StartSmallBoom();
        }
        else if (MediumBoomRange > distance && distance > BigBoomRange)
        {
            StartMediumBoom();
        }
        else if (distance < BigBoomRange)
        {
            StartBigBoom();
        }

        StopBoom();
    }

    void StartSmallBoom()
    {
        Debug.Log("StartSmallBoom");
        Vector3 Boompoint = BigBoom.Instance.orientation.position + BigBoom.Instance.orientation.up*upPoint;
        
        addForceVector = (Boompoint - transform.position).normalized;
        BigBoom.Instance.player.GetComponent<Rigidbody>().AddForce(addForceVector * small);
       
    }
    void StartMediumBoom()
    {
        Debug.Log("StartMediumBoom");
        Vector3 Boompoint = BigBoom.Instance.orientation.position + BigBoom.Instance.orientation.up * upPoint;
       
        addForceVector = (Boompoint - transform.position).normalized;
        BigBoom.Instance.player.GetComponent<Rigidbody>().AddForce(addForceVector * mid);
    }
    void StartBigBoom()
    {
        Debug.Log("StartBigBoom");
        Vector3 Boompoint = BigBoom.Instance.orientation.position + BigBoom.Instance.orientation.up * upPoint;
    
        addForceVector = (Boompoint - transform.position).normalized;
        BigBoom.Instance.player.GetComponent<Rigidbody>().AddForce(addForceVector * large);
        //Debug.Log(addForceVector);
    }

    void StopBoom()
    {
        Destroy(gameObject);
        //VFX
    }


}
