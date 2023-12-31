import ballerina/io;

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

function averageSubjects() {
    map<float> subjects = {"Maths": 65.0, "Physics": 75.0, "Chemistry": 85.0};

    io:println("Average: ", average(subjects));
    // See test for more example usage.
}
