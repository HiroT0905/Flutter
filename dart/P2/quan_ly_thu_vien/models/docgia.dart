import 'sach.dart';

class DocGia {
  String _maDocGia;
  String _hoTen;
  List<Sach> _danhSachDangMuon = [];

  DocGia(this._maDocGia, this._hoTen);

  //Getters

  String get maDocGia => _maDocGia;
  String get hoTen => _hoTen;
  List<Sach> get danhSachDangMuon => _danhSachDangMuon;

  //Setters
  set maDocGia(String maDocGia) {
    if (maDocGia.isEmpty) {
      _maDocGia = maDocGia;
    }
  }

  set hoTen(String hoTen) {
    if (hoTen.isNotEmpty) {
      _hoTen = hoTen;
    }
  }

  void themSach(Sach sach) => _danhSachDangMuon.add(sach);

  void muonSach(Sach sach) {
    if (sach.trangThaiMuon) {
      print('${sach.tenSach} da co nguoi muon!!');
    } else {
      themSach(sach);
      sach.trangThaiMuon = true;
      print('Muon sach thanh cong');
    }
  }

  void traSach(Sach sach) {
    if (_danhSachDangMuon.contains(sach)) {
      _danhSachDangMuon.remove(sach);
      sach.trangThaiMuon = false;
      print('Tra sach thanh cong');
    } else
      print('Ban khong muon sach nay');
  }
}
