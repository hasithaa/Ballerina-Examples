import ballerina/io;

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

function filterSubjects() {
    map<float> subjects = {"Maths": 75.0, "Physics": 58.0, "Chemistry": 90.0};
    map<float> passedSubjects = filter(subjects);
    io:println(passedSubjects);
}
