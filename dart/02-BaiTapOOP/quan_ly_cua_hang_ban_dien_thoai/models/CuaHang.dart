import 'DienThoai.dart';
import 'HoaDon.dart';

class CuaHang {
  String _tenCuaHang;
  String _diaChi;
  List<DienThoai> _danhSachDienThoai = [];
  List<HoaDon> _danhSachHoaDon = [];

  CuaHang(this._tenCuaHang, this._diaChi);

  //Getters
  String get tenCuaHang => _tenCuaHang;
  String get diaChi => _diaChi;

  //Setters
  set tenCuaHang(String value) {
    _tenCuaHang = value;
  }

  set diaChi(String value) {
    _diaChi = value;
  }

  //Quản lý điện thoại
  void themDienthoai(DienThoai dt) => _danhSachDienThoai.add(dt);

  void capNhatThongTinDienThoai(
      String maDT,
      String tenMoi,
      String hangMoi,
      double giaNhapMoi,
      double giaBanMoi,
      int soLuongTonMoi,
      bool trangThaiMoi) {
    for (var dt in _danhSachDienThoai) {
      if (dt.maDT == maDT) {
        dt.tenDT = tenMoi;
        dt.hangSX = hangMoi;
        dt.giaNhap = giaNhapMoi;
        dt.giaBan = giaBanMoi;
        dt.soLuongTon = soLuongTonMoi;
        dt.trangThai = trangThaiMoi;
        print("Thông tin điện thoại đã được cập nhật.");
        return;
      }
    }
    print("Không tìm thấy điện thoại có mã: $maDT.");
  }

  void ngungKinhDoanhDienThoai(String maDT) {
    for (var dt in _danhSachDienThoai) {
      if (dt.maDT == maDT) {
        dt.trangThai = false;
        print("Điện thoại mã $maDT đã ngừng kinh doanh.");
        return;
      }
    }
    print("Không tìm thấy điện thoại có mã: $maDT");
  }

  void hienThiDanhSachDienThoai() {
    for (var dt in _danhSachDienThoai) {
      dt.hienThiThongTin();
    }
  }

  //Quản lý hóa đơn
  void taoHoaDon(HoaDon hd) {
    if (hd.dienThoaiDuocBan.kiemTraCoTheBan() &&
        hd.soLuongMua <= hd.dienThoaiDuocBan.soLuongTon) {
      _danhSachHoaDon.add(hd);
      hd.dienThoaiDuocBan.soLuongTon -= hd.soLuongMua; // Cập nhật tồn kho
    } else {
      throw Exception(
          "Không thể tạo hóa đơn. Kiểm tra tồn kho hoặc trạng thái kinh doanh.");
    }
  }

  void hienThiDanhSachHoaDon() {
    for (var hd in _danhSachHoaDon) {
      hd.hienThiThongTinHoaDon();
    }
  }
}
