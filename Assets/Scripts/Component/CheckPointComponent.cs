using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckPointComponent : MonoBehaviour
{public static CheckPointComponent instance;
    public int checknumber=1;
  //  public float TFFCheckpoint;
//    private float thisTimeCheckpoint;
  //  private float lastTimeCheckpoint;
    public void Awake()
    {
        instance = this;
    }
}
