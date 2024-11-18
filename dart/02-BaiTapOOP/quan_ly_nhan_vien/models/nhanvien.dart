class Nhanvien {
  String _maNV;
  String _hoTen;
  double _luongCB;

  Nhanvien(this._maNV, this._hoTen, this._luongCB);

  String get maNV => _maNV;
  String get hoTen => _hoTen;
  double get luongCB => _luongCB;

  double tinhLUong() {
    return _luongCB;
  }

  void hienThiThongTin() {
    print("Ma nhan vien: ${_maNV}");
    print("Ten nhan vien: ${_hoTen}");
    print("Luong co ban:  ${_luongCB}");
  }
}
