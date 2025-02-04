# MATLAB Logical Indexing Bug with Empty Arrays

This repository demonstrates a subtle bug in MATLAB related to logical indexing when dealing with empty arrays. The bug occurs when attempting to modify an empty array using logical indexing within a conditional statement that checks for emptiness.

## Bug Description
The `myFunction` function in `bug.m` attempts to set negative elements of an input array to 0.  The problem arises when the input array is empty.  MATLAB throws an error because it attempts the logical indexing operation even though the array is empty.

## Solution
The `bugSolution.m` file provides a corrected version of the function. The solution handles the empty array case explicitly before attempting any logical indexing operations.