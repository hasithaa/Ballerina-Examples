**Advantages of String Literals for Constants**

1. String literals are ideally suited for defining constant values. When you need to create a string that isn't constant, especially if it involves concatenating multiple strings with variables, it's more efficient to use the string template syntax.

Example of using string literals and templates in Ballerina:

```ballerina
string name = "John";
int age = 25;

// Less efficient concatenation
string about = "My name is " + name + " and I am " + age.toString() + " years old.";

// Preferred approach using string template syntax
string about = string `My name is ${name} and I am ${age} years old.`;
```

This approach simplifies string concatenation, making your code more readable and maintainable, especially when dealing with dynamic values within strings.