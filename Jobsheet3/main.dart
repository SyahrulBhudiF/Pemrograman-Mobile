void main(List<String> args) {
  //Prak 1
  // Langkah 1
  // String test = "test2";
  // if (test == "test1") {
  //   print("Test1");
  // } else if (test == "test2") {
  //   print("Test2");
  // } else {
  //   print("Something else");
  // }

  // if (test == "test2") print("Test2 again");

  //Langkah 2
  // String test = "true";
  // if (test == "true") {
  //   print("Kebenaran");
  // }

  // prak 2
  // Langkah 1
  // int counter = 0;
  // while (counter < 33) {
  //   print(counter);
  //   counter++;
  // }

  // Langkah 2
  // int counter = 0;
  // do {
  //   print(counter);
  //   counter++;
  // } while (counter < 77);

  // Prak 3
  // Langkah 1
  // for (int index = 10; index < 27; index++) {
  //   // print(index);

  //   // Langkah 2
  //   if (index == 21)
  //     break;
  //   else if (index > 1 || index < 7) continue;
  //   print(index);
  // }

  // Tugas Praktikum
  String name = "Syahrul Bhudi Ferdiansyah";
  String nim = "2241720167";

  for (int number = 0; number <= 201; number++) {
    if (isPrime(number)) {
      print("Bilangan prima: $number");
      print("Nama lengkap: $name");
      print("NIM: $nim");
    }
  }
}

bool isPrime(int number) {
  if (number <= 1) return false;
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) return false;
  }
  return true;
}
