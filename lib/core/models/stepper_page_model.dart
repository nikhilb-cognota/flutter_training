// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class StepperCodes {
  static const forwhom = 'PAT';
  static const packages = 'PKG';
  static const address = 'ADD';
  static const centers = 'CNT';
  static const schedule = 'SCH';
  static const payment = 'PAY';
}

class StepperPageModel {
  final String title;
  final String code;
  final Widget page;
  final VoidCallback clearInputs;
  final String? Function() validate;

  StepperPageModel({
    required this.title,
    required this.code,
    required this.page,
    required this.clearInputs,
    required this.validate,
  });

  StepperPageModel copyWith({
    String? title,
    String? code,
    Widget? page,
    VoidCallback? clearInputs,
    String? Function()? validate,
  }) {
    return StepperPageModel(
      title: title ?? this.title,
      code: code ?? this.code,
      page: page ?? this.page,
      clearInputs: clearInputs ?? this.clearInputs,
      validate: validate ?? this.validate,
    );
  }

  @override
  String toString() {
    return 'StepperPageModel(title: $title, code: $code, page: $page, clearInputs: $clearInputs, validate: $validate)';
  }

  @override
  bool operator ==(covariant StepperPageModel other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.code == code &&
        other.page == page &&
        other.clearInputs == clearInputs &&
        other.validate == validate;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        code.hashCode ^
        page.hashCode ^
        clearInputs.hashCode ^
        validate.hashCode;
  }
}
