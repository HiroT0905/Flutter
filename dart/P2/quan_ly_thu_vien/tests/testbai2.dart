import '../models/docgia.dart';
import '../models/sach.dart';
import '../models/thuvien.dart';

void main() {
  var thuVien = Thuvien();

  var sach1 = Sach('MS001', 'Lap trinh Dart', 'Tin');
  var sach2 = Sach('MS002', 'Lap trinh Flutter', 'Son');
  thuVien.themSach(sach1);
  thuVien.themSach(sach2);

  thuVien.inDanhSachSach();

  var docGia1 = DocGia("DG001", "Phuc");
  thuVien.themDocGia(docGia1);

  docGia1.muonSach(sach1);
  docGia1.muonSach(sach2);

  thuVien.inDanhSachSach();
  thuVien.inDanhSachDocGia();

  docGia1.traSach(sach1);

  thuVien.inDanhSachSach();
  thuVien.inDanhSachDocGia();
}
