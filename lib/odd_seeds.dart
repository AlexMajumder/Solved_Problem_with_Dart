// Odd Seeds
//
// বাং
// Problem Statement
// There are
// N
// N fields numbering
// 1
// ,
// 2
// ,
// .
// .
// .
// N
// 1,2,...N. Each field grow a number of plants equal to their integer values. You are given two fields
// A
// A and
// B
// B, your task is to calculate the total number of plants in all fields that has odd number of plants between Field
// A
// A and Field
// B
// B.
//
// Input
// Two numbers,
// A
// A and
// B
// B will be seperated by space.
//
// Output
// A single integer, the sum of all plants in the fields yielding an odd number of plants between Field
// A
// A and Field
// B
// B.
//
// Constraints
// 1
// ≤
// A
// ,
// B
// ≤
// 1000
// 1≤A,B≤1000
// Example 1:
// Input:
// 1 10
// Output:
// 25
// Example 2:
// Input:
// 10 3
// Output:
// 24
// Notes:
// In second example, the fields with an odd number of plants between field 10 and field 3 are fields 9, 7, 5, 3. The total number of plants in these fields is 9+7+5+3 = 24.


import 'dart:io';

void main() {

  List<String> inputs = stdin.readLineSync()!.split(' ');
  int a = int.parse(inputs[0]);
  int b = int.parse(inputs[1]);

  int start = a < b ? a : b;
  int end = a > b ? a : b;

  int total = 0;
  for (int i = start; i <= end; i++) {
    if (i % 2 != 0) {
      total += i;
    }
  }

  print(total);

}