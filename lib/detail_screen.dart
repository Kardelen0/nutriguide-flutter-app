import 'package:flutter/material.dart';
import 'product_model.dart';
import 'main.dart' show cartItems; 
class ProductDetailScreen extends StatefulWidget {
const ProductDetailScreen({super.key});
@override
State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}
class _ProductDetailScreenState extends State<ProductDetailScreen> {
int _quantity = 1;
@override
Widget build(BuildContext context) {
final product = ModalRoute.of(context)!.settings.arguments as Product;
return Scaffold(
appBar: AppBar(
backgroundColor: Colors.transparent,
elevation: 0,
leading: IconButton(
icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
onPressed: () => Navigator.pop(context),
),
title: const Text("Details", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
),
body: Column(
children: [
Expanded(
child: SingleChildScrollView(
padding: const EdgeInsets.all(16.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
width: double.infinity,
height: 240,
decoration: BoxDecoration(
color: const Color(0xFFF5F5F5),
borderRadius: BorderRadius.circular(24),
),
child: Center(
child: Text(product.imageUrl, style: const TextStyle(fontSize: 100)),
),
),
const SizedBox(height: 20),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Expanded(
child: Text(
product.name, 
style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
maxLines: 1,
overflow: TextOverflow.ellipsis,
),
),
Container(
decoration: BoxDecoration(
color: const Color(0xFFF1F1F1),
borderRadius: BorderRadius.circular(20),
),
child: Row(
children: [
IconButton(
icon: const Icon(Icons.remove, size: 18),
onPressed: () {
if (_quantity > 1) {
setState(() => _quantity--);
}
},
),
Text("$_quantity", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
IconButton(
icon: const Icon(Icons.add, size: 18),
onPressed: () {
setState(() => _quantity++);
},
),
],
),
),
],
),
const SizedBox(height: 4),
Text("\$${product.price.toStringAsFixed(2)}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
const SizedBox(height: 16),
const Text("Description", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
const SizedBox(height: 6),
Text(product.description, style: const TextStyle(color: Colors.grey, height: 1.4)),
const SizedBox(height: 20),
const Text("Specifications", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
const SizedBox(height: 8),
Row(
children: product.specifications.entries.map((entry) {
return Expanded(
child: Container(
margin: const EdgeInsets.symmetric(horizontal: 4),
padding: const EdgeInsets.all(10),
decoration: BoxDecoration(
border: Border.all(color: const Color(0xFFEAEAEA)),
borderRadius: BorderRadius.circular(8),
),
child: Column(
children: [
Text(entry.key, style: const TextStyle(fontSize: 10, color: Colors.grey, fontWeight: FontWeight.bold)),
const SizedBox(height: 4),
Text(entry.value, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
],
),
),
);
}).toList(),
),
],
),
),
),
Padding(
padding: const EdgeInsets.all(16.0),
child: ElevatedButton(
style: ElevatedButton.styleFrom(
backgroundColor: Colors.black,
minimumSize: const Size(double.infinity, 50),
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
),
onPressed: () {
for (int i = 0; i < _quantity; i++) {
cartItems.add(product);
}
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(
content: Text("$_quantity x ${product.name} added to cart!"),
duration: const Duration(seconds: 1),
),
);
Navigator.pop(context);
},
child: const Text("Add to Cart", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
),
),
],
),
);
}
}