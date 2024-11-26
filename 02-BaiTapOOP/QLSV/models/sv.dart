// Lớp sinh viên
class SinhVien {
  String _hoTen;
  int _tuoi;
  String _maSV;
  double _dtb;

  // Constructor
  SinhVien(this._hoTen, this._tuoi, this._maSV, this._dtb);

  // Getter
  String get hoTen => _hoTen;
  int get tuoi => _tuoi;
  String get maSV => _maSV;
  double get dtb => _dtb;

  // Setter
  set hoTen(String ten) {
    if (ten.isNotEmpty) {
      _hoTen = ten;
    }
  }

  set tuoi(int tuoi) {
    if (tuoi > 0) {
      _tuoi = tuoi;
    }
  }
  // set tuoi(int tuoi) {
  //   _tuoi = (tuoi>0)?tuoi:_tuoi;
  // }

  set maSV(String ma) {
    if (ma.isNotEmpty) {
      _maSV = ma;
    }
  }

  set dtb(double diem) {
    if (diem >= 0 && diem <= 10) {
      _dtb = diem;
    }
  }

  // methods
  void output() {
    print("$hoTen - $_tuoi - $_maSV - $dtb - ${xepLoai(_dtb)}");
  }

  String xepLoai(double _dtb) {
    if (_dtb >= 8.0) return 'Giỏi';
    if (_dtb >= 6.5) return 'Khá';
    if (_dtb >= 5.0) return "Trung bình";
    return "Yếu";
  }
}
