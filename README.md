<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

A more advanced String Tokenizer than the available `split()` method in dart.

## Features

1. Splitting Strings into multiple chunks based on delimeters, and the ability to change those delimeters anytime.
2. Checking if the String has more Tokens, `hasMoreTokens()`.
3. Use every Token for any processing on the go, while still having the non-tokenized part of the Input String with `nextToken()`. 
4. Can Tokenize all Input String similarlly to `split()` method, by using `tokenizeAll()`. 

## Getting started

```bash
dart pub add string_tokenizer
```

## Usage

> Longer examples in `/example` folder. 

```dart
import 'package:string_tokenizer_1/string_tokenizer_1.dart';
```
```dart
  final input2 =
      "package:string_tokenizer/...";
  final objkt2 = StringTokenizer(input2, [':']);

  final res = objkt2.nextToken();
  print(res); // package
```
## Additional information
* All information, source code: [Github Repo](https://github.com/Ahmad-Mtr/string_tokenizer).
* All Contributions are welcome via pull-requests, please make sure to submit cleaner code, with documenting changes or providing a basic info for other users of this Package.
* Issues, suggestions, are all welcome via Github Issues.
> Please note that this package was intended only for a personal project of mine, there's a high chance of not contributing to this package later.