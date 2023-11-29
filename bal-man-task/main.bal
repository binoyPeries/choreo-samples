import ballerina/io;

configurable string message = "Mannual Test";

public function main() {
    io:println("Hello, world!", message);
}
