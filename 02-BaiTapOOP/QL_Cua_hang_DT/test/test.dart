import '../models/cuahang.dart';
import '../models/dienthoai.dart';
import '../models/hoadon.dart';

void main() {
  // Tạo cửa hàng
  var cuaHang =
      CuaHang('Cửa hàng Điện thoại ABC', '123 Đường ABC, Thành phố XYZ');

  // Thêm một số điện thoại
  var dt1 =
      DienThoai('DT-001', 'iPhone 14', 'Apple', 20000000, 25000000, 10, true);
  var dt2 =
      DienThoai('DT-002', 'Galaxy S23', 'Samsung', 18000000, 22000000, 5, true);
  cuaHang.themDienThoai(dt1);
  cuaHang.themDienThoai(dt2);

  // Hiển thị danh sách điện thoại
  cuaHang.hienThiDanhSachDienThoai();

  // Tạo hóa đơn
  var hd1 = HoaDon(
      'HD-001', DateTime.now(), dt1, 2, 24500000, 'Nguyễn Văn A', '0912345678');
  var hd2 = HoaDon(
      'HD-002', DateTime.now(), dt2, 1, 21500000, 'Trần Thị B', '0987654321');

  cuaHang.taoHoaDon(hd1);
  cuaHang.taoHoaDon(hd2);

  // Hiển thị danh sách hóa đơn
  cuaHang.hienThiDanhSachHoaDon();

  // Tính toán doanh thu và lợi nhuận
  print("Tổng doanh thu: ${cuaHang.tinhDoanhThu()}");
  print("Tổng lợi nhuận: ${cuaHang.tinhLoiNhuan()}");
}
