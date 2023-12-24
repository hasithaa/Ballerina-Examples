**Usage of Float Suffixes: `f` and `d`**

1. Float suffixes are utilized to designate the type of a floating-point literal.
2. The suffix `f` or `F` signifies that the value is of the `float` type.
3. The suffix `d` or `D` denotes a `decimal` type value.

In Ballerina, implicit type conversion between numeric types is not supported. Consequently, it may be necessary to explicitly specify the type of a literal at times. This aids the compiler in determining the exact type of the literal.

```ballerina
    var num1 = 10f; // float
    var num2 = 10d; // decimal
```