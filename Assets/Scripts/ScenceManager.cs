using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScenceManager : MonoBehaviour
{
    List<ItemStatus> itemStatusList = new List<ItemStatus>();


    private void Update()
    {
        
    }
    
    void SaveInformation()
    {
        PickupSkill[] pickupSkills = FindObjectsOfType<PickupSkill>();

        foreach (PickupSkill pickupSkill in pickupSkills)
        {

            ItemStatus newItemStatus = new ItemStatus();
            newItemStatus.itemName = "";
            newItemStatus.isPickedUp = false;
            newItemStatus.position = new Vector3(0, 0, 0);

            itemStatusList.Add(newItemStatus);
        }
    }
    void Find()
    {
        ItemStatus itemStatus = itemStatusList[0];
        Debug.Log(itemStatus.itemName);

        foreach (ItemStatus currentItemStatus in itemStatusList)
        {
            Debug.Log(currentItemStatus.itemName);
        }
    }

}
