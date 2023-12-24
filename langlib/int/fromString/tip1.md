**Restrictions on Implicit Conversion from Numerical Types to String in Ballerina**

1. Ballerina enforces a restriction on the implicit conversion between numerical types (such as `int`, `float`, and `decimal`) and the string type.
2. This restriction means that you cannot directly use a numerical value (`int`, `float`, or `decimal`) in a context where a `string` type is required, unless the conversion is performed explicitly.
3. The rationale behind this design decision is to prevent unintentional conversions and to ensure that the programmer consciously acknowledges and implements the conversion.

Example of explicit conversions in Ballerina:

```ballerina
    int num = 10;
    string s1 = num.toString(); // Explicit conversion
    string s2 = value:toString(num); // Explicit conversion
```