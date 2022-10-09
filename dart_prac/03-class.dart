class Bread {
	Bread(String core) {
		content = core;
	}
	String? content;

	String getDescription() {
		return ("this is $content bread.");
	}
}

class MyBread extends Bread {
	final String owner;
	MyBread(super.content, this.owner);

	String getOwner() {
		return ("this is $owner 's $content");
	}
}

void main() {
	/*
	 * Class test
	 */
	print("CLASS-----------------------");
	Bread bread = Bread("test");
	print(bread);
	print(bread.getDescription());
	print("CLASS-----------------------");
	print("INHERITANCE-----------------");
	MyBread bread2 = MyBread("test2", "june");
	print(bread2.getOwner());
	print("INHERITANCE-----------------");
}

