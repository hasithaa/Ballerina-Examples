
```ballerina {linenos=table,linenostart=5}
    () a = ();
```

The nil literal `()` is assigned to the variable `a`.

---

```ballerina {linenos=table,linenostart=6}
    () b = null;
```

The literal `null` is assigned to the variable `b`.

---

```ballerina {linenos=table,linenostart=8}
    json data = null;
    json payment = { "amount": 100, "currency": "USD" , "card": null};
```

The literal `null` is used in a JSON context.

---