**When to Use Hexadecimal Numbers**

1. The hexadecimal number system is an efficient method for representing large numbers with fewer characters. For instance, the decimal number `1048575` is equivalent to `FFFFF` in hexadecimal.
2. Hexadecimal is frequently employed as a more readable and writable shorthand for binary data. It finds widespread use in various fields, including networking, web development, and cryptography.
3. However, the hexadecimal system is not as universally understood or utilized as the decimal system. This can make it more challenging for developers to work with on a daily basis. In most cases, especially when there is no specific requirement, the decimal system is the preferable choice for everyday use.
4. It's important to note that the underlying bit representation of a number remains unchanged, regardless of whether it is expressed in decimal or hexadecimal literals.

```ballerina
    int i = 1048575;
    int j = 0xFFFFF;
    io:println(i == j); // true
```