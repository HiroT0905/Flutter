class Sinhvien {
  String _hoTen;
  int _tuoi;
  String _maSV;
  double _diemTB = 0;

  //contructor
  Sinhvien(this._hoTen, this._tuoi, this._maSV, this._diemTB);

  //Getters

  String get hoTen => _hoTen;
  int get tuoi => _tuoi;
  String get maSV => _maSV;
  double get diemTB => _diemTB;

  set hoTen(String hoTen) {
    if (hoTen.isNotEmpty) {
      _hoTen = hoTen;
    }
  }

  set tuoi(int tuoi) {
    // if (tuoi > 0) {
    //   _tuoi = tuoi;
    // }
    _tuoi = (tuoi > 0) ? tuoi : _tuoi;
  }

  set maSV(String maSV) {
    if (maSV.isNotEmpty) {
      _maSV = maSV;
    }
  }

  set diemTB(double diemTB) {
    if (diemTB >= 0 && diemTB <= 10) {
      _diemTB = diemTB;
    }
  }

  void printInfo() {
    print('Name: $_hoTen');
    print('Tuoi: $_tuoi');
    print('MaSV: $_maSV');
    print('DiemTB: $_diemTB');
  }

  String xepLoaiSinhVien() {
    if (_diemTB >= 8.0) return 'Gioi';
    if (_diemTB >= 6.5) return 'Kha';
    if (_diemTB >= 5.0) return 'Trung binh';
    return 'Yeu';
  }
}

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
