import 'package:flutter/material.dart';
import 'package:layout2/models/item.dart'; // Pastikan ini sesuai dengan jalur model Anda

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ambil argumen item yang diteruskan dari HomePage
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: item.name,
              child: Image.network(item.imageUrl), // Gambar item
            ),
            Text('Price: Rp ${item.price}'),
            Text('Stock: ${item.stock}'),
            Text('Rating: ${item.rating}'),
          ],
        ),
      ),
    );
  }
}
