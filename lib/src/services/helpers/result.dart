class Result<T> {
  final T? value;
  final String? errorCode;

  Result.success(this.value) : errorCode = null;
  Result.error(this.errorCode) : value = null;

  bool get isSuccess => errorCode == null;
  bool get isError => errorCode != null;
}
