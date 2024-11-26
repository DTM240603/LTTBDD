import 'dienthoai.dart';
import 'hoadon.dart';

class CuaHang {
  String _tenCuaHang;
  String _diaChi;
  List<DienThoai> _dsDienThoai = [];
  List<HoaDon> _dsHoaDon = [];

  // Constructor
  CuaHang(this._tenCuaHang, this._diaChi);

  // Getter, Setter
  String get tenCuaHang => _tenCuaHang;
  String get diaChi => _diaChi;
  List<DienThoai> get dsDienThoai => _dsDienThoai;
  List<HoaDon> get dsHoaDon => _dsHoaDon;

  set tenCuaHang(String ten) {
    if (ten.isNotEmpty) {
      _tenCuaHang = ten;
    }
  }

  set diaChi(String dc) {
    if (dc.isNotEmpty) {
      _diaChi = dc;
    }
  }

  // Thêm điện thoại mới
  void themDienThoai(DienThoai dt) {
    _dsDienThoai.add(dt);
  }

  // Hiển thị danh sách điện thoại
  void hienThiDanhSachDienThoai() {
    print("--- Danh sách điện thoại ---");
    for (var dt in _dsDienThoai) {
      dt.output();
    }
  }

  // Cập nhật thông tin điện thoại
  void capNhatDienThoai(String ma,
      {String? ten,
      String? hang,
      double? giaNhap,
      double? giaBan,
      int? slTon,
      bool? trangThai}) {
    for (var dt in _dsDienThoai) {
      if (dt.maDT == ma) {
        if (ten != null) dt.tenDT = ten;
        if (hang != null) dt.hangSX = hang;
        if (giaNhap != null) dt.giaNhap = giaNhap;
        if (giaBan != null) dt.giaBan = giaBan;
        if (slTon != null) dt.slTon = slTon;
        if (trangThai != null) dt.trangThai = trangThai;
        print("Cập nhật thành công!");
        return;
      }
    }
    print("Không tìm thấy điện thoại với mã: $ma");
  }

  // Thêm hóa đơn
  void taoHoaDon(HoaDon hd) {
    if (hd.slMua <= hd.dt.slTon) {
      _dsHoaDon.add(hd);
      hd.dt.slTon -= hd.slMua;
      print("Hóa đơn được thêm thành công!");
    } else {
      print("Số lượng mua vượt quá tồn kho!");
    }
  }

  // Hiển thị danh sách hóa đơn
  void hienThiDanhSachHoaDon() {
    print("--- Danh sách hóa đơn ---");
    for (var hd in _dsHoaDon) {
      hd.output();
    }
  }

  // Tính tổng doanh thu
  double tinhDoanhThu() {
    return _dsHoaDon.fold(0, (sum, hd) => sum + hd.tongTien());
  }

  // Tính tổng lợi nhuận
  double tinhLoiNhuan() {
    return _dsHoaDon.fold(0, (sum, hd) => sum + hd.tinhLoiNhuanThucTe());
  }
}
