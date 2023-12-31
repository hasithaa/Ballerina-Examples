This function takes a map as a parameter and returns the average of the marks.

Since we are only interested in the values of the map, we are using the `toArray()` function to iterate through the values of the map like an array.

```ballerina {linenos=table,linenostart=3,hl_lines=["2-4",6]}
function average(map<float> subjects) returns float? {
    if subjects.length() == 0 {
        return null;
    }

    float[] values = subjects.toArray();
    int index = 0;
    float total = 0;
    while index < values.length() {
        total = total + values[index];
        index = index + 1;
    }
    return total / values.length();
}
```

This function returns `()` if the map is empty. Having a guard clause like this is a good practice when you are iterating through a collection.

---
