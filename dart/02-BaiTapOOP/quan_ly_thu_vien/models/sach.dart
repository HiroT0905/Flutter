class Sach {
  String _maSach;
  String _tenSach;
  String _tacGia;
  bool _trangThaiMuon = false;

  Sach(this._maSach, this._tenSach, this._tacGia);

  //Getters
  String get maSach => _maSach;
  String get tenSach => _tenSach;
  String get tacGia => _tacGia;
  bool get trangThaiMuon => _trangThaiMuon;

  //Setters
  set maSach(String maSach) {
    if (maSach.isNotEmpty) {
      _maSach = maSach;
    }
  }

  set tenSach(String tenSach) {
    if (tenSach.isNotEmpty) {
      _tenSach = tenSach;
    }
  }

  set tacGia(String tacGia) {
    if (tacGia.isNotEmpty) {
      _tacGia = tacGia;
    }
  }

  set trangThaiMuon(bool trangThaiMuon) {
    _trangThaiMuon = trangThaiMuon;
  }

  void printInfo() {
    print('MaSach: ${_maSach}');
    print('TenSach: ${_tenSach}');
    print('TacGia: ${_tacGia}');
    if (_trangThaiMuon == true)
      print('Sach da co nguoi muon');
    else
      print('Sach chua co nguoi muon');
  }
}
