import 'sv.dart';

class LopHoc {
  String _lop;
  List<SinhVien> _ds = [];

  // Constructor
  LopHoc(this._lop);

  // Getter, Setter
  String get lop => _lop;
  List<SinhVien> get ds => _ds;

  set lop(String lop) {
    if (lop.isNotEmpty) {
      _lop = lop;
    }
  }

  void themSV(SinhVien sv) => _ds.add(sv);

  void output() {
    print("\nDANH SÁCH SINH VIÊN");
    for (var sv in _ds) {
      sv.output();
    }
  }
}
