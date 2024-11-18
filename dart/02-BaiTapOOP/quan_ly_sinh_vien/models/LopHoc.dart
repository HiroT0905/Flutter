import 'SinhVien.dart';

class Lophoc {
  String _tenLop;

  List<Sinhvien> _danhSachSinhVien = [];

  Lophoc(this._tenLop);

  //Getters
  String get tenLop => _tenLop;
  List<Sinhvien> get danhSachSinhVien => _danhSachSinhVien;

  //Setters
  set tenLop(String tenLop) {
    if (tenLop.isNotEmpty) {
      _tenLop = tenLop;
    }
  }

  //Them Sinh Vien
  void themSinhVien(Sinhvien sv) => _danhSachSinhVien.add(sv);

  void hienThiDanhSachSinhVien() {
    print('\n-----------------------------------');
    print('\n-----------------------------------');
    print('Danh sach sinh vien lop: ${_tenLop}');
    print('\n---------------------------');
    for (var sv in _danhSachSinhVien) {
      print('\n');
      sv.printInfo();
      print('Xep loai: ${sv.xepLoaiSinhVien()}');
    }
  }
}
