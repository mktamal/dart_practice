import 'dart:io';

void main() {
  /*Write a program that reads 10 strings, one string per line.
  Your task is to count how many of these 10 strings contain the character 'T'.*/

  List<String> words = [];
  int wordCount = 10;

  for (int i = 0; i < wordCount; i++) {
    String? word = stdin.readLineSync();

    if (word != null &&
        word.length >= 3 &&
        word.length <= 15 &&
        word == word.toUpperCase()) {
      words.add(word);
    } else {
      i--;
    }
  }

  int t_count = 0;
  for (String word in words) {
    if(word.contains('T')){
      t_count++;
    }
  }

  print(t_count);
}
