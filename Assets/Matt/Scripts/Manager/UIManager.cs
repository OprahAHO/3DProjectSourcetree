using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using SimpleEffects.Glitch;

public class UIManager : MonoBehaviour
{
    [Header("Die")]
    public GameObject gameOverPanel;
   
    public GameObject successPanel;
    public GameObject start;
    public GameObject Restart;
    public GameObject Quit;
  
    public static UIManager instance { get; private set; }
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
    public void RestartLevel()
    {
        SceneManager.LoadScene(0);
    }
    public void ShowGameOverPanel()
    {

        gameOverPanel.SetActive(true);

    }
    public void ShowSuccessPanel()
    {
        successPanel.SetActive(true);
    }
    public void StartPanel()
    {
        start.SetActive(false);
    }
}
