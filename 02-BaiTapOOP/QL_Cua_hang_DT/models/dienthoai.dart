class DienThoai {
  String _maDT;
  String _tenDT;
  String _hangSX;
  double _giaNhap;
  double _giaBan;
  int _slTon;
  bool _trangThai;

  DienThoai(this._maDT, this._tenDT, this._hangSX, this._giaNhap, this._giaBan,
      this._slTon, this._trangThai);

  // getter
  String get maDT => _maDT;
  String get tenDT => _tenDT;
  String get hangSX => _hangSX;
  double get giaNhap => _giaNhap;
  double get giaBan => _giaBan;
  int get slTon => _slTon;
  bool get trangThai => _trangThai;

  // setter
  set maDT(String ma) {
    if (ma.isNotEmpty && RegExp(r'^DT-\d{3}$').hasMatch(ma)) {
      _maDT = ma;
    }
  }

  set tenDT(String ten) {
    if (ten.isNotEmpty) {
      _tenDT = ten;
    }
  }

  set hangSX(String hang) {
    if (hang.isNotEmpty) {
      _hangSX = hang;
    }
  }

  set giaNhap(double giaNhap) {
    if (giaNhap > 0) {
      _giaNhap = giaNhap;
    }
  }

  set giaBan(double giaBan) {
    if (giaBan > 0 && giaBan > _giaNhap) {
      _giaBan = giaBan;
    }
  }

  set slTon(int slTon) {
    if (slTon >= 0) {
      _slTon = slTon;
    }
  }

  set trangThai(bool value) {
    _trangThai = value;
  }

  // Phương thức tính lợi nhuận dự kiến
  double tinhLoiNhuan() => _giaBan - _giaNhap;

  // Phương thức hiển thị
  void output() {
    print("--- Thông tin điện thoại ---");
    print("Mã: $_maDT");
    print("Tên: $_tenDT");
    print("Hãng: $_hangSX");
    print("Giá nhập: $_giaNhap");
    print("Giá bán: $_giaBan");
    print("Tồn kho: $_slTon");
    print("Trạng thái: ${_trangThai ? "Còn" : "Hết"}");
  }

  // Kiểm tra có thể bán không
  bool coTheBan() => _trangThai && _slTon > 0;
}
