# COBOL Array Index Out of Bounds Bug
This repository contains a simple COBOL program that demonstrates an array index out of bounds error.  The program declares an array with a fixed size but attempts to access an element beyond that size. This can lead to unpredictable behavior or program crashes.

## Bug Description
The `bug.cob` file contains a COBOL program with an array named `WS-TABLE`. The program iterates through the array and attempts to assign a value to each element.  However, the loop continues past the declared bounds of the array, causing an index out of bounds error. This is a classic example of a common error in COBOL programming where insufficient error handling and boundary checks can lead to runtime exceptions.

## Solution
The `bugSolution.cob` file presents a corrected version of the program that addresses the index out of bounds issue.  The corrected version adds a check to ensure the loop index remains within the valid range of the array before accessing each element. 

## How to reproduce the bug
1. Compile `bug.cob` using a COBOL compiler.
2. Run the compiled program.
3. Observe the error or unexpected behavior. 

## How to fix the bug
1. Replace `bug.cob` with `bugSolution.cob`
2. Recompile and run the program.