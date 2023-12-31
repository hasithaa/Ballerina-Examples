import ballerina/io;

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

function findMaxMarks() {
    map<float> subjects = {"Maths": 75.0, "Physics": 80.0, "Chemistry": 65.0};
    io:println("Max mark: ", max(subjects));
}
