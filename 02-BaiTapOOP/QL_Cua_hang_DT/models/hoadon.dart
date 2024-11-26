import 'dienthoai.dart';

class HoaDon {
  String _maHD;
  DateTime _ngayBan;
  DienThoai _dt;
  int _slMua;
  double _giaBanThucTe;
  String _tenKH;
  String _sdt;

  // Constructor
  HoaDon(this._maHD, this._ngayBan, this._dt, this._slMua, this._giaBanThucTe,
      this._tenKH, this._sdt);

  // getter
  String get maHD => _maHD;
  DateTime get ngayBan => _ngayBan;
  DienThoai get dt => _dt;
  int get slMua => _slMua;
  double get giaBanThucTe => _giaBanThucTe;
  String get tenKH => _tenKH;
  String get sdt => _sdt;

  // setter
  set maHD(String ma) {
    if (ma.isNotEmpty && RegExp(r'^HD-\d{3}$').hasMatch(ma)) {
      _maHD = ma;
    }
  }

  set ngayBan(DateTime ngay) {
    if (ngay.isBefore(DateTime.now())) {
      _ngayBan = ngay;
    }
  }

  set slMua(int value) {
    if (value > 0 && value <= _dt.slTon) {
      _slMua = value;
    }
  }

  set giaBanThucTe(double value) {
    if (value > 0) {
      _giaBanThucTe = value;
    }
  }

  set tenKH(String value) {
    if (value.isNotEmpty) {
      _tenKH = value;
    }
  }

  set sdt(String value) {
    if (RegExp(r'^\d{10}$').hasMatch(value)) {
      _sdt = value;
    }
  }

  // Phương thức tính tổng tiền
  double tongTien() => _giaBanThucTe * _slMua;

  // Phương thức tính lợi nhuận thực tế
  double tinhLoiNhuanThucTe() => (_giaBanThucTe - _dt.giaNhap) * _slMua;

  // Hiển thị thông tin hóa đơn
  void output() {
    print('Hóa đơn: $_maHD');
    print("Ngày bán: $_ngayBan");
    print("Điện thoại: ${_dt.tenDT}");
    print("Số lượng: $_slMua");
    print("Khách: $_tenKH");
    print("Sđt: $_sdt");
    print("Tổng tiền: ${tongTien()}");
  }
}
