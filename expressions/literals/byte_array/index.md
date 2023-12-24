---
title: Byte Array Literal
description: "Byte Array Literal is a sequence of bytes represented in base16 or base64."
date: 2023-01-01
weight: 6036
tags : ["byte array", "literals"]
---

Byte Array Literal is a sequence of bytes represented in base16 or base64.

<!--more-->

## Example

{{< example repo="https://github.com/hasithaa/Ballerina-Examples" repoPath="expressions/literals/byte_array" default="byte_array.bal">}}

## Insights

{{< tips >}}

## Base64 to Byte Array Explained

In order to understand the Base64 to Byte Array conversion, let's refresh our memory on how Base64 encoding works. 

The Base64 encoding uses a set of 64 characters. This set includes:

- The uppercase letters 'A' to 'Z' (26 characters),
- The lowercase letters 'a' to 'z' (26 characters),
- The numerals '0' to '9' (10 characters),
- Plus two additional characters, typically '+' and '/'.

Following table shows the Base64 encoding table.

| #   | Char | Bits   | #   | Char | Bits   | #   | Char | Bits   | #   | Char | Bits   |
|-----|------|--------|-----|------|--------|-----|------|--------|-----|------|--------|
| 0   | A    | 000000 | 16  | Q    | 010000 | 32  | g    | 100000 | 48  | w    | 110000 |
| 1   | B    | 000001 | 17  | R    | 010001 | 33  | h    | 100001 | 49  | x    | 110001 |
| 2   | C    | 000010 | 18  | S    | 010010 | 34  | i    | 100010 | 50  | y    | 110010 |
| 3   | D    | 000011 | 19  | T    | 010011 | 35  | j    | 100011 | 51  | z    | 110011 |
| 4   | E    | 000100 | 20  | U    | 010100 | 36  | k    | 100100 | 52  | 0    | 110100 |
| 5   | F    | 000101 | 21  | V    | 010101 | 37  | l    | 100101 | 53  | 1    | 110101 |
| 6   | G    | 000110 | 22  | W    | 010110 | 38  | m    | 100110 | 54  | 2    | 110110 |
| 7   | H    | 000111 | 23  | X    | 010111 | 39  | n    | 100111 | 55  | 3    | 110111 |
| 8   | I    | 001000 | 24  | Y    | 011000 | 40  | o    | 101000 | 56  | 4    | 111000 |
| 9   | J    | 001001 | 25  | Z    | 011001 | 41  | p    | 101001 | 57  | 5    | 111001 |
| 10  | K    | 001010 | 26  | a    | 011010 | 42  | q    | 101010 | 58  | 6    | 111010 |
| 11  | L    | 001011 | 27  | b    | 011011 | 43  | r    | 101011 | 59  | 7    | 111011 |
| 12  | M    | 001100 | 28  | c    | 011100 | 44  | s    | 101100 | 60  | 8    | 111100 |
| 13  | N    | 001101 | 29  | d    | 011101 | 45  | t    | 101101 | 61  | 9    | 111101 |
| 14  | O    | 001110 | 30  | e    | 011110 | 46  | u    | 101110 | 62  | +    | 111110 |
| 15  | P    | 001111 | 31  | f    | 011111 | 47  | v    | 101111 | 63  | /    | 111111 |

---

Let's look at the following examples.

**Example 1: ``base64 `AAAB` ``**

<table class="tip-table text-center">
  <tr>
    <td>Base64</td>
    <td colspan="6">A</td>
    <td colspan="6">A</td>
    <td colspan="6">A</td>
    <td colspan="6">B</td>
  </tr>
  <tr>
    <td>Index</td>
    <td colspan="6">0</td>
    <td colspan="6">0</td>
    <td colspan="6">0</td>
    <td colspan="6">1</td>
  </tr>
  <tr>
    <td>Bit pattern</td>
    <td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td>
    <td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td>
    <td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td>
    <td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td>
  </tr>
  <tr>
    <td>Byte</td>
    <td colspan="8">0000 0000</td>
    <td colspan="8">0000 0000</td>
    <td colspan="8">0000 00001</td>
  </tr>
  <tr>
    <td>Ballerina byte</td>
    <td colspan="8">0</td>
    <td colspan="8">0</td>
    <td colspan="8">1</td>
  </tr>
</table>


**Example 2: ``base64 `ABB=` ``**

<table class="tip-table text-center">
  <tr>
    <td>Base64</td>
    <td colspan="6">A</td>
    <td colspan="6">B</td>
    <td colspan="6">B</td>
    <td colspan="6">=</td>
  </tr>
  <tr>
    <td>Index</td>
    <td colspan="6">0</td>
    <td colspan="6">1</td>
    <td colspan="6">1</td>
    <td colspan="6">X</td>
  </tr>
  <tr>
    <td>Bit pattern</td>
    <td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td>
    <td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td>
    <td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td>
    <td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td>
  </tr>
  <tr>
    <td>Byte</td>
    <td colspan="8">0000 0000</td>
    <td colspan="8">0001 0000</td>
    <td colspan="8">x</td>
  </tr>
  <tr>
    <td>Ballerina byte</td>
    <td colspan="8">0</td>
    <td colspan="8">16</td>
    <td colspan="8"></td>
  </tr>
</table>

**Example 3: ``base64 `BC==` ``**

<table class="tip-table text-center">
  <tr class>
    <td>Base64</td>
    <td colspan="6">B</td>
    <td colspan="6">C</td>
    <td colspan="6">=</td>
    <td colspan="6">=</td>
  </tr>
  <tr>
    <td>Index</td>
    <td colspan="6">1</td>
    <td colspan="6">2</td>
    <td colspan="6">X</td>
    <td colspan="6">X</td>
  </tr>
  <tr>
    <td>Bit pattern</td>
    <td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td>
    <td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td>
    <td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td>
    <td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td>
  </tr>
  <tr>
    <td>Byte</td>
    <td colspan="8">0000 0100</td>
    <td colspan="8">X</td>
    <td colspan="8">X</td>
  </tr>
  <tr>
    <td>Ballerina byte</td>
    <td colspan="8">4</td>
    <td colspan="8"></td>
    <td colspan="8"></td>
  </tr>
</table>
