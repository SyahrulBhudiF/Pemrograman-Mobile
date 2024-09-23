void main() {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);
  final list = List<String?>.filled(5, null);
  list[1] = "Syahrul Bhudi Ferdiansyah";
  list[2] = "2241720167";

  print(list.length); // Output: 5
  print(list[1]); // Output: Syahrul Bhudi Ferdiansyah
  print(list[2]); // Output: 2241720167
  print(
      list); // Output: [null, Syahrul Bhudi Ferdiansyah, 2241720167, null, null]
}
