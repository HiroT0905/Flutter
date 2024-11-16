//BaiTap02. dart
//Giai pt bac 2: ax^2+bx+c = 0 ;
import 'dart:io';
import 'dart:math';

void main() {
  print("Giải phương trình bậc 2: ax^2 + bx + c = 0");

  // Nhập hệ số a, b, c
  double a = nhapHeSo("Nhập hệ số a (a ≠ 0): ",
      true); // Nhận giá trị a từ hàm nhập hệ số bên dưới sau khi đã kiểm tra input đầu vào
  double b = nhapHeSo(
      "Nhập hệ số b: "); // Nhận giá trị b từ hàm nhập hệ số bên dưới sau khi đã kiểm tra input đầu vào
  double c = nhapHeSo(
      "Nhập hệ số c: "); // Nhận giá trị b từ hàm nhập hệ số bên dưới sau khi đã kiểm tra input đầu vào

  // Tính delta
  double delta = b * b - 4 * a * c;

  // Giải và in kết quả
  if (delta < 0) {
    print("Phương trình vô nghiệm.");
  } else if (delta == 0) {
    double x = -b / (2 * a);
    print("Phương trình có nghiệm kép: x = $x");
  } else {
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    print("Phương trình có hai nghiệm phân biệt:");
    print("x1 = $x1");
    print("x2 = $x2");
  }
}

//Hàm kiểm tra input
double nhapHeSo(String thongBao, [bool kiemTraA = false]) {
  while (true) {
    stdout.write(thongBao);
    String? input = stdin.readLineSync(); // Đọc dữ liệu từ người dùng
    try {
      double heSo =
          double.parse(input!); // ÉP kiểu dữ liệu từ String sang double
      if (kiemTraA && heSo == 0) {
        print("Hệ số a không được bằng 0. Vui lòng nhập lại!");
        continue;
      }
      return heSo;
    } catch (e) {
      print("Dữ liệu không hợp lệ. Vui lòng nhập số.");
    }
  }
}
