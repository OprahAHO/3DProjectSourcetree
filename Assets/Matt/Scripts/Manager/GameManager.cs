using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    public static GameManager instance;
     public GameObject cam;
    public bool live=false;
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
       // Time.timeScale= 0.01f;
    }
    public void StartGame()
    {
        live = true;
        Time.timeScale = 1f;
        Debug.Log("9999");
cam.SetActive(true);
        UIManager.instance.StartPanel();


    }
    public void GameOver()
    {
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;

        Time.timeScale = 0;
        
        UIManager.instance.ShowGameOverPanel();
        
    }
    public void GameSuccess()
    {
       // camera.SetActive(false);

        Time.timeScale = 0;
                 
        UIManager.instance.ShowSuccessPanel();

    }
    public void RestartGame()
    {

        UIManager.instance.RestartLevel();
    }
    public void Exit()
    {
        Application.Quit();
    }
}
