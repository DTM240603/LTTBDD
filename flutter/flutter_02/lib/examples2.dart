import 'package:flutter/material.dart';

// TextButton: Tạo nút nhấn đơn giản
class text_Button extends StatelessWidget {
  const text_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextButton Example'),
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              // Hành động khi nhấn nút
              print('TextButton pressed');
            },
            child: Text('Click Me'),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

// ElevatedButton: Tạo nút nhấn nâng cao với hiệu ứng nẩy lên
class Elevated_Button extends StatelessWidget {
  const Elevated_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ElevatedButton Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Hành động khi nhấn nút
              print('ElevatedButton pressed');
            },
            child: Text('Press Me'),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

// OutlinedButton: Là nút nhấn có viền
class Outlined_Button extends StatelessWidget {
  const Outlined_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('OutlinedButton Example'),
        ),
        body: Center(
          child: OutlinedButton(
            onPressed: () {
              // Hành động khi nhấn nút
              print('Outlined_Button pressed');
            },
            child: Text('Tap Me'),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

//GestureDetector: hành động của người dùng như chạm kéo vuốt mà ứng dụng có thể phản hồi
class DemoGestues extends StatelessWidget {
  const DemoGestues({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GestureDetector Example'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              print('Nhấn');
            },
            onDoubleTap: () {
              print('Nhấn đúp');
            },
            onLongPress: () {
              print('Nhấn giữ');
            },
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Center(
                child: Text('Tap Me'),
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

// TextField: Nhập và chỉnh sửa văn bản
class Text_Field extends StatelessWidget {
  const Text_Field({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextField Exasmple'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
