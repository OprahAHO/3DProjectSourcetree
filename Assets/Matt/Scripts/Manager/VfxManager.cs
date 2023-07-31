using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.VFX;

public class VfxManager : MonoBehaviour
{
    public static VfxManager instance;
    private Rigidbody rb;
    public float moveSpeed;
    public float newRateOverTime;
    public ParticleSystem HeighSpeedVFX;
    
    private ParticleSystem.EmissionModule emissionModule;

    public float horizontalSpeed;

    private void Start()
    {
        rb = GetComponent<Rigidbody>();
        HeighSpeedVFX.Stop();
        emissionModule = HeighSpeedVFX.emission;
       
    }
    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            
        }
        else
        {
            Destroy(gameObject);

        }
    }
    private void Update()
    {
        SpeedVFX();
        
    }
    public void PlayVFXBuild(Vector3 position)
    {
        var vfx = Pool.Instance.GetObj("VFX_Build"); 
        vfx.transform.position = position;
    }
    public void PlayVFXBaozha(Vector3 position)
    {
        var vfx = Pool.Instance.GetObj("baozha");
        vfx.transform.position = position;
    }
    void SpeedVFX()
    {
        Vector3 horizontalVelocity = rb.velocity;
        horizontalVelocity.y = 0f;
         horizontalSpeed = horizontalVelocity.magnitude;
        //Debug.Log(horizontalSpeed);
        if (horizontalSpeed > moveSpeed)
        {
            SpeedVFXStart(newRateOverTime);
           
        }
        else
        {
            SpeedVFXStop();
        }
    }
    public void SpeedVFXStart(float rateovertime)
    {
        HeighSpeedVFX.Play();

        emissionModule.rateOverTime = rateovertime;
    }
    public void SpeedVFXStop()
    {
        HeighSpeedVFX.Stop();
    }

}
