import ballerina/io;

public function main() {

    // base16 literals
    byte[] a = base16 `11AB22CD`;
    byte[] b = base16 `c3 d4 e5 f6`;
    byte[] c = base16 ` 55 EE 66 FF
                      77 AB 88 CD
                      99 EF 00 AA
                    `;
    io:println(a);
    io:println(b);
    io:println(c);

    // base64 literals
    byte[] p = base64 `AAAB`;
    byte[] q = base64 `ABB=`;
    byte[] r = base64 `BC==`;
    byte[] s = base64 `ABCD pqrs
                     5678 +/12`;
    io:println(p);
    io:println(q);
    io:println(r);
    io:println(s);
}
