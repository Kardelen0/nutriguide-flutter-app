import 'package:flutter/material.dart';
import 'product_model.dart';
import 'detail_screen.dart';
void main() {
runApp(const MyApp());
}
List<Product> cartItems = [];
class MyApp extends StatelessWidget {
const MyApp({super.key});
@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
title: 'Gift Store',
theme: ThemeData(
scaffoldBackgroundColor: const Color(0xFFFBFBFB),
primaryColor: Colors.black,
),
initialRoute: '/',
routes: {
'/': (context) => const DiscoverScreen(),
'/detail': (context) => const ProductDetailScreen(),
'/cart': (context) => const CartScreen(),
},
);
}
}
class DiscoverScreen extends StatefulWidget {
const DiscoverScreen({super.key});
@override
State<DiscoverScreen> createState() => _DiscoverScreenState();
}
class _DiscoverScreenState extends State<DiscoverScreen> {
final List<Product> _allProducts = Product.getMockProducts();
List<Product> _filteredProducts = [];
@override
void initState() {
super.initState();
_filteredProducts = _allProducts;
}
void _filterProducts(String query) {
setState(() {
if (query.isEmpty) {
_filteredProducts = _allProducts;
} else {
_filteredProducts = _allProducts
.where((product) =>
product.name.toLowerCase().contains(query.toLowerCase()))
.toList();
}
});
}
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
backgroundColor: Colors.transparent,
elevation: 0,
title: const Text(
"Discover",
style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
),
actions: [
Stack(
alignment: Alignment.center,
children: [
IconButton(
icon: const Icon(Icons.shopping_bag_outlined, color: Colors.black, size: 28),
onPressed: () {
Navigator.pushNamed(context, '/cart').then((_) => setState(() {}));
},
),
if (cartItems.isNotEmpty)
Positioned(
right: 6,
top: 6,
child: Container(
padding: const EdgeInsets.all(4),
decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
child: Text(
'${cartItems.length}',
style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
textAlign: TextAlign.center,
),
),
)
],
),
const SizedBox(width: 12),
],
),
body: Padding(
padding: const EdgeInsets.symmetric(horizontal: 16.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
const Text("Find your perfect device.", style: TextStyle(color: Colors.grey, fontSize: 14)),
const SizedBox(height: 16),
Container(
decoration: BoxDecoration(
color: const Color(0xFFF1F1F1),
borderRadius: BorderRadius.circular(12),
),
child: TextField(
onChanged: _filterProducts,
decoration: const InputDecoration(
hintText: "Search products",
prefixIcon: Icon(Icons.search, color: Colors.grey),
border: InputBorder.none,
contentPadding: EdgeInsets.symmetric(vertical: 14),
),
),
),
const SizedBox(height: 16),
Container(
width: double.infinity,
padding: const EdgeInsets.all(20),
decoration: BoxDecoration(
color: const Color(0xFFEEEEEE),
borderRadius: BorderRadius.circular(16),
),
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: const [
Text("GIFT STORE", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
SizedBox(height: 4),
Text("Find top tech deals here", style: TextStyle(color: Colors.black54, fontSize: 12)),
],
),
const Text("🎁", style: TextStyle(fontSize: 40)),
],
),
),
const SizedBox(height: 20),
Expanded(
child: _filteredProducts.isEmpty
? const Center(child: Text("Product not found.", style: TextStyle(fontSize: 16, color: Colors.grey)))
: GridView.builder(
gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
crossAxisCount: 2,
childAspectRatio: 0.78,
crossAxisSpacing: 12,
mainAxisSpacing: 12,
),
itemCount: _filteredProducts.length,
itemBuilder: (context, index) {
final product = _filteredProducts[index];
return GestureDetector(
onTap: () {
Navigator.pushNamed(context, '/detail', arguments: product).then((_) => setState(() {}));
},
child: Container(
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(16),
border: Border.all(color: const Color(0xFFEAEAEA)),
),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Expanded(
child: Container(
width: double.infinity,
decoration: const BoxDecoration(
color: Color(0xFFFAFAFA),
borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
),
child: Center(
child: Text(product.imageUrl, style: const TextStyle(fontSize: 50)),
),
),
),
Padding(
padding: const EdgeInsets.all(10.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
product.name,
style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
maxLines: 1,
overflow: TextOverflow.ellipsis,
),
const SizedBox(height: 2),
Text(
"\$${product.price.toStringAsFixed(2)}",
style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.blueAccent),
),
],
),
)
],
),
),
);
},
),
),
],
),
),
);
}
}
class CartScreen extends StatefulWidget {
const CartScreen({super.key});
@override
State<CartScreen> createState() => _CartScreenState();
}
class _CartScreenState extends State<CartScreen> {
@override
Widget build(BuildContext context) {
double total = cartItems.fold(0, (sum, item) => sum + item.price);
return Scaffold(
appBar: AppBar(
backgroundColor: Colors.transparent,
elevation: 0,
leading: IconButton(
icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
onPressed: () => Navigator.pop(context),
),
title: const Text("Cart", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
),
body: cartItems.isEmpty
? Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: const [
Icon(Icons.shopping_cart_outlined, size: 64, color: Colors.grey),
SizedBox(height: 12),
Text("Your cart is empty", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w600)),
SizedBox(height: 4),
Text("Add items to start shopping", style: TextStyle(fontSize: 12, color: Colors.grey)),
],
),
)
: Column(
children: [
Expanded(
child: ListView.builder(
itemCount: cartItems.length,
itemBuilder: (context, index) {
final item = cartItems[index];
return Container(
margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
padding: const EdgeInsets.all(10),
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(12),
border: Border.all(color: const Color(0xFFEAEAEA)),
),
child: Row(
children: [
Container(
width: 60,
height: 60,
decoration: BoxDecoration(
color: const Color(0xFFF5F5F5),
borderRadius: BorderRadius.circular(8),
),
child: Center(child: Text(item.imageUrl, style: const TextStyle(fontSize: 30))),
),
const SizedBox(width: 12),
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(item.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
const SizedBox(height: 4),
Text("\$${item.price.toStringAsFixed(2)}", style: const TextStyle(color: Colors.grey, fontSize: 12)),
],
),
),
IconButton(
icon: const Icon(Icons.remove_circle_outline, color: Colors.red),
onPressed: () {
setState(() {
cartItems.removeAt(index);
});
},
)
],
),
);
},
),
),
Container(
padding: const EdgeInsets.all(16),
decoration: const BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
),
child: Column(
children: [
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
const Text("Total:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
Text("\$${total.toStringAsFixed(2)}", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
],
),
const SizedBox(height: 16),
ElevatedButton(
style: ElevatedButton.styleFrom(
backgroundColor: Colors.black,
minimumSize: const Size(double.infinity, 50),
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
),
onPressed: () {
setState(() {
cartItems.clear();
});
ScaffoldMessenger.of(context).showSnackBar(
const SnackBar(content: Text("Checkout successful! Thank you.")),
);
},
child: const Text("Checkout", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
),
],
),
)
],
),
);
}
}