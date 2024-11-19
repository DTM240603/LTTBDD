/* 
Bài tập:
1. Viết chương trình chuyển đổi 1 số nguyên (n>=1) được nhập từ bàn phím thành số nhị phân.

2. Viết chương trình tính tổng các ước số của một số nguyên được nhập từ bàn phím(n>=1).
*/
import 'dart:io';

void main() {
  // Nhập số nguyên n từ bàn phím
  print('Nhập một số nguyên n (n >= 1):');
  int? n = int.parse(stdin.readLineSync()!);

  if (n < 1) {
    print('Vui lòng nhập một số nguyên lớn hơn hoặc bằng 1.');
    return;
  }

  // Tính tổng các ước số của n
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      sum += i;
    }
  }

  // In ra kết quả
  print('Tổng các ước số của $n là: $sum');
}
