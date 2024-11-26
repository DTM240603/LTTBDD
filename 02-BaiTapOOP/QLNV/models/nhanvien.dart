class NhanVien {
  String _maNV;
  String _hoTen;
  double _lcb;

  NhanVien(this._maNV, this._hoTen, this._lcb);

  // Getter
  String get maNV => _maNV;
  String get hoTen => _hoTen;
  double get lcb => _lcb;

  // Setter
  set maNV(String ma) {
    if (ma.isNotEmpty) {
      _maNV = ma;
    }
  }

  set hoTen(String ten) {
    if (ten.isNotEmpty) {
      _hoTen = ten;
    }
  }

  set lcb(double luong) {
    if (luong > 0) {
      _lcb = luong;
    }
  }

  double tinhLuong() {
    return _lcb;
  }

  void output() {
    print("$_maNV - $_hoTen - $_lcb - ${tinhLuong()}");
  }
}
