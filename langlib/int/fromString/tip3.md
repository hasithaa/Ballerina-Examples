**Understanding the Hexadecimal/Decimal Conversion**

Here is a summary of the hexadecimal digits and their corresponding decimal and binary values.

| Digit | Decimal - Binary | Digit      | Decimal - Binary |
| ----- | ---------------- | ---------- | ---------------- |
| `0`   | 0 - `0000`       | `8`        | 8 - `1000`       |
| `1`   | 1 - `0001`       | `9`        | 9 - `1001`       |
| `2`   | 2 - `0010`       | `a` or `A` | 10 - `1010`      |
| `3`   | 3 - `0011`       | `b` or `B` | 11 - `1011`      |
| `4`   | 4 - `0100`       | `c` or `C` | 12 - `1100`      |
| `5`   | 5 - `0101`       | `d` or `D` | 13 - `1101`      |
| `6`   | 6 - `0110`       | `e` or `E` | 14 - `1110`      |
| `7`   | 7 - `0111`       | `f` or `F` | 15 - `1111`      |

Let us use the above table to convert Hexadecimal literal to Decimal. In a Hexadecimal literal,
the rightmost digit has a place value of 16⁰(=1), the second-rightmost digit has a place value of 16¹ (=16),
the third-rightmost digit has a place value of 16² (=256), and so on.
By multiplying each decimal value by its corresponding place value, and then by adding them all together,
the decimal value can be obtained. Here is an example.

| Hexadecimal Number | 16² (=256) | 16¹ (=16) | 16⁰ (=1) | Decimal Number                    |
| ------------------ | ---------- | --------- | --------- | --------------------------------- |
| D                  | -          | -         | D (13)    | 1 x 13 = 13                       |
| AD                 | -          | A (10)    | D (13)    | 16 x 10 + 1 x 13 = 173            |
| A3D                | A (10)     | 3 (3)     | D (13)    | 256 x 10 + 16 x 3 + 1 x 13 = 2621 |

Now let us try to do the reverse by converting the same decimal literals to hexadecimal.

1. Divide the decimal number by 16 and record the Quotient and the Remainder.
2. Repeat this process with the quotient from the earlier step until it becomes 0.
   The remainder of each step is equivalent to a hexadecimal digit, 
   where the least significant digit is the first remainder of the division. Here is an example.

| Decimal Number | Step | Divide by 16 | Quotient | Remainder | Hex Digit for remainder | Hexadecimal Number |
| -------------- | ---- | ------------ | -------- | --------- | ----------------------- | ------------------ |
| 13             | 1    | 13/16        | 0        | 13        | D                       | D                  |
|                |      |              |          |           |
| 173            | 1    | 173/16       | 10       | 13        | D                       | AD                 |
|                | 2    | 10/16        | 0        | 10        | A                       |                    |
|                |      |              |          |           |
| 2621           | 1    | 2621/16      | 163      | 13        | D                       | A3D                |
|                | 2    | 163/16       | 10       | 3         | 3                       |                    |
|                | 3    | 10/16        | 0        | 10        | A                       |                    |
