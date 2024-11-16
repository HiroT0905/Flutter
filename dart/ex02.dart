import 'dart:io';

void main() {
  //khai bao bien co ban
  var ten = 'Tin';
  int tuoi = 21;

  // su dung null safety
  String? tenNullable;
  tenNullable = null;

  //su dung bien late
  late String moTa;
  moTa = 'Lap trinh Dart';

  //su dung final va const
  final String quocGia = 'VietNam ';
  const int nam = 2024;

  // in gia tri bien
  print('Ten: $ten');
  print('Tuoi: $tuoi');
  print('Mo ta: $moTa');
  print('Quoc gia: $quocGia');
  print('Nam: $nam');

  //Kiem tra null
  int? soLuong;
  assert(soLuong == null);

  int? soLuong1 = 5;
  assert(soLuong1 == null);
  print('$soLuong1');
}
