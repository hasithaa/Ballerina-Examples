**Creating an `int` Value from a `string` Value in Ballerina**

1. To convert a `string` value into an `int` value, you can utilize the `int:fromString()` function available in Ballerina's language library.
2. This function may result in an error, so it's advisable to use standard error handling practices like the `check` keyword to manage potential errors.

Example of converting a decimal string to an `int`:

```ballerina
    string s = "10";
    // Converts the string "10" to the integer 10
    int i = check int:fromString(s); 
```

3. For converting a hexadecimal string to an `int`, you can use the `int:fromHexString()` function.

Example of converting a hexadecimal string to an `int`:

```ballerina
    string s = "0x10";
    // Converts the hexadecimal string "0x10" to the integer 16
    int i = check int:fromHexString(s); 
``` 
