using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class cursor : MonoBehaviour
{
    public Texture2D normal, diu;
    // Start is called before the first frame update
    void Start()
    {
        Cursor.SetCursor(normal, Vector2.zero, CursorMode.Auto);
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButton(0))
        {
            Cursor.SetCursor(diu, Vector2.zero, CursorMode.Auto);

        }

        if (Input.GetMouseButtonUp(0))

        {
            Cursor.SetCursor(normal, Vector2.zero, CursorMode.Auto);

        }
    }
}
