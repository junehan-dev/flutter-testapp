import 'package:flutter/material.dart';

void main() {
	runApp(MyApp());
}

class MyApp extends StatelessWidget {
	const MyApp({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			debugShowCheckedModeBanner: false,
			home: Scaffold(
				appBar: AppBar(
					centerTitle: true,
					title: Text(
						"Hello Flutter",
						style: TextStyle(
							fontSize: 28
						),
					)
				),
				body: Padding(
					padding: const EdgeInsets.all(8.0),
					child: Column(
						children: [
							Text(
								"Hello Flutter",
								style: TextStyle(
									fontSize: 28
								)
							),
							TextField(
								decoration: InputDecoration(
									labelText: "email"
								)
							),
							TextField(
								obscureText: true,
								decoration: InputDecoration(
									labelText: "password"
								)
							),
							Container(
								width: double.infinity,
								margin: EdgeInsets.only(top:24),
								child: ElevatedButton(
										onPressed: () {},
										child: Text(
											"sign in"
										)
									),
							)
						]
					),
				)
			),
		);
	}
}
