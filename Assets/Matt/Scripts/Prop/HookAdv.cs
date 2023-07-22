using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HookAdv : MonoBehaviour
{
    public static HookAdv instance;

    public Transform playertransf;
    Transform hooktransf;

    public void Awake()
    {
        instance = this;
    }
    private void Start()
    {
        hooktransf = GetComponent<Transform>();
    }
    private void Update()
    {
        if (HookCheck.instance.seenHook)
        {
            StartHook();
        }
    }
    void StartHook()
    {
        if(Input.GetKeyDown(KeyCode.E))
        {

        }
    }
}
