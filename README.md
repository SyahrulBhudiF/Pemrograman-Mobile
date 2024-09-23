# 04 | Pengantar Bahasa Pemrograman Dart - Bagian 3

> Nama :Syahrul Bhudi Ferdiansyah

> Kelas :TI - 3B

> Absen :26

## Praktikum 1: Eksperimen Tipe Data List

1. Langkah 1:

```dart
void main() {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
}

```

2. Langkah 2 <br>
   ![alt text](/Jobsheet4/img/1.png)

> var list = [1, 2, 3];: Mendeklarasikan sebuah list dengan elemen [1, 2, 3].

> assert(list.length == 3);: Memastikan bahwa panjang list adalah 3.

> assert(list[1] == 2);: Memastikan bahwa elemen kedua dari list adalah 2.

> print(list.length);: Mencetak panjang list, yaitu 3.

> print(list[1]);: Mencetak elemen kedua dari list, yaitu 2.

> list[1] = 1;: Mengubah elemen kedua dari list menjadi 1.

> assert(list[1] == 1);: Memastikan bahwa elemen kedua dari list sekarang adalah 1.

> print(list[1]);: Mencetak elemen kedua dari list, yaitu 1.

3. Langkah 3

```dart
final list = List<String?>.filled(5, null);
  list[1] = "Syahrul Bhudi Ferdiansyah";
  list[2] = "2241720167";

  print(list.length); // Output: 5
  print(list[1]); // Output: Syahrul Bhudi Ferdiansyah
  print(list[2]); // Output: 2241720167
  print(list); // Output: [null, Syahrul Bhudi Ferdiansyah 2241720167, null, null]
```

```bash
5
Syahrul Bhudi Ferdiansyah
2241720167
[null, Syahrul Bhudi Ferdiansyah, 2241720167, null, null]
```

## Praktikum 2: Eksperimen Tipe Data Set

1. Langkah 1

```dart
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
}
```

2. Langkah 2

   > `var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};`Ini mendeklarasikan sebuah set bernama halogens yang berisi elemen-elemen string 'fluorine', 'chlorine', 'bromine', 'iodine', dan 'astatine'. Dalam Dart, set adalah koleksi yang tidak berurutan dari elemen-elemen unik.

3. Langkah 3

```dart
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
```

- Output

```bash
{fluorine, chlorine, bromine, iodine, astatine}
{Syahrul Bhudi Ferdiansyah, 2241720167}
{Syahrul Bhudi Ferdiansyah, 2241720167}
{}
```

> Gunakan .add() untuk menambahkan satu elemen ke dalam set.

> Gunakan .addAll() untuk menambahkan beberapa elemen sekaligus ke dalam set.

> Set hanya menyimpan elemen unik, sehingga elemen yang sama tidak akan ditambahkan lebih dari sekali.

## Praktikum 3: Eksperimen Tipe Data Maps

1. Langkah 1

```dart
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
}
```

2. Langkah 2

- Output

```bash
{first: partridge, second: turtledoves, fifth: 1}
{2: helium, 10: neon, 18: 2}
```

> Kode ini mendeklarasikan dua map (gifts dan nobleGases) dengan kunci dan nilai bertipe campuran.

> Map gifts menggunakan kunci bertipe String dan nilai bertipe campuran (String dan int).

> Map nobleGases menggunakan kunci bertipe int dan nilai bertipe campuran (String dan int).

> Kode ini kemudian mencetak isi dari kedua map tersebut.

3. Langkah 3

```dart
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
```

- Output

```bash
{first: partridge, second: turtledoves, fifth: 1}
{2: helium, 10: neon, 18: 2}
{nama: Syahrul Bhudi Ferdiansyah, nim: 2241720167}
{0: Syahrul Bhudi Ferdiansyah, 1: 2241720167}
{first: partridge, second: turtledoves, fifth: golden rings, sixth: Syahrul Bhudi Ferdiansyah, seventh: 2241720167}
{2: helium, 10: neon, 18: argon, 0: Syahrul Bhudi Ferdiansyah, 1: 2241720167}
```

## Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators

1. Langkah 1

```dart
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);
}
```

2. Langkah 2

- Output

```bash
[1, 2, 3]
[0, 1, 2, 3]
4
```

> Operator spread (...) digunakan untuk memasukkan elemen-elemen dari satu list ke list lain.

> list2 berisi elemen [0, 1, 2, 3] setelah menggabungkan elemen [0] dengan elemen-elemen dari list.

> Panjang list2 adalah 4.

3. Langkah 3

```dart
  var list1 = <int?>[1, 2, null];
  print(list1);
  var list3 = [0, ...list1];
  var list4 = ['2241720167','Syahrul Bhudi Ferdiansyah', ...list3];
  print(list3.length);
  print(list3);
  print(list4);
```

- Output

```bash
[1, 2, null]
4
[0, 1, 2, null]
[2241720167, Syahrul Bhudi Ferdiansyah, 0, 1, 2, null]
```

> Kode Dart ini menggunakan operator spread (...) untuk menggabungkan elemen-elemen dari beberapa list. List list1 berisi elemen bertipe int? yang bisa bernilai null. List list3 menggabungkan elemen [0] dengan elemen-elemen dari list1, menghasilkan [0, 1, 2, null]. List list4 menggabungkan elemen-elemen dari list3 dengan elemen awal '2241720167' dan 'Syahrul Bhudi Ferdiansyah', menghasilkan ['2241720167', 'Syahrul Bhudi Ferdiansyah', 0, 1, 2, null]. Output dari kode ini adalah [1, 2, null], 4, [0, 1, 2, null], dan ['2241720167', 'Syahrul Bhudi Ferdiansyah', 0, 1, 2, null].

4. Langkah 4

```dart
  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive 'Outlet'];
  print(nav);
```

- True

```bash
[Home, Furniture, Plants, Outlet]
```

- False

```bash
[Home, Furniture, Plants]
```

5. Langkah 5

```dart
  var login = 'Manager';

  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];
  print(nav2);
```

- Manager

```bash
[Home, Furniture, Plants, Inventory]
```

- Other

```bash
[Home, Furniture, Plants]
```

6. Langkah 6

```dart
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
```

- Output

```bash
[#0, #1, #2, #3]
```

> Collection For dalam Dart memungkinkan untuk membuat koleksi (seperti list) dengan cara yang lebih ringkas dan deklaratif.

## Praktikum 5: Eksperimen Tipe Data Records

1. Langkah 1

```dart
void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);
}
```

2. Langkah 2

- Output

```bash
(first, last, a: 2, b: true)
```

> record adalah variabel yang menyimpan sebuah record.

> Record ini berisi empat elemen:
>
> - 'first': Elemen pertama, bertipe String.
> - a: 2: Elemen kedua, bertipe int dengan label a.
> - b: true: Elemen ketiga, bertipe bool dengan label b.
> - 'last': Elemen keempat, bertipe String.

3. Langkah 3

```dart
void main() {
  var record = (1, 2);
  record = tukar(record);
  print(record);
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
```

- Output

```bash
(2, 1)
```

4. Langkah 4

```dart
(String, int) mahasiswa = ('Syahrul Bhudi Ferdiansyah', 2241720167);
print(mahasiswa);
```

- Output

```bash
(Syahrul Bhudi Ferdiansyah, 2241720167)
```

5. Langkah 5

```dart
 var mahasiswa2 = ('Syahrul Bhudi Ferdiansyah', a: 2, b: true, '2241720167');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
```

- Output

```bash
Syahrul Bhudi Ferdiansyah
2
true
2241720167
```

> Kode diatas menunjukan bagaimana cara melakukan print tiap record value

## Tugas Praktikum

1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!

   > true

2. Jelaskan yang dimaksud Functions dalam bahasa Dart!

   > Functions dalam bahasa Dart adalah blok kode yang dapat dipanggil untuk menjalankan tugas tertentu. Fungsi dapat menerima input berupa parameter, dan dapat mengembalikan nilai sebagai output. Functions mempermudah penulisan kode yang lebih modular dan reusable.

   ```dart
    int add(int a, int b) {
      return a + b;
    }

    void main() {
      int result = add(3, 5);
      print(result); // Output: 8
    }
   ```

3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!

   > Positional Parameters (Parameter Posisi): Parameter ini diteruskan dalam urutan yang tepat ketika memanggil function.

   ```dart
    void greet(String name, int age) {
      print('Hello, $name! You are $age years old.');
    }

    void main() {
      greet("John", 25);
    }
   ```

   > Optional Positional Parameters (Parameter Posisi Opsional): Parameter yang bersifat opsional dan ditempatkan dalam tanda kurung siku. Jika tidak diberikan, nilai default adalah null.

   ```dart
    void greet(String name, [int? age]) {
      if (age != null) {
        print('Hello, $name! You are $age years old.');
      } else {
        print('Hello, $name!');
      }
    }

    void main() {
      greet("Alice");
      greet("Bob", 30);
    }
   ```

   > Named Parameters (Parameter Bernama): Parameter yang diberi nama saat dipanggil, dan dapat dibuat opsional menggunakan tanda {}.

   ```dart
    void greet({required String name, int? age}) {
      print('Hello, $name!');
      if (age != null) {
        print('You are $age years old.');
      }
    }

    void main() {
      greet(name: "Charlie");
      greet(name: "Daisy", age: 22);
    }
   ```

   > Default Parameters (Parameter Default): Parameter yang memiliki nilai default jika tidak diberikan saat pemanggilan.

   ```dart
    void greet({String name = "Guest", int age = 18}) {
      print('Hello, $name! You are $age years old.');
    }

    void main() {
      greet();
      greet(name: "Eve");
    }
   ```

4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!

   > Functions di Dart adalah first-class objects, artinya dapat disimpan dalam variabel, diteruskan sebagai argumen, dan dikembalikan dari function lain. Hal ini memungkinkan fungsi diperlakukan seperti objek lain.

   ```dart
    void printMessage(String message) {
      print(message);
    }

    void main() {
      // Menyimpan fungsi dalam variabel
      var myFunction = printMessage;

      // Memanggil fungsi melalui variabel
      myFunction("Hello, Dart!");

      // Mengoper fungsi sebagai argumen
      executeFunction(myFunction);
    }

    void executeFunction(void Function(String) func) {
      func("Function executed.");
    }
   ```

5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!

   > Anonymous function adalah fungsi yang tidak memiliki nama. Biasanya digunakan saat fungsi hanya dibutuhkan sekali, atau ketika fungsi ingin langsung digunakan sebagai argumen dalam fungsi lain.

   ```dart
    void main() {
      // Fungsi anonim dalam map
      var numbers = [1, 2, 3, 4];
      var squaredNumbers = numbers.map((number) => number * number).toList();
      print(squaredNumbers); // Output: [1, 4, 9, 16]

      // Fungsi anonim dalam event handler
      List<String> names = ['John', 'Jane', 'Doe'];
      names.forEach((name) {
        print(name);
      });
    }
   ```

6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!

   > Lexical Scope: Lexical scope merujuk pada cakupan variabel berdasarkan tempat variabel tersebut dideklarasikan. Variabel yang dideklarasikan dalam lingkup tertentu hanya bisa diakses dalam lingkup tersebut.

   ```dart
    void main() {
      int outerVariable = 100;

      void printOuterVariable() {
        // Dapat mengakses outerVariable karena berada dalam lingkup yang sama
        print(outerVariable);
      }

      printOuterVariable();
    }
   ```

   > Lexical Closures: Lexical closure adalah fungsi yang dapat mengingat dan mengakses variabel dari lingkup di mana fungsi tersebut dideklarasikan, bahkan setelah lingkup tersebut telah selesai dijalankan.

   ```dart
    Function makeAdder(int x) {
      return (int y) => x + y;
    }

    void main() {
      var add5 = makeAdder(5);  // Closure yang mengingat nilai x = 5
      print(add5(10));          // Output: 15
    }
   ```

7. Jelaskan dengan contoh cara membuat return multiple value di Functions!

   > Dart tidak secara langsung mendukung return multiple values, tetapi bisa menggunakan List, Map, atau Tuple untuk mengembalikan beberapa nilai sekaligus.

   ```dart
    List<int> getMinMax(List<int> numbers) {
      int min = numbers.reduce((a, b) => a < b ? a : b);
      int max = numbers.reduce((a, b) => a > b ? a : b);
      return [min, max];
    }

    void main() {
      var numbers = [3, 5, 7, 2, 8];
      var result = getMinMax(numbers);
      print("Min: ${result[0]}, Max: ${result[1]}");
    }
   ```
