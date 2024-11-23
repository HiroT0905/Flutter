class DienThoai {
  String _maDT;
  String _tenDT;
  String _hangSX;
  double _giaNhap;
  double _giaBan;
  int _soLuongTon;
  bool _trangThai;

  DienThoai(this._maDT, this._tenDT, this._hangSX, this._giaNhap, this._giaBan,
      this._soLuongTon, this._trangThai);

  //Getters
  String get maDT => _maDT;
  String get tenDT => _tenDT;
  String get hangSX => _hangSX;
  double get giaNhap => _giaNhap;
  double get giaBan => _giaBan;
  int get soLuongTon => _soLuongTon;
  bool get trangThai => _trangThai;

  //Setters

  set maDT(String value) {
    if (!RegExp(r'^DT-\d{3}$').hasMatch(value)) {
      throw FormatException(
          'Mã điện thoại không hợp lệ. Định dạng phải là DT-XXX');
    }
    _maDT = value;
  }

  set tenDT(String tenDT) {
    if (tenDT.isNotEmpty) {
      _tenDT = tenDT;
    }
  }

  set hangSX(String hangSX) {
    if (hangSX.isNotEmpty) {
      _hangSX = hangSX;
    }
  }

  set giaNhap(double giaNhap) {
    if (giaNhap > 0 && giaNhap < _giaBan) {
      _giaNhap = giaNhap;
    }
  }

  set giaBan(double giaBan) {
    if (giaBan > 0 && giaBan > _giaNhap) {
      _giaBan = giaBan;
    }
  }

  set soLuongTon(int soLuongTon) {
    if (soLuongTon >= 0) {
      _soLuongTon = soLuongTon;
    }
  }

  set trangThai(bool trangThai) {
    _trangThai = trangThai;
  }

  //Loi nhuan du kien
  double loiNhuanDuKien() => _giaNhap - _giaBan;

  //Hien thi thong tin
  void hienThiThongTin() {
    print("---------------------");
    print("Ma dien thoai: ${_maDT}");
    print("Ten dien thoai: ${_tenDT}");
    print("Hang san xuat: ${_hangSX}");
    print("Gia nhap: ${_giaNhap}");
    print("Gia ban: ${_giaBan}");
    print("So luong ton: ${_soLuongTon}");

    if (_trangThai == true)
      print("Dang kinh doanh");
    else
      print("Khong con kinh doanh");
  }

  //Kiem tra co the ban hay khong

  bool kiemTraCoTheBan() => _soLuongTon > 0 && _trangThai;
}
