using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;

public class Brokenplatform : MonoBehaviour
{
    public GameObject brokenplatform;
    AudioSource audioSource;
   
    private void Start()
    {
        GetComponent<Rigidbody>().useGravity = false;
        GetComponent<Rigidbody>().isKinematic=true;
        audioSource = GetComponent<AudioSource>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovementAdv>() != null)
        {
            
            Invoke("Break", 0.3f);
        }

    }
    public void Break()
    {
        GetComponent<Rigidbody>().useGravity=true;
        GetComponent<Rigidbody>().isKinematic = false;
        AudioManager.instance.PlaySfx_BrokenPlatform(audioSource);
    }
    public void re()
    {
        GetComponent<Rigidbody>().isKinematic = true;
        GetComponent<Rigidbody>().useGravity = false;

        GetComponent<Rigidbody>().position= brokenplatform.transform.position;
        GetComponent<Rigidbody>().rotation =brokenplatform.transform.rotation;  
    }
}
