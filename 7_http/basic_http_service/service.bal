import ballerina/http;

service /greet on new http:Listener(9090) {
    resource function get . (string name) returns string {
        return string `Greetings, ${name}...!`;
    }
}
