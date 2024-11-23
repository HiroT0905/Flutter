import '../models/CuaHang.dart';
import '../models/DienThoai.dart';
import '../models/HoaDon.dart';

void main() {
  // Khởi tạo cửa hàng
  var cuaHang = CuaHang("Cửa hàng ABC", "123 Đường XYZ");

  // Thêm các điện thoại vào cửa hàng
  var dienThoai1 =
      DienThoai("DT-001", "iPhone 15", "Apple", 20000000, 30000000, 50, true);
  var dienThoai2 = DienThoai(
      "DT-002", "Galaxy S23", "Samsung", 15000000, 25000000, 30, true);

  cuaHang.themDienthoai(dienThoai1);
  cuaHang.themDienthoai(dienThoai2);

  print("Danh sách điện thoại ban đầu:");
  cuaHang.hienThiDanhSachDienThoai();

  // Kiểm thử: Cập nhật thông tin điện thoại
  print("\nCập nhật thông tin cho điện thoại mã 'DT-001':");
  cuaHang.capNhatThongTinDienThoai(
      "DT-001", "iPhone 15 Pro", "Apple", 21000000, 32000000, 40, true);
  cuaHang.hienThiDanhSachDienThoai();

  // Kiểm thử: Ngừng kinh doanh điện thoại
  print("\nNgừng kinh doanh điện thoại mã 'DT-002':");
  cuaHang.ngungKinhDoanhDienThoai("DT-002");
  cuaHang.hienThiDanhSachDienThoai();

  // Kiểm thử: Tạo hóa đơn mới
  print("\nTạo hóa đơn mới cho iPhone 15 Pro (mã 'DT-001'):");
  var hoaDon1 = HoaDon(
    "HD-001",
    DateTime.now(),
    dienThoai1,
    5,
    31000000,
    "Nguyễn Văn A",
    "0987654321",
  );
  cuaHang.taoHoaDon(hoaDon1);

  print("\nDanh sách hóa đơn:");
  cuaHang.hienThiDanhSachHoaDon();

  // Kiểm thử: Tạo hóa đơn với số lượng vượt quá tồn kho
  print("\nThử tạo hóa đơn với số lượng vượt quá tồn kho:");
  try {
    var hoaDon2 = HoaDon(
      "HD-002",
      DateTime.now(),
      dienThoai1,
      50, // Số lượng vượt quá tồn kho hiện tại
      31000000,
      "Nguyễn Văn B",
      "0123456789",
    );
    cuaHang.taoHoaDon(hoaDon2);
  } catch (e) {
    print("Lỗi: $e");
  }

  // Kiểm thử: Ngừng kinh doanh và tạo hóa đơn
  print("\nThử tạo hóa đơn cho điện thoại ngừng kinh doanh (mã 'DT-002'):");
  try {
    var hoaDon3 = HoaDon(
      "HD-003",
      DateTime.now(),
      dienThoai2,
      5,
      24000000,
      "Nguyễn Văn C",
      "0123456789",
    );
    cuaHang.taoHoaDon(hoaDon3);
  } catch (e) {
    print("Lỗi: $e");
  }
}
