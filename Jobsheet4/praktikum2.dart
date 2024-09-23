void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = <String>{}; // Explicitly create a set.

  // Adding elements to names1 using .add()
  names1.add("Syahrul Bhudi Ferdiansyah");
  names1.add("2241720167");

  // Adding elements to names2 using .addAll()
  names2.addAll({"Syahrul Bhudi Ferdiansyah", "2241720167"});

  print(names1); // Output: {Syahrul Bhudi Ferdiansyah, 2241720167}
  print(names2); // Output: {Syahrul Bhudi Ferdiansyah, 2241720167}
  print(names3); // Output: {}
}
