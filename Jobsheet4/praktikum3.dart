void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  mhs1['nama'] = 'Syahrul Bhudi Ferdiansyah';
  mhs1['nim'] = '2241720167';
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['sixth'] = 'Syahrul Bhudi Ferdiansyah';
  gifts['seventh'] = '2241720167';

  var mhs2 = Map<int, String>();
  mhs2[0] = 'Syahrul Bhudi Ferdiansyah';
  mhs2[1] = '2241720167';
  nobleGases[0] = 'Syahrul Bhudi Ferdiansyah';
  nobleGases[1] = '2241720167';
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print(mhs1);
  print(mhs2);
  print(gifts);
  print(nobleGases);
}
