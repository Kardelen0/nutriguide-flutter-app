class Product {
final int id;
final String name;
final String description;
final double price;
final String imageUrl;
final Map<String, String> specifications;

Product({
required this.id,
required this.name,
required this.description,
required this.price,
required this.imageUrl,
required this.specifications,
});
static List<Product> getMockProducts() {
return [
Product(
id: 1,
name: "AirPods Pro (2nd Gen)",
description: "AirPods Pro introduces up to 2x more Active Noise Cancellation than the previous generation, featuring advanced audio performance and personalized spatial audio.",
price: 249.00,
imageUrl: "🎧", 
specifications: {"SIZE": "Medium", "AUDIO": "Spatial", "BATTERY": "6 Hours"},
),
Product(
id: 2,
name: "AirPods Max",
description: "A perfect balance of exhilarating high-fidelity audio and the effortless magic of AirPods. The ultimate personal listening experience is here.",
price: 549.00,
imageUrl: "🎧",
specifications: {"SIZE": "Over-Ear", "AUDIO": "Hi-Fi", "BATTERY": "20 Hours"},
),
Product(
id: 3,
name: "HomePod Mini",
description: "The HomePod Mini is jam-packed with innovation, delivering unexpectedly big sound for a speaker of its size. At just 3.3 inches tall, it takes up almost no space.",
price: 99.00,
imageUrl: "🟠",
specifications: {"SIZE": "3.3 inches", "AUDIO": "360-degree", "COLORS": "5 colors"},
),
Product(
id: 4,
name: "MacBook Pro 14\"",
description: "Supercharged by M3 Pro or M3 Max, the MacBook Pro 14-inch is a pro laptop without equal. Incredible battery life and a stunning Liquid Retina XDR display.",
price: 1599.00,
imageUrl: "💻",
specifications: {"CHIP": "M3 Pro", "RAM": "18GB", "STORAGE": "512GB"},
),
Product(
id: 5,
name: "iPad Air",
description: "Light. Bright. Full of might. iPad Air features the blazing-fast Apple M2 chip, a stunning Liquid Retina display, and support for Apple Pencil Pro.",
price: 599.00,
imageUrl: "📱",
specifications: {"SCREEN": "11-inch", "CHIP": "M2", "STORAGE": "128GB"},
),
];
}
}