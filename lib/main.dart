import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/screens/homescreen.dart';
import 'package:my_app/screens/productscreen.dart';
import 'package:my_app/screens/categoryscreen.dart';
import 'package:my_app/data/data.dart';
import 'package:my_app/screens/cartscreen.dart';
import 'package:my_app/widgets/product.dart';
import 'package:my_app/widgets/category.dart';

Cart cart = Cart();

void main() {
  runApp(const MaterialApp(home: SimpleEcommerce()));
}

class SimpleEcommerce extends StatelessWidget {
  const SimpleEcommerce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: const Color(0xFF151026),
      )),
      home: Builder(
        builder: (context) => HomeScreen(),
      ),
    );
  }
}

class CartAppBarAction extends StatefulWidget {
  const CartAppBarAction({Key? key}) : super(key: key);

  @override
  _CartAppBarActionState createState() => _CartAppBarActionState();
}

class _CartAppBarActionState extends State<CartAppBarAction> {
  @override
  void initState() {
    cart.addListener(blankSetState);
    super.initState();
  }

  @override
  void dispose() {
    cart.removeListener(blankSetState);
    super.dispose();
  }

  void blankSetState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Stack(
        alignment: Alignment.center,
        children: [
          const Icon(
            Icons.shopping_cart,
          ),
          if (cart.itemsInCart.isNotEmpty)
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor,
                ),
                child: Center(
                  child: Container(
                    height: 12,
                    width: 12,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: Center(
                      child: Text(
                        cart.itemsInCart.length.toString(),
                        style: const TextStyle(
                          fontSize: 8,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
      onPressed: () => _pushScreen(
        context: context,
        screen: const CartScreen(),
      ),
    );
  }
}

class CallToActionButton extends StatelessWidget {
  const CallToActionButton(
      {required this.onPressed,
      required this.labelText,
      this.minSize = const Size(266, 45),
      Key? key})
      : super(key: key);
  final Function onPressed;
  final String labelText;
  final Size minSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed as void Function()?,
      style: ElevatedButton.styleFrom(
        minimumSize: minSize,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      child: Text(
        labelText,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}

void _pushScreen({required BuildContext context, required Widget screen}) {
  ThemeData themeData = Theme.of(context);
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => Theme(data: themeData, child: screen),
    ),
  );
}

class Category {
  final String title;
  final List<String> selections;

  Category({required this.title, required this.selections});
}

// TODO: Come up with your own categories
Category snacksCategory = Category(title: "Snacks", selections: [
  "Biscuits",
  "Chocolates",
  "Crisps",
  "Nuts & Seeds",
  "Other Snacks"
]);
Category beveragesCategory = Category(title: "Beverages", selections: [
  "Beverages",
  "Ready-to-drink",
]);
Category personalCareCategory = Category(title: "Personal Care", selections: [
  "Bath & Soap",
  "Feminine, Men & Adult Care",
  "Hair Care",
  "Health Products & Medicine",
  "Oral Care"
]);

class Product {
  final String name;
  final List<String> imageUrls;
  final double cost;
  final String? description;
  final List<String>? sizes;

  /// Which overall category this product belongs in. e.g - Men, Women, Pets, etc.
  final Category category;

  /// Represents type of product such as shirt, jeans, pet treats, etc.
  final String productType;

  Product(
      {required this.name,
      required this.imageUrls,
      required this.cost,
      this.description,
      this.sizes,
      required this.category,
      required this.productType});
}

class Cart with ChangeNotifier {
  List<OrderItem> itemsInCart = [];

  double get totalCost {
    double total = 0;
    for (var item in itemsInCart) {
      total += item.product.cost;
    }
    return total;
  }

  void add(OrderItem orderItem) {
    itemsInCart.add(orderItem);
    notifyListeners();
  }

  void remove(OrderItem orderItem) {
    // print(orderItem.product.name);
    itemsInCart.remove(orderItem);
    // print(t);
    notifyListeners();
  }
}

class OrderItem {
  Product product;

  /// Selected size of product; This can be null
  String? selectedSize;

  /// Selected color of product; This can be null
  String? selectedColor;

  OrderItem({required this.product, this.selectedSize, this.selectedColor});
}

final kGreyBackground = Colors.grey[200];
