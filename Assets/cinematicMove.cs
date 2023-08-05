using UnityEngine;

public class cinematicMove : MonoBehaviour
{
    float xRotation;
    float yRotation;
    float horizontalInput;
    float verticalInput;
    Rigidbody rb;
    private void Start()
    {
        rb = GetComponent<Rigidbody>();
    }
    private void Update()
    {
        float mouseX = Input.GetAxisRaw("Mouse X") * Time.deltaTime * 100;
        float mouseY = Input.GetAxisRaw("Mouse Y") * Time.deltaTime * 100;

        yRotation += mouseX;

        xRotation -= mouseY;
        xRotation = Mathf.Clamp(xRotation, -90f, 90f);

        transform.rotation = Quaternion.Euler(xRotation, yRotation, 0);

        horizontalInput = Input.GetAxisRaw("Horizontal");
        verticalInput = Input.GetAxisRaw("Vertical");
        Vector3 moveDirection = transform.forward * verticalInput * 10 + transform.right * horizontalInput * 10;
        if (Input.GetKey(KeyCode.Space))
        {
            moveDirection = transform.forward * verticalInput * 10 + transform.right * horizontalInput * 10 + transform.up * 15;
        }
        else if(Input.GetKey(KeyCode.LeftShift))
        {
            moveDirection = transform.forward * verticalInput * 10 + transform.right * horizontalInput * 10 + -transform.up * 15;
        }
        
        rb.velocity = moveDirection;
    }
}
