### ExampleA
```dart
import 'package:string_tokenizer_1/string_tokenizer_1.dart';

final input = "package:string_tokenizer/...";
final objkt = StringTokenizer(input, delimiters: [':']);
final token = objkt.nextToken();
print(token); //  'package'
```
### ExampleB
```dart
import 'package:string_tokenizer_1/string_tokenizer_1.dart';

final input = "CS116\tComputing-fundamentals\tMon-Wed\nCS222\tTheory of Algorithms\tSun-Tue";
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
print('@Names: $names'); //  ["Computing-Fundamentals", "Theory of Algorithms"]
print('@Days: $days'); //  ["Mon-Wed", "Sun-Tue"]
```
### ExampleC
```dart
import 'package:string_tokenizer_1/string_tokenizer_1.dart';
final input1 =
      "hello   I'm under the water please help here too much raining";
  final objkt1 = StringTokenizer(input1);
  List<String> tokens_input1 = objkt1.tokenizeAll();

  tokens_input1.forEach((element) {
    print(element); 
  });
  List<String> tokens = objkt.tokenizeAll();
  tokens.forEach((element) {
    print(element);
  });
  // tokens_input1: ["hello", "I'm", "under", ... ]
```
