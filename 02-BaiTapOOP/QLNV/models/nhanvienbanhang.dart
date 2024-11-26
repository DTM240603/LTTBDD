import 'nhanvien.dart';

class NhanVienBanHang extends NhanVien {
  double _doanhSo;
  double _hoaHong;

  // Constructor
  NhanVienBanHang(
      String maNV, String hoTen, double lcb, this._doanhSo, this._hoaHong)
      : super(maNV, hoTen, lcb);

  double get doanhSo => _doanhSo;
  double get hoaHong => _hoaHong;

  set doanhSo(double ds) {
    if (ds >= 0) {
      _doanhSo = ds;
    }
  }

  set hoaHong(double hh) {
    if (hh >= 0 && hh <= 1) {
      _hoaHong = hh;
    }
  }

  @override
  double tinhLuong() {
    return lcb + (doanhSo * hoaHong);
  }

  @override
  void output() {
    super.output();
    print(" - $doanhSo - $hoaHong");
  }
}
