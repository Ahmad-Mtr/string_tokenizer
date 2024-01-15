// TODO: Put public facing types in this file.

/// A String Tokenizer can be used to split multiple Strings based on delimters into smaller chunks called Tokens, `input` is your input String, `delimeters` are the splitting rules that you add, they have a default value, but they can be changed based on your preference. It has 2 public methods:
/// 1. `hasMoreTokens()` which returns true if there are more tokens available, or false if there aren't left.
/// 2. `nextToken()` which returns the next available token as a String.
class StringTokenizer {
  final String input;
  final List<String> delimiters;
  int _position = 0;

  StringTokenizer(this.input, {this.delimiters = const [" ", "\t", "\n"]});

  /// checks for Available Tokens.
  bool hasMoreTokens() => _position < input.length;

  /// Gets the next Available Token.
  String nextToken() {
    /// skip 1st delims, Example String: '\t hello world'
    while (_position < input.length && delimiters.contains(input[_position])) {
      _position++;
    }

    if (_position == input.length) {
      return '';
      //throw StateError("No more tokens available");
    }

    /// find Token's end position
    int end = _position + 1;
    while (end < input.length && !delimiters.contains(input[end])) {
      end++;
    }

    /// geting that Token
    String token = input.substring(_position, end);

    /// Set position = end
    _position = end;

    return token;
  }

  /// Tokenize all Input String.
  List<String> tokenizeAll() {
    List<String> tokens = [];
    while (hasMoreTokens()) {
      tokens.add(nextToken());
    }
    return tokens;
  }
}
