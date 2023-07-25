using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.VFX;

public class VfxManager : MonoBehaviour
{
    public static VfxManager instance;

    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);

        }
    }
    public void PlayVFXBuild(Vector3 position)
    {
        var vfx = Pool.Instance.GetObj("VFX_Build"); //VFXManager.instance.PlayVFXBuild(transform.position); 
        vfx.transform.position = position;
    }
}
