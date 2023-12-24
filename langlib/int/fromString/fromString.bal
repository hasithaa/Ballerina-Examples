import ballerina/io;
import ballerina/lang.value;

public function main() {

    // Int to String
    string ts1 = 19467.toString();
    string ts2 = value:toString(-19467);

    io:println("(1) ", "19467: ", ts1);
    io:println("(2) ", "-19467: ", ts2);

    // String to Int
    int|error fs1 = int:fromString(ts1); // OK
    int|error fs2 = int:fromString(ts2); // OK
    int|error fs3 = int:fromString("123abc"); // Error
    io:println("(3) ", ts1, ": ", fs1);
    io:println("(4) ", ts2, ": ", fs2);
    io:println("(5) ", "123abc: ", fs3);

    // Int to Hex String
    string hex1 = 19467.toHexString();
    string hex2 = int:toHexString(-125);
    io:println("(6) ", "19467: ", hex1);
    io:println("(7) ", "-125: ", hex2);

    // Hex String to Int
    int|error fhs1 = int:fromHexString(hex1); // OK
    int|error fhs2 = int:fromHexString("1a2b3c"); // OK
    int|error fhs3 = int:fromHexString("1p2q3r"); // Error
    io:println("(8) ", hex1, ": ", fhs1);
    io:println("(9) ", "1a2b3c: ", fhs2);
    io:println("(10) ", "1p2q3r: ", fhs3);
}
