# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Caden Anderson and Brolen Gumb

## Summary
This lab explored binary subtraction using a half subtractor as well as
representing subtraction using addition with a negtive number via ones' 
and twos' complement systems. All three methods were implemented in 
Verilog and demonstrated using a Basys3 board.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
While both circuits use an XOR gate to produce the primary resulting bit, whether that's the sum of difference,
the difference between the two is how they handle overflow logic. While the half adder uses an AND gate A & B
to generate a carry, the half subtractor uses a slightly different AND gate of ~A & B to generate a borrow.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
  * One's compliment is difficult due to it requiring a two-step addition process where you initially add the inputs & then
  * adding the carry-out to the LSB (if the carry-out exists). The carry is also difficult to implement due to the circuit
  * requiring an additional step of returning, which slows everything down.
    
### 3 - What is the edge case and problem with Two’s Complement number representation?
  * Two's complement is asymetric due to 0 being represented as a positive number rather than being negative,
  * this creates an overflow issue during subtraction.
