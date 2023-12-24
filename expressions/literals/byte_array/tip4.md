**Base64 Byte Array Literal Semantics**

- Base64 Literal uses Base64 alphabet; `A..Z` | `a..z` | `0..9` | `+` | `/`
    - Total 64 characters = 26 Uppercase Letters + 26 Lowercase Letters + 10 numbers + 2 chars.
    - Each Base64 character represents 6 bits.
    - The [Encoding table](#base-64-encoding-table) is the same as RFC 4648.

- You need four Base64 characters to represent 3 bytes.
    - 4 x 6 bits = 24 bits = 3 bytes
- The length of Base64 literal must be a multiple of four.
    - You can add one or two padding characters `=` to make its length multiple of 4.
    - Single `=` means the last four characters will represent only two bytes.
    - `==` means the last four characters will represent only one byte.
    - `=` or `==` always comes at the end of the literal.
- You can have any white space in between two Base64 Characters.
    - Group Base64 Characters to improve the readability of your code.
    - Writing Base64 Characters in a group of 4 characters is a good option.
