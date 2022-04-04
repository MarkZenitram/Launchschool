# PEDAC Problem Solving

## P: Understanding the **Problem**
- Establish rules and define the boundaries of the problem
- Explicit requirements
- Implicit requirements

### Example
Given a string, produce a new string with every other word removed
- Explicit requirements
  - Input: string
  - Output: new string
  - Remove every other string from input string
- Questions:
  - What is meant by every other word?
  - What constitutes a word?

### Example 2: Sum Even Number Rows

Imagine a sequence of consecutive even integers beginning with 2. The integers are grouped in rows, with the first row containing one integeter, the second row two integers, the third row three integers, and so on. Given an integer representing the number of a particular row, return an integer representing the sum of all the integers in that row.

What do you know?
  - Sequence of integers
  - Sequence begins with 2
  - Integers are consecutive and EVEN
  - Sequence is grouped into rows
  - Each row is incrementally larger than the last

Explicit requirements:
- Given a row number return an integer representing the sum of all integers in that row
  - Row number would correspond to the total number of elements in that row (Row 11 = 11 integers within the row)
- Integers are consecutive EVEN integers
  
Input: a single integer (x)
  - Corresponds to a row with x number of integers within that row
    - For instance, row 3 would contain 3 consecutive integers 
  - Row one must begin with the integer 2
   
Output: a single integer
  - The sum of all integers within row x (input integer)

Sequence example:
2, 4, 6, 8, 10, 12, 14, 16, 18 ...

1) 2
2) 4, 6 ---> 10
3) 8, 10, 12 ---> 30
4) 14, 16, 18, 20 ---> 68
5) 22, 24, 26, 28, 30 ---> 

## E: Examples and Test Cases

- Can confirm or refute assumptions
- Help to answer questions about implicit requirements
- Act as asertions which help to codify the rules and boundaries

Examples:
- row 1 -> sum is 2
- row 2 -> sum is 10
- row 4 -> sum is 68

## D: Data Structures

- Help reason with data logically
- Help interact with data at implementation level
- Rows of arrays
  - [2]
  - [4, 6]
  - [8, 10, 12]
  - [14, 16, 18, 20]
  - ...................

## A: Algorithms

- Logical sequence of steps to accomplish a task
- Stay abstract / high level
  - Avoid implementation detail

1. Create an empty rows array to contain all of the rows
2. Create a row array and add it to the rows array
   1. 
3. Repeat step 2 until all the necessary rows have been added
4. Sum the integers in the final row
5. Return the sum