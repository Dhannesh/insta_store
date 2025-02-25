
class Category {
  final String image;
  final String title;

  Category({required this.image, required this.title});
}

List<Category> categoriesMap = [
  Category(image: 'images/fruits.jpg', title: 'Fruits'),
  Category(image: 'images/veggies.jpg', title: 'Vegetables'),
  Category(image: 'images/snacks.jpg', title: 'Snacks'),
  Category(image: 'images/beverages.jpg', title: 'Beverages'),
  Category(image: 'images/fashion.jpg', title: 'Fashion'),
  Category(image: 'images/gadgets.jpg', title: 'Gadgets'),
  Category(image: 'images/shoes.jpg', title: 'Footwear'),
  Category(image: 'images/cosmetics.jpg', title: 'Cosmetics'),
];


class Product {
  final String imageName;
  final String title;

  Product({required this.imageName, required this.title});
}

List<Product> _fruits = [
  Product(imageName: 'images/apples.jpg', title: 'Apples'),
  Product(imageName: 'images/bananas.jpg', title: 'Bananas'),
  Product(imageName: 'images/mangoes.jpg', title: 'Mangoes'),
  Product(imageName: 'images/guava.jpg', title: 'Guava'),
  Product(imageName: 'images/pears.jpg', title: 'Pears'),
  Product(imageName: 'images/grapes.jpg', title: 'Grapes'),
];

List<Product> _vegetables = [
  Product(imageName: 'images/tomatoes.jpg', title: 'Tomatoes'),
  Product(imageName: 'images/onion.jpg', title: 'Onions'),
  Product(imageName: 'images/carrots.jpg', title: 'Carrots'),
  Product(imageName: 'images/beetroot.jpg', title: 'Beetroots'),
  Product(imageName: 'images/cucumber.jpg', title: 'Cucumbers'),
];

List<Product> _snacks = [
  Product(imageName: 'images/chips.jpg', title: 'Potato Chips'),
  Product(imageName: 'images/candies.jpg', title: 'Candies'),
  Product(imageName: 'images/cookies.jpg', title: 'Cookies'),
  Product(imageName: 'images/almonds.jpg', title: 'Almonds'),
  Product(imageName: 'images/cashews.jpg', title: 'Cashews'),
  Product(imageName: 'images/biscuits.jpg', title: 'Biscuits'),
  Product(imageName: 'images/waffles.jpg', title: 'Waffles')
];

List<Product> _beverages = [
  Product(imageName: 'images/orange_juice.jpg', title: 'Orange Juice'),
  Product(imageName: 'images/mint_soda.jpg', title: 'Mint Soda'),
  Product(imageName: 'images/grape_juice.jpg', title: 'Grape Juice'),
  Product(imageName: 'images/lemonade.jpg', title: 'Lemonade'),
  Product(imageName: 'images/cola.jpg', title: 'Cola'),
  Product(imageName: 'images/coconut_water.jpg', title: 'Coconut Water'),
  Product(imageName: 'images/soda.jpg', title: 'Blueberry Soda')
];

List<Product> _fashion = [
  Product(imageName: 'images/hat.jpg', title: 'Hats'),
  Product(imageName: 'images/fashion_heels.jpg', title: 'Heels'),
  Product(imageName: 'images/sunglasses.jpg', title: 'Sunglasses'),
  Product(imageName: 'images/pocket_watches.jpg', title: 'Pocket Watches'),
  Product(imageName: 'images/scarf.jpg', title: 'Scarfs'),
  Product(imageName: 'images/belt.jpg', title: 'Belts'),
  Product(imageName: 'images/bag.jpg', title: 'Shoulder Bag')
];

List<Product> _gadgets = [
  Product(imageName: 'images/watch.jpg', title: 'Smart Watch'),
  Product(imageName: 'images/mobile.jpg', title: 'Mobile'),
  Product(imageName: 'images/joystick.jpg', title: 'Joystick'),
  Product(imageName: 'images/camera.jpg', title: 'Camera'),
  Product(imageName: 'images/ipod.jpg', title: 'Music Player'),
  Product(imageName: 'images/earphone.jpg', title: 'Earphones')
];

List<Product> _footwear = [
  Product(imageName: 'images/sneakers.jpg', title: 'Sneakers'),
  Product(imageName: 'images/heels.jpg', title: 'Heels'),
  Product(imageName: 'images/boots.jpg', title: 'Boots'),
  Product(imageName: 'images/loafer.jpg', title: 'Loafer'),
  Product(imageName: 'images/sandals.jpg', title: 'Sandals'),
  Product(imageName: 'images/flip_flops.jpg', title: 'Flip Flops'),
  Product(imageName: 'images/wedge.jpg', title: 'Wedge'),
  Product(imageName: 'images/ballet_shoes.jpg', title: 'Ballet Shoe')
];

List<Product> _cosmetics = [
  Product(imageName: 'images/concealer.jpg', title: 'Concealer'),
  Product(imageName: 'images/powder.jpg', title: 'Powder'),
  Product(imageName: 'images/lotion.jpg', title: 'Lotion'),
  Product(imageName: 'images/lip_balm.jpg', title: 'Lip Balm'),
];

Map<String, List<Product>> productsMap = {
  'Fruits': _fruits,
  'Vegetables': _vegetables,
  'Snacks': _snacks,
  'Beverages': _beverages,
  'Fashion': _fashion,
  'Gadgets': _gadgets,
  'Footwear': _footwear,
  'Cosmetics': _cosmetics,
};

