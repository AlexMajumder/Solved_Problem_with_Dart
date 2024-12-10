// Problem Statement
// Write a program that takes a string
// S
// S as input and output the number of unique characters in the string. For example, if the input is
// h
// e
// l
// l
// o
// hello, the output should be 4, since there are 4 unique characters: h, e, l, and o.
//
// Input
// A string
// S
// S in a single line.
//
// Output
// A single integer, the output described above.
//
// Constraints
// 1
// ≤
// ∣
// S
// ∣
// ≤
// 100
// 1≤∣S∣≤100
// Example 1:
// Input:
// hello
// Output:
// 4
// Example 2:
// Input:
// Mississippi
// Output:
// 4
// Notes:
// In second example, there are 4 unique characters: M, i, s, and p.

import 'dart:io';

void main() {
  String input = stdin.readLineSync()!.trim();

  Set<String> uniqueCharacters = {};
  for (var char in input.split('')) {
    uniqueCharacters.add(char);
  }

  print(uniqueCharacters.length);




}