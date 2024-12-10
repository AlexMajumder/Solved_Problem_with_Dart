// Frequency Analysis
//
// বাং
// Problem Statement
// Write a program that reads number of
// N
// N integers and prints the frequency of each number that appears in the input. The numbers should be sorted in ascending order by their frequency. If the frequency is same then sort it as they appear in the input. For example if 5 comes before 3 then 5 will print first.
//
// Input
// First line contains a single integer
// N
// N number of total integars that will be given next. Next line will contain
// N
// N integers separated by a space.
//
// Output
// First line of output should be a single integer
// T
// T denotes the number of uinque intergers. Next
// T
// T lines, each line should contains a pair
// A
// i
// Ai denotes the integer and
// B
// i
// Bi denotes the number of time it appears.
// A
// i
// Ai and
// B
// i
// Bi should be separeted by a space.
//
// Constraints
// 1
// ≤
// N
// ≤
// 100
// 1≤N≤100
// 1
// ≤
// N
// i
// ≤
// 100
// 1≤Ni≤100
// Example 1:
// Input:
// 15
// 5 2 2 3 3 3 4 4 4 4 1 1 1 1 1
// Output:
// 5
// 5 1
// 2 2
// 3 3
// 4 4
// 1 5
// Example 2:
// Input:
// 16
// 1 1 1 2 2 2 3 3 3 4 4 4 4 5 5 5
// Output:
// 5
// 1 3
// 2 3
// 3 3
// 5 3
// 4 4
// Notes:
// In second example, in the input 1, 2, 3, and 5 appear 3 times, and 4 appears 4 times. The output also shows the order of the numbers in the input.


import 'dart:io';

void main() {

  try {
    int n = int.parse(stdin.readLineSync()!);

    List<int> numbers = stdin
        .readLineSync()!
        .trim()
        .split(RegExp(r'\s+'))
        .map(int.parse)
        .toList();

    Map<int, int> frequencyMap = {};
    for (var number in numbers) {
      frequencyMap[number] = (frequencyMap[number] ?? 0) + 1;
    }

    List<MapEntry<int, int>> sortedEntries = frequencyMap.entries.toList();
    sortedEntries.sort((a, b) {
      int freqComparison = a.value.compareTo(b.value);
      if (freqComparison != 0) {
        return freqComparison;
      } else {
        return numbers.indexOf(a.key).compareTo(numbers.indexOf(b.key));
      }
    });

    print(sortedEntries.length);
    for (var entry in sortedEntries) {
      print('${entry.key} ${entry.value}');
    }
  }catch (e) {
    print("Error: Invalid input. Please ensure you provide integers only.");
  }



}