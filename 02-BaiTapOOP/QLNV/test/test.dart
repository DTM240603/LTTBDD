import '../models/nhanvien.dart';
import '../models/nhanvienbanhang.dart';

void main() {
  var nv = NhanVien("NV01", "Nguyễn văn A", 5000000);
  nv.output();

  var nv_BH = NhanVienBanHang("NV01", "Nguyễn văn A", 5000000, 8000000, 0.8);
  nv_BH.output();
}
