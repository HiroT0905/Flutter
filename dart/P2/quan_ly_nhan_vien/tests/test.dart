import '../models/nhanvien.dart';
import '../models/nhanvienbanhang.dart';

void main() {
  var nv = Nhanvien("NV001", "Nguyen Van A", 5000000);
  print("Thong tin nhan vien thuong");
  nv.hienThiThongTin();

  var nvBH =
      NhanVienBanHang("NVBH001", "Nguyen Zan B", 70000000, 1000000000, 0.02);
  print("Thong tin nhan vien ban hang \n");
  nvBH.hienThiThongTin();

  nvBH.doanhSo = 150000000;
  print("\nSau khi tang doanh so: ");
  nvBH.hienThiThongTin();

  List<Nhanvien> danhSachNV = [nv, nvBH];
  print("\nHienthi danh sach nhan vien:\n ");
  for (var nhanVien in danhSachNV) {
    nhanVien.hienThiThongTin();
    print("");
  }
}
