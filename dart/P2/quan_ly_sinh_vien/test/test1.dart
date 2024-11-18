import '../models/SinhVien.dart';

void main() {
  var sv = Sinhvien('Duong Nguyen Chi Tin', 20, '2180608099', 10);
  print('Test getter: ${sv.hoTen}');
  sv.hoTen = 'Nguyen Van B';
  print('Sau khi Test: ${sv.hoTen}');
  print('Xep loai: ${sv.xepLoaiSinhVien()}');

  var lop = Lophoc('21DTHD5');
  lop.themSinhVien(Sinhvien('Nguyen Van A', 21, 'Sv001', 8.5));
  lop.themSinhVien(Sinhvien('Nguyen Van B', 21, 'Sv002', 6.0));
  lop.themSinhVien(Sinhvien('Nguyen Van C', 21, 'Sv003', 5.0));
  lop.themSinhVien(Sinhvien('Nguyen Van D', 21, 'Sv004', 8.0));
  lop.hienThiDanhSachSinhVien();
}
