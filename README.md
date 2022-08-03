# caeser-cipher
A ruby program to emulate the caeser-cipher

How the Cipher works:
- Take a positive number
- Move down each letter in the desired text by that many steps
- Example with the number 3 "a" becomes "x" ("a" > "z" > "y" > "x", 3 steps)

- Run ruby program.
- Call caeser_cipher(initial_string, amount_to_shift).
    - initial_string: The string to by encrypted with the cipher.
    - amount_to_shift: the positive integer value to shift each letter by.