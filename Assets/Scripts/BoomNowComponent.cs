using DG.Tweening;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoomNowComponent : MonoBehaviour
{
   
    public float BigBoomRange;
    private float distance;

    public float largeForce;
    
    public float time;
    public float moveDuration;
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
        distance = Vector3.Distance(transform.position, BigBoom.Instance.transform.position);
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
  
        if (distance < BigBoomRange)
        {
            StartBigBoom();
        }

        StopBoom();
    }

    /*void StartBigBoom()
    {
        Transform playerTransform = BigBoom.Instance.player.GetComponent<Transform>();

        
        Transform playerPoint = BigBoom.Instance.orientation;
        Vector3 translateVector = (playerPoint.position - (transform.position - transform.up * upPoint)).normalized * largeForce * Time.deltaTime;

        //BigBoom.Instance.player.GetComponent<Transform>().Translate(translateVector);

        Vector3 targetPosition = playerTransform.position + translateVector;

        playerTransform.DOMove(targetPosition, moveDuration);
    }*/

    void StartBigBoom()
    {
        Transform playerPoint = BigBoom.Instance.orientation;

        Vector3 addForceVector = (playerPoint.position - (transform.position - transform.up * upPoint)).normalized;


        BigBoom.Instance.player.GetComponent<Rigidbody>().AddForce(addForceVector * largeForce);

        VfxManager.instance.PlayVFXBaozha(transform.position);
    }

    void StopBoom()
    {

        Destroy(gameObject);
        //VFX
    }


}
