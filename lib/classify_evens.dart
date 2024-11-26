// Classify Evens
//
// বাং
// Problem Statement
// You are a teacher who wants to check how well your students understand the concept of even numbers. You decide to give them a quiz, each asking them to write an even number. You want to write a program that reads the answers of each student and counts how many of them are correct. For this you can assume you have six students.
//
// Input
// Six numbers, each number
// N
// N will be seperated by space.
//
// Output
// Number of students who are currect in a single line.
//
// Constraints
// 1
// ≤
// N
// ≤
// 1000
// 1≤N≤1000
// Example 1:
// Input:
// 1 2 3 4 5 6
// Output:
// 3
// Example 2:
// Input:
// 1 1 1 3 2 8
// Output:
// 2
// Notes:
// In the second example, the only even numbers in the input are 2 and 8. Therefore, the output is 2.


import 'dart:io';

void main() {
  List<String> inputs = stdin.readLineSync()!.split(' ');

  List<int> numbers = inputs.map(int.parse).toList();

  int count = 0;
  for (int num in numbers) {
    if (num % 2 == 0) {
      count++;
    }
  }

  print(count);

}