import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hipstermeet/domain/core/value/value_validators.dart';
import 'package:hipstermeet/domain/core/error/errors.dart';
import 'package:hipstermeet/domain/core/error/failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  T getOrDefaultValue(T defaultValue) {
    return value.fold((f) => defaultValue, id);
  }

  T getValue() => value.fold((f) => f.failedValue, (r) => r);

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateStringNotEmpty(input).flatMap(validateEmailAddress),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password.enterLogin(String input) {
    return Password._(validateStringNotEmpty(input));
  }

  const Password._(this.value);
}

class Token extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Token(String input) {
    return Token._(validateStringNotEmpty(input));
  }

  const Token._(this.value);
}
