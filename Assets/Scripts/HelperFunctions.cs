using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HelperFunctions
{
    public static Vector3 Test(Vector3 a)
    {
        return Vector3.zero;
    }

    public static Vector3 FlattenY(Vector3 a, bool normalized)
    {

        if (normalized)
        {
            return new Vector3(a.x, 0, a.z).normalized;
        }

        return new Vector3(a.x, 0, a.z);
    }
}
