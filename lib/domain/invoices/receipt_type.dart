import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'receipt_type.freezed.dart';

@freezed
class ReceiptType with _$ReceiptType {
  const factory ReceiptType({
    required String id,
    required int number,
    required String name,
    required int value,
    //  required ReceiptGroup group,
  }) = _ReceiptType;
}

// enum ReceiptGroup {
//   resedents,
//   ampulance,
//   ekg,
//   records,
//   fitness,
//   teeth,
//   changes,
//   ultrasonic,
//   radiation,
//   majoror,
//   minoror,
//   checkups,
// }

// const receiptTypesAR = [
//   'الاقامات',
//   'اسعاف',
//   'رسم قلب',
//   'السجلات',
//   'لياقة طبية',
//   'الاسنان',
//   'الغيارات',
//   'الموجات الصوتية',
//   'الاشعة',
//   'عمليات كبرى',
//   'عمليات صغرى',
//   'الكشف والمقابلة والاقامة',
// ];
