using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MysteriousShoes : MonoBehaviour
{
    public static MysteriousShoes instance;
    public void MysteriousShoe()
    {
        
    }
    private void Awake()
    {
        if (instance != null && instance != this)
        {
            Destroy(instance);
        }
        else
        {
            instance = this;
        }
    }
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
