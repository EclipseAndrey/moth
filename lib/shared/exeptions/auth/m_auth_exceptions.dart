class MAuthException {
  final String message;

  const MAuthException(this.message);
  factory MAuthException.errorCredentials() => const MAuthException('error_credentials');
  factory MAuthException.unknown() => const MAuthException('unknown_error');

  @override
  String toString() {
    return message;
  }
}
