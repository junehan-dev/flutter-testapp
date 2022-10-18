import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class _FeedState extends State<Feed> {
	bool isFavorite = false;
	
	@override
	Widget build(BuildContext context) {
		return Row(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: [
				ClipRRect(
					borderRadius: BorderRadius.circular(8),
					child: Image.network(
						'https://cdn2.thecatapi.com/images/6bt.jpg',
						width: 100,
						height: 100,
						fit: BoxFit.cover,
					),
				),
				SizedBox(width: 12),
				Expanded(
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Text(
								'M1 아이패드 프로 11형(3세대) 와이파이 128G 팝니다.',
								style: TextStyle(
									fontSize: 16,
									color: Colors.black,
								),
								softWrap: false,
								maxLines: 2,
								overflow: TextOverflow.ellipsis,
							),
							SizedBox(height: 2),
							Text(
								'봉천동 · 6분 전',
								style: TextStyle(
									fontSize: 12,
									color: Colors.black45,
								),
							),
							SizedBox(height: 4),
							Text(
								'100만원',
								style: TextStyle(
									fontSize: 14,
									fontWeight: FontWeight.bold,
								),
							),
							Row(
								children: [
									Spacer(),
									GestureDetector(
										onTap: () {
											setState(() {
												isFavorite = !isFavorite;
											});
										},
										child: Row(
											children: [
												Icon(
													isFavorite ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
													color: isFavorite ? Colors.pink : Colors.black,
													size: 16,
												),
												Text(
													isFavorite ? '1' : '0',
													style: TextStyle(color: Colors.black54),
												),
											],
										),
									),
								],
							),
						],
					),
				),
			],
		);
	}
}

class Feed extends StatefulWidget {
	const Feed({super.key});

	@override
	State<Feed> createState() => _FeedState();
}

