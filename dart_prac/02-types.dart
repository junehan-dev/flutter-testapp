int main() {
	const	MAX = 5;
	final 	MAX_S;
	int		x = 0;
	var		y;
	String	s = "s";

	MAX_S = 3;
	while (x < MAX) {
		print("hello ${x++ + 1}");
		y = 0;
		while (y++ < MAX_S)
			print("${s}");
	}

	return 0;
}
