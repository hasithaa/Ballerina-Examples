import ballerina/io;

public function main() {

    () a = ();
    () b = null;

    json data = null;
    json payment = { "amount": 100, "currency": "USD" , "card": null};

    io:println("a:", a);
    io:println("b:", b);
    io:println("data:", data);
    io:println("payment:", payment);
}