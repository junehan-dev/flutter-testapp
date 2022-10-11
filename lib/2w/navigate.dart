import 'package:flutter/material.dart';

void main() {
	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
	const MyApp({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			debugShowCheckedModeBanner: false,
			home: FirstPage(),
		);
	}
}

// 첫 번째 페이지
class FirstPage extends StatelessWidget {
	const FirstPage({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("홈"),
			),
			body: Center(
				child: ElevatedButton(
					child: Text("다음 페이지로 이동"),
					onPressed: () {
						// 페이지 이동
						Navigator.push(
							context,
							MaterialPageRoute(builder: (context) => SecondPage()),
						);
					},
				),
			),
		);
	}
}

// 두 번째 페이지
class SecondPage extends StatelessWidget {
	const SecondPage({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("두 번째 페이지 입니다!"),
			),
			backgroundColor: Colors.amber,
			body: Center(
				child: ElevatedButton(
					child: Text("첫 번째 페이지로 되돌아가기"),
					onPressed: () {
						// 뒤로가기
						Navigator.pop(context);
					},
				),
			),
		);
	}
}
