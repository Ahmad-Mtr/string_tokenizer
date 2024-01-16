import 'package:string_tokenizer_1/string_tokenizer_1.dart';

void exampleA() {
  final input = "package:string_tokenizer/...";
  final objkt = StringTokenizer(input, delimiters: [':']);
  final token = objkt.nextToken();
  print(token); //  'package'
}

void exampleB() {
  final input =
      "CS116\tComputing-fundamentals\tMon-Wed\nCS222\tTheory of Algorithms\tSun-Tue";
  final objkt = StringTokenizer(input, delimiters: ['\t', '\n']);
  final codes = [];
  final names = [];
  final days = [];
  for (var i = 0; objkt.hasMoreTokens(); i += 3) {
    var nextToken = objkt.nextToken();
    int val = i % 3;
    switch (val) {
      case 0:
        codes.add(nextToken);
        i++;
        break;
      case 1:
        names.add(nextToken);
        i++;
        break;
      case 2:
        days.add(nextToken);
        i++;
        break;
    }
  }
  print('@Codes: $codes'); //  ["CS116", "CS222"]
  print(
      '@Names: $names'); //  ["Computing-Fundamentals", "Theory of Algorithms"]
  print('@Days: $days'); //  ["Mon-Wed", "Sun-Tue"]
}

void exampleC() {
  final input = "hello   I'm under the water please help here too much raining";
  final objkt = StringTokenizer(input);
  List<String> tokens = objkt.tokenizeAll();

  for (var element in tokens) {
    print(element);
  }
  // tokens: ["hello", "I'm", "under", ... ]
}

void main(List<String> args) {
  exampleA();
  exampleB();
  exampleC();
}
