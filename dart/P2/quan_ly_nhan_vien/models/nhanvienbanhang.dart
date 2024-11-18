import 'nhanvien.dart';

class NhanVienBanHang extends Nhanvien {
  double _doanhSo;
  double _hoaHong;

  NhanVienBanHang(
      String maNV, String hoTen, double luongCB, this._doanhSo, this._hoaHong)
      : super(maNV, hoTen, luongCB);

  double get doanhSo => _doanhSo;
  double get hoaHong => _hoaHong;

  set doanhSo(double doanhSo) {}

  set hoaHong(double hoaHong) {}

  @override
  double tinhLuong() {
    return luongCB + (_doanhSo * _hoaHong);
  }

  void hienThiThongTin() {
    super.hienThiThongTin();
    print("Doanh so: ${_doanhSo}");
    print("Ti le hoa hong: ${_hoaHong * 100}%");
  }
}
