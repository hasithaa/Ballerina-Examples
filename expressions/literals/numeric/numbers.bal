public function main() {

    // Numbers written in common decimal form (base 10)
    int[] _ = [34368, -287, 0, 4798, -510];

    // Hexadecimal numbers (base 16)
    int[] _ = [0X4D3B, -0x6e1a, 0x0, -0x1B05, 0Xc8e9];

    // You can combine decimal and hexadecimal numbers in the same array
    int[] _ = [0X4D3B, -287, 0, -0x1B05, 4798];

    // Floating point numbers in common decimal form
    float[] _ = [12.345, -5.678, .5678, 123.456f, 567.8901F, 505f, 505.0f];

    // Floating point numbers in scientific notation using exponent
    float[] _ = [12e4, 543e-5, 1.23e3, 1.23e3f];

    // Floating point numbers in hexadecimal form
    float[] _ = [0x5.8, -0x5.8, 0x7b.74bc6ab22d, 0X7B.74BC6A7E2D, 0x1F9.A];

    // Floating point numbers in hexadecimal form with exponent
    float[] _ = [0x1.a2bp3, 0X1F3Dp3, 0xAB12CDP-3];

    // Decimal values written in common decimal notation
    decimal[] _ = [12.345, -5.678, .5678, 123.456d, 567.8901D, 505d, 505.0d, 12e4, 543e-5, 1.23e3, 1.23e3d];

    // Decimal values written in scientific notation with exponent
    decimal[] _ = [12e4, 543e-5, 1.23e3, 1.23e3d];
}