import 'DienThoai.dart';

class HoaDon {
  String _maHD;
  DateTime _ngayBan;
  DienThoai _dienThoaiDuocBan;
  int _soLuongMua;
  double _giaBanThucTe;
  String _tenKhachHang;
  String _soDienThoaiKhach;

  HoaDon(this._maHD, this._ngayBan, this._dienThoaiDuocBan, this._soLuongMua,
      this._giaBanThucTe, this._tenKhachHang, this._soDienThoaiKhach);

  //Getters
  String get maHD => _maHD;
  DateTime get ngayBan => _ngayBan;
  DienThoai get dienThoaiDuocBan => _dienThoaiDuocBan;
  int get soLuongMua => _soLuongMua;
  double get giaBanThucTe => _giaBanThucTe;
  String get tenKhachHang => _tenKhachHang;
  String get soDienThoaiKhach => _soDienThoaiKhach;

  //Setters
  set maHD(String maHD) {
    if (maHD.isNotEmpty && !maHD.startsWith('HD-')) {
      throw FormatException(
          'Mã hóa đơn không hợp lệ. Định dạng phải là DT-XXX và không được trống!!!');
    }
    _maHD = maHD;
  }

  set ngayBan(DateTime ngayBan) {
    if (ngayBan.isAfter(DateTime.now())) {
      throw FormatException('Ngày bán không sau ngày hiện tại');
    }
    _ngayBan = ngayBan;
  }

  set soLuongMua(int soLuongMua) {
    if (soLuongMua <= 0 || soLuongMua > dienThoaiDuocBan.soLuongTon) {
      throw ArgumentError("Số lượng mua phải > 0 và <= tồn kho.");
    }
    _soLuongMua = soLuongMua;
  }

  set giaBanThucTe(double giaBanThucTe) {
    if (giaBanThucTe < 0) {
      throw ArgumentError('Giá bạn thực tế > 0 ');
    }
    _giaBanThucTe = giaBanThucTe;
  }

  set tenKhachHang(String tenKhachHang) {
    if (!tenKhachHang.isEmpty) {
      _tenKhachHang = tenKhachHang;
    }
  }

  set soDienThoaiKhach(String sdt) {
    if (RegExp(r'^\d{11}$').hasMatch(sdt) && sdt.isNotEmpty) {
      _soDienThoaiKhach = sdt;
    }
  }

  double tinhLoiNhuanThucTe() =>
      _soLuongMua * (_giaBanThucTe - _dienThoaiDuocBan.giaNhap);

  double tinhTongTien() => _soLuongMua * _giaBanThucTe;

  void hienThiThongTinHoaDon() {
    print(
        "Mã hóa đơn: $_maHD, Ngày bán: $_ngayBan, Khách hàng: $_tenKhachHang, Tổng tiền: ${tinhTongTien()}");
  }
}
