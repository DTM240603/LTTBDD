/* 
Bài tập:
1. Viết chương trình chuyển đổi 1 số nguyên (n>=1) được nhập từ bàn phím thành số nhị phân.

2. Viết chương trình tính tổng các ước số của một số nguyên được nhập từ bàn phím(n>=1).
*/
import 'dart:io';
import 'dart:math';

void main() {
  int n = 0;
  do {
    stdout.write('Nhập số n (n >= 1): ');
    String? input = stdin.readLineSync();
    if (input != null) {
      n = int.tryParse(input) ?? 0;
    }
    if (n <= 0) {
      print('Hệ số n phải lớn hơn hoặc bằng 0. Vui lòng nhập lại!');
    }
  } while (n <= 0);

  String nhiPhan = '';
  int temp = n;
  while (temp > 0) {
    int phanDu = temp % 2; // Lấy phần dư khi chia cho 2
    nhiPhan = phanDu.toString() + nhiPhan; // Ghép vào trước chuỗi nhị phân
    temp ~/= 2; // Lấy phần nguyên khi chia cho 2
  }

  print('Số nhị phân của $n là: $nhiPhan');
}
