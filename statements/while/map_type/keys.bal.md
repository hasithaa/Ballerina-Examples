This function takes a map and a mark as parameters and returns a map of subjects that meet the criteria.

The `keys()` function returns an array of keys of a map.
We can use this to iterate through the keys of a map like an array.

```ballerina {linenos=table,linenostart=3, hl_lines=4}
function filter(map<float> subjects, float mark = 60.0) returns map<float> {
    map<float> passedSubjects = {};

    string[] keys = subjects.keys();
    int index = 0;
    while index < keys.length() {
        if subjects.get(keys[index]) >= mark {
            passedSubjects[keys[index]] = subjects.get(keys[index]);
        }
        index = index + 1;
    }
    return passedSubjects;
}
```

Here we use the `get()` function to get the value of the key at the current index. The main difference between the `get()` function and the `[]` operator is that the `get()` function panics if the key is not found in the map. The `[]` operator returns `()` if the key is not found in the map.

Here I assume, the `subjects` map may not get updated while we are iterating through it. If the map gets updated while we are iterating through it, we may get unexpected results.

---
