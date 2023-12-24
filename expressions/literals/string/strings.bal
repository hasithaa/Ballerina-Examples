import ballerina/io;

public function main() {

    string en = "Hello, World!";
    string zh = "你好世界！";
    string hi = "नमस्ते दुनिया!";
    string si = "හෙලෝ වර්ල්ඩ්!";
    string emoji = "👋🌏";

    io:println(en);
    io:println(zh);
    io:println(hi);
    io:println(si);
    io:println(emoji);

    // String Escapes
    printEscapedChars();
}

function printEscapedChars() {

    io:println("\nString Escapes:");

    string tab = "Tab: A\tB, A\u{9}B";
    string newline = "Newline: A\nB, A\u{A}B";
    string carriageReturn = "CarriageReturn: A\rB, A\u{D}B";
    string backSlash = "BackSlash: A\\B, A\u{5C}B";
    string doubleQuote = "DoubleQuote: A\"B, A\u{22}B";

    io:println(tab);
    io:println(newline);
    io:println(carriageReturn);
    io:println(backSlash);
    io:println(doubleQuote);
}
