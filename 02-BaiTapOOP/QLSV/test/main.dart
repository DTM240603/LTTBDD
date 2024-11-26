import '../models/lophoc.dart';
import '../models/sv.dart';

void main() {
  SinhVien sv1 = SinhVien("Nguyễn Văn A", 18, "SV01", 9);
  SinhVien sv2 = SinhVien("Nguyễn Thị B", 18, "SV02", 5);
  SinhVien sv3 = SinhVien("Trần Van C", 18, "SV03", 7.5);
  SinhVien sv4 = SinhVien("Nguyen Van D", 18, "SV04", 4.5);
  SinhVien sv5 = SinhVien("Nguyen Van E", 18, "SV05", 6);

  // print(sv1.hoTen);
  // sv1.output();
  // print("-----------");

  // sv1.hoTen = "Nguyên Văn Haa";
  // sv1.output();

  // print("-----------");
  // sv1.hoTen = "";
  // sv1.output();

  // print("-----------");
  // print("Danh sách sv:");

  LopHoc ds = LopHoc("K01");
  ds.themSV(sv1);
  ds.themSV(sv2);
  ds.themSV(sv3);
  ds.themSV(sv4);
  ds.themSV(sv5);

  ds.output();
}
