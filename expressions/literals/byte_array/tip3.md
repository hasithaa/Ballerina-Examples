**Base16 Byte Array Literal Semantics**

- Base16 Literal uses Hex Digits; `0`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `a` or `A`, `b` or `B`, `c` or `C`, `d` or `D`, `e` or `E`, `f` or `F`.
    - In regex form, `A..F` | `a..f` | `0..9`
- You need two Hex digits to represent a byte.
    - One hex digits represent 4 bits. i.e . `0` -> `0000`, `9` -> `1001`, `A` -> `1010`, F -> `1111`
    - So `0A` in hex means `0000 1010` which equals byte value 10. Similarly `11` -> `0001 0001`(17), `AB` -> `1010 1011`(171)
- You can have any white space in between two Hex Digits.
    - Group Hex Digits to improve the readability of your code.
    - Writing Hex digits in pairs or even numbers is a good option. 
