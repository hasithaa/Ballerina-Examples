import ballerina/test;

final map<float> subjects = {"Maths": 90, "Physics": 95, "Chemistry": 85};

@test:Config
function testFilter() {
    test:assertEquals(filter(subjects), subjects, "Passed subjects should match");
    test:assertEquals(filter(subjects, 90), {"Maths": 90f, "Physics": 95f},
                                            "Passed subjects should match");
    test:assertEquals(filter({}), {}, "Passed subjects of empty map should nil");
}

@test:Config
function testAverage() {
    test:assertEquals(average(subjects), 90f, "Average of map values should match");
    test:assertEquals(average({}), (), "Average of empty map should nil");
}

@test:Config
function testMax() {
    test:assertEquals(max(subjects), 95f, "Max of map values should match");
    test:assertEquals(max({}), (), "Max of empty map should nil");
}
