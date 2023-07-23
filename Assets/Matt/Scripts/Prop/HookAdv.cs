using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using TMPro;


public class HookAdv : MonoBehaviour
{
    public static HookAdv instance;

    public Transform playerTransf;
    public Rigidbody playerRb;

    Transform hooktransf;

    public void Awake()
    {
        instance = this;
    }
    private void Start()
    {
        hooktransf = GetComponent<Transform>();
        
    }

    public void StartHook()
    {
        Vector3 targetPosition = hooktransf.position;
        Vector3 direction = (targetPosition - playerTransf.position).normalized;

        StartCoroutine(MoveCoroutine(targetPosition, direction));
    }

    private IEnumerator MoveCoroutine(Vector3 targetPosition, Vector3 direction)
    {
        while (Vector3.Distance(playerTransf.position, targetPosition) > 0.1f)
        {
            playerRb.MovePosition(playerTransf.position + direction * 100 * Time.fixedDeltaTime);
            yield return new WaitForFixedUpdate();
        }
        playerRb.MovePosition(targetPosition);
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovementAdv>() != null)
        {
            HookAdv hook = GetComponent<HookAdv>();
            hook.gameObject.SetActive(false);
            Invoke("appear", 5f);
        }
    }
    public void appear()
    {
        HookAdv hook = GetComponent<HookAdv>();
        gameObject.SetActive(true);
        
    }
}
