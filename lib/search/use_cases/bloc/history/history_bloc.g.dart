// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryStateInitail _$_$HistoryStateInitailFromJson(
    Map<String, dynamic> json) {
  return _$HistoryStateInitail();
}

Map<String, dynamic> _$_$HistoryStateInitailToJson(
        _$HistoryStateInitail instance) =>
    <String, dynamic>{};

_$HistoryStateTermsFiltered _$_$HistoryStateTermsFilteredFromJson(
    Map<String, dynamic> json) {
  return _$HistoryStateTermsFiltered(
    term: json['term'] as String,
    history:
        (json['history'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$HistoryStateTermsFilteredToJson(
        _$HistoryStateTermsFiltered instance) =>
    <String, dynamic>{
      'term': instance.term,
      'history': instance.history,
    };
