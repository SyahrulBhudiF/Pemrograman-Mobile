# 11 | Pemrograman Asynchronous

> Nama : Syahrul Bhudi Ferdiansyah

> Kelas : TI - 3B

> Absen : 26

## Praktikum 1: Mengunduh Data dari Web Service (API)

1. Add packgae
   ![alt text](assets/image.png)
2. Soal 1
   Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

```dart
import 'dart:async';

import 'package:flutter/material.dart';

void main() {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Syahrul Bhudi Ferdiansyah',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({Key key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FuturePageState createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Page'),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(onPressed: () {}, child: const Text('GO!')),
            const Spacer(),
            Text(result),
            const Spacer(),
            const CircularProgressIndicator(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
```

3. Tambah method getData()

```dart
Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/junbDwAAQBAJ';
    Uri uri = Uri.https(authority, path);
    return http.get(uri);
  }
```

> Soal 2 mencari id buku ; iQmPNDIAskUC

4. Tambah kode di ElevatedButton

```dart
ElevatedButton(
                onPressed: () {
                  setState(() {});
                  getData().then((value) {
                    setState(() {
                      result = value.body.toString().substring(0, 450);
                      setState(() {});
                    });
                  }).catchError((_) {
                    result = 'Error';
                    setState(() {});
                  });
                },
                child: const Text('GO!')),
```

> Soal 3

    Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
    Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 3".

> Substring digunakan untuk mengambil 450 kata pertama, Catch Error digunakan untuk menghandle jika terjadi error saat request

- Hasil
![alt text](image.png)
