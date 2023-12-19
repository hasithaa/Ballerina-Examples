**JSON and `null` Literal**

The use of the null literal is encouraged in a JSON context because it naturally represents the absence of a value in JSON.

```ballerina
json data = null;
json payment = {"amount": 100, "currency": "USD", "card": null};
```
