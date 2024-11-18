import 'docgia.dart';
import 'sach.dart';

class Thuvien {
  List<Sach> _danhSachSach = [];
  List<DocGia> _danhSachDocGia = [];

  List<Sach> get danhSachSach => _danhSachSach;
  List<DocGia> get danhSachDocGia => _danhSachDocGia;

  void themSach(Sach sach) {
    _danhSachSach.add(sach);
    print("Them sach thanh cong\n");
  }

  void themDocGia(DocGia docgia) {
    _danhSachDocGia.add(docgia);
    print("Them doc gia thanh cong\n");
  }

  void inDanhSachSach() {
    print("-------------Danh sach sach-----------------");
    for (var sach in _danhSachSach) {
      print('\n');
      sach.printInfo();
    }
    print("---------------------------------------------");
  }

  void inDanhSachDocGia() {
    print("Danh sách độc giả:");
    for (var docGia in _danhSachDocGia) {
      print("Mã độc giả: ${docGia.maDocGia}");
      print("Họ tên: ${docGia.hoTen}");
      print("Sách đang mượn:");
      for (var sach in docGia.danhSachDangMuon) {
        print("- ${sach.tenSach}");
      }
      print("-------------------");
    }
  }
}
