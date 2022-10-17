// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

// {
//     "RxHeader": {
//         "Statuses": [
//             {
//                 "Code": "DefaultStatus",
//                 "Type": "Success",
//                 "Message": "Request Processed Successfully",
//                 "ietf": "https://datatracker.ietf.org/doc/html/rfc7231#section-6.3.1"
//             }
//         ]
//     },
//     "Transaction": []
// }

class ApiResponse {
  final RxHeader rxHeader;
  final dynamic transaction;
  ApiResponse({
    required this.rxHeader,
    required this.transaction,
  });

  ApiResponse copyWith({
    RxHeader? rxHeader,
    List<dynamic>? transaction,
  }) {
    return ApiResponse(
      rxHeader: rxHeader ?? this.rxHeader,
      transaction: transaction ?? this.transaction,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'RxHeader': rxHeader.toMap(),
      'Transaction': transaction,
    };
  }

  factory ApiResponse.fromMap(Map<String, dynamic> map) {
    return ApiResponse(
      rxHeader: RxHeader.fromMap(map['RxHeader'] as Map<String, dynamic>),
      transaction: map['Transaction'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ApiResponse.fromJson(String source) =>
      ApiResponse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'ApiResponse(rxHeader: $rxHeader, transaction: $transaction)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ApiResponse &&
        other.rxHeader == rxHeader &&
        listEquals(other.transaction, transaction);
  }

  @override
  int get hashCode => rxHeader.hashCode ^ transaction.hashCode;
}

class RxHeader {
  final List<Status> statuses;

  RxHeader({
    required this.statuses,
  });

  RxHeader copyWith({
    List<Status>? statuses,
  }) {
    return RxHeader(
      statuses: statuses ?? this.statuses,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Statuses': statuses.map((x) => x.toMap()).toList(),
    };
  }

  factory RxHeader.fromMap(Map<String, dynamic> map) {
    return RxHeader(
      statuses: List<Status>.from(
        (map['Statuses'] as List<dynamic>).map<Status>(
          (x) => Status.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory RxHeader.fromJson(String source) =>
      RxHeader.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'RxHeader(statuses: $statuses)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RxHeader && listEquals(other.statuses, statuses);
  }

  @override
  int get hashCode => statuses.hashCode;
}

class Status {
  final String code;
  final String type;
  final String message;
  final String? ietf;

  Status({
    required this.code,
    required this.type,
    required this.message,
    required this.ietf,
  });

  Status copyWith({
    String? code,
    String? type,
    String? message,
    String? ietf,
  }) {
    return Status(
      code: code ?? this.code,
      type: type ?? this.type,
      message: message ?? this.message,
      ietf: ietf ?? this.ietf,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Code': code,
      'Type': type,
      'Message': message,
      'ietf': ietf,
    };
  }

  factory Status.fromMap(Map<String, dynamic> map) {
    return Status(
      code: map['Code'] as String,
      type: map['Type'] as String,
      message: map['Message'] as String,
      ietf: map['ietf'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory Status.fromJson(String source) =>
      Status.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Status(code: $code, type: $type, message: $message, ietf: $ietf)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Status &&
        other.code == code &&
        other.type == type &&
        other.message == message &&
        other.ietf == ietf;
  }

  @override
  int get hashCode {
    return code.hashCode ^ type.hashCode ^ message.hashCode ^ ietf.hashCode;
  }
}
