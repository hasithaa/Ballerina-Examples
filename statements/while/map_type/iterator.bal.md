This function takes a map as a parameter and returns the maximum value of the map.

Since we are only interested in the values of the map, we are using the `iterator()` function to iterate through the map. We use the `next()` method of the iterator to get the next entry of the map. The `next()` method returns `()` if there are no more entries in the map.

```ballerina {linenos=table,linenostart=3,hl_lines=["2-4",6,7,13]}
function max(map<float> subjects) returns float? {
    if subjects.length() == 0 {
        return ();
    }

    var iterator = subjects.iterator();
    var next = iterator.next();
    float max = 0;
    while next != () {
        if next.value > max {
            max = next.value;
        }
        next = iterator.next();
    }
    return max;
}
```

At the end of each iteration, we call the `next()` method of the iterator to get the next entry of the map.

Similar to other cases, this function returns `()` if the map is empty. Having a guard clause like this is a good practice when you are iterating through a collection.

---
