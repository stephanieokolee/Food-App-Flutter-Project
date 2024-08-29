import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_play/models/cart_item.dart';
import 'package:flutter_play/models/food.dart';

class Restuarant extends ChangeNotifier  {
  final List<Food> _menu = [
    // swallow
    Food(
      name: "Akpu",
      description: "Traditional African staple, soft and stretchy, perfect with rich soups", 
      imagePath: "lib/image/swallow/akpu.jpeg",
      price: 400,
      category: FoodCategory.swallow,
      availableAddons: [Addon(name: "Extra", price: 400),
      ],
      ),
    Food(
      name: "Eba",
      description: "Golden, grainy cassava dough perfect for soups and stews", 
      imagePath: "lib/image/swallow/eba.jpeg",
      price: 400,
      category: FoodCategory.swallow,
      availableAddons: [Addon(name: "Extra", price: 400),
      ],
      ),
    Food(
      name: "Pounded Yam",
      description: "Smooth, fluffy yam dough pairs well with traditional African soups", 
      imagePath: "lib/image/swallow/pounded_yam.jpeg",
      price: 400,
      category: FoodCategory.swallow,
      availableAddons: [Addon(name: "Extra", price: 400),
      ],
      ),
    Food(
      name: "Wheat",
      description: "Healthy, hearty wheat dough complementing rich, flavorful African dishes", 
      imagePath: "lib/image/swallow/wheat.jpeg",
      price: 400,
      category: FoodCategory.swallow,
      availableAddons: [Addon(name: "Extra", price: 400),
      ],
      ),
    Food(
      name: "Amala",
      description: "Dark, earthy yam flour dough ideal for bold, spicy soups", 
      imagePath: "lib/image/swallow/amala.jpeg",
      price: 400,
      category: FoodCategory.swallow,
      availableAddons: [Addon(name: "Extra", price: 400),
      ],
      ),

      // rice
    Food(
      name: "Jollof Rice",
      description: "Spicy, tomato-based rice dish bursting with rich, savory flavors", 
      imagePath: "lib/image/rice/jollof_rice.jpeg",
      price: 1000,
      category: FoodCategory.rice,
      availableAddons: [
        Addon(name: "Moi-Moi", price: 800),
        Addon(name: "Salad", price: 800),
        Addon(name: "Meat", price: 1000),
      ],
      ),
    Food(
      name: "Fried Rice",
      description: "Colorful, stir-fried rice with vegetables, eggs, and tasty seasonings", 
      imagePath: "lib/image/rice/fried_rice.jpeg",
      price: 1000,
      category: FoodCategory.rice,
      availableAddons: [
        Addon(name: "Moi-Moi", price: 800),
        Addon(name: "Salad", price: 800),
        Addon(name: "Meat", price: 1000),
      ],
      ),
    Food(
      name: "Coconut Rice",
      description: "Creamy, fragrant rice infused with rich, tropical coconut essence", 
      imagePath: "lib/image/rice/coconut_rice.jpeg",
      price: 1000,
      category: FoodCategory.rice,
      availableAddons: [
        Addon(name: "Moi-Moi", price: 800),
        Addon(name: "Salad", price: 800),
        Addon(name: "Meat", price: 1000),
      ],
      ),
    Food(
      name: "Basmatic Rice",
      description: "Long-grain, aromatic rice perfect for pairing with flavorful dishes", 
      imagePath: "lib/image/rice/basmati_rice.jpeg",
      price: 1000,
      category: FoodCategory.rice,
      availableAddons: [
        Addon(name: "Moi-Moi", price: 800),
        Addon(name: "Salad", price: 800),
        Addon(name: "Meat", price: 1000),
      ],
      ),
    Food(
      name: "White Rice",
      description: "Simple, steamed rice, versatile and ideal for any savory sauce", 
      imagePath: "lib/image/rice/white_rice_and_stew.jpeg",
      price: 1000,
      category: FoodCategory.rice,
      availableAddons: [
        Addon(name: "Moi-Moi", price: 800),
        Addon(name: "Salad", price: 800),
        Addon(name: "Meat", price: 1000),
      ],
      ),

      // soup
    Food(
      name: "Afang Soup",
      description: "Nutritious soup made with afang leaves, meat, and rich spices", 
      imagePath: "lib/image/soup/afang_soup.jpeg",
      price: 1000,
      category: FoodCategory.soup,
      availableAddons: [
        Addon(name: "Snail", price: 800),
        Addon(name: "Periwinkles", price: 800),
        Addon(name: "Stock Fish", price: 800),
        Addon(name: "Meat", price: 1000),
      ],
      ),
    Food(
      name: "Bitterleaf Soup",
      description: "Hearty, flavorful soup with bitterleaf, assorted meats, and spices", 
      imagePath: "lib/image/soup/bitterleaf_soup.jpeg",
      price: 1000,
      category: FoodCategory.soup,
      availableAddons: [
        Addon(name: "Snail", price: 800),
        Addon(name: "Stock Fish", price: 800),
        Addon(name: "Meat", price: 1000),
      ],
      ),
    Food(
      name: "Oha Soup",
      description: "Delicious, thick soup made with oha leaves, tender meats, and spices", 
      imagePath: "lib/image/soup/oha_soup.jpeg",
      price: 1000,
      category: FoodCategory.soup,
      availableAddons: [
        Addon(name: "Snail", price: 800),
        Addon(name: "Stock Fish", price: 800),
        Addon(name: "Meat", price: 1000),
      ],
      ),
    Food(
      name: "PepperSoup",
      description: "Spicy, aromatic broth packed with flavors of herbs and spices", 
      imagePath: "lib/image/soup/pepper_soup.jpeg",
      price: 1000,
      category: FoodCategory.soup,
      availableAddons: [
        Addon(name: "Snail", price: 800),
        Addon(name: "Stock Fish", price: 800),
        Addon(name: "Meat", price: 1000),
      ],
      ),
    Food(
      name: "Okro Soup",
      description: "Slimy, flavorful soup with okro, seafood, and a touch of spice", 
      imagePath: "lib/image/soup/okro_soup.jpeg",
      price: 1000,
      category: FoodCategory.soup,
      availableAddons: [
        Addon(name: "Snail", price: 800),
        Addon(name: "Stock Fish", price: 800),
        Addon(name: "Meat", price: 1000),
      ],
      ),

      // Meat
    Food(
      name: "Beef",
      description: "Tender, flavorful beef, expertly seasoned and cooked to perfection", 
      imagePath: "lib/image/meat/beef.jpeg",
      price: 1000,
      category: FoodCategory.meat,
      availableAddons: [
        Addon(name: "Extra", price: 800),
      ],
      ),
    Food(
      name: "Chicken",
      description: "Juicy, succulent chicken, marinated and grilled with savory spices", 
      imagePath: "lib/image/meat/chicken.jpeg",
      price: 1000,
      category: FoodCategory.meat,
      availableAddons: [
        Addon(name: "Extra", price: 800),
      ],
      ),
    Food(
      name: "Fish",
      description: "Fresh, flaky fish, seasoned to perfection and delicately fried", 
      imagePath: "lib/image/meat/fish.jpeg",
      price: 1000,
      category: FoodCategory.meat,
      availableAddons: [
        Addon(name: "Extra", price: 800),
      ],
      ),
    Food(
      name: "Goat Meat",
      description: "Rich, tender goat meat, slow-cooked with aromatic herbs and spices", 
      imagePath: "lib/image/meat/goat_meat.jpeg",
      price: 1000,
      category: FoodCategory.meat,
      availableAddons: [
        Addon(name: "Extra", price: 800),
      ],
      ),
    Food(
      name: "Kpomo",
      description: "Chewy, savory kpomo, stewed in a spicy and flavorful sauce", 
      imagePath: "lib/image/meat/kpomo.jpeg",
      price: 1000,
      category: FoodCategory.meat,
      availableAddons: [
        Addon(name: "Extra", price: 800),
      ],
      ),

      // Drinks
    Food(
      name: "Water",
      description: "Pure, refreshing water, perfectly chilled to quench your thirst", 
      imagePath: "lib/image/drinks/water.jpeg",
      price: 1000,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra", price: 1000),
      ],
      ),
    Food(
      name: "Kunu",
      description: "Traditional, sweetened millet drink, cool and refreshing with a hint of spice", 
      imagePath: "lib/image/drinks/kunu.jpeg",
      price: 1000,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra", price: 1000),
      ],
      ),
    Food(
      name: "Soy Milk",
      description: "Creamy, nutritious soymilk, naturally sweetened and deliciously refreshing", 
      imagePath: "lib/image/drinks/soymilk.jpeg",
      price: 1000,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra", price: 1000),
      ],
      ),
    Food(
      name: "Tigernut Milk",
      description: "Nutty, rich tigernut milk, naturally sweet and delightfully creamy", 
      imagePath: "lib/image/drinks/tigernut_milk.jpeg",
      price: 1000,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra", price: 1000),
      ],
      ),
    Food(
      name: "Zobo",
      description: "Tangy, vibrant hibiscus drink, spiced with ginger and cloves", 
      imagePath: "lib/image/drinks/zobo.jpeg",
      price: 1000,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra", price: 1000),
      ],
      ),
  ];

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  final List<CartItem> _cart = [];

// add to cart operation

  void addToCart(Food food, List<Addon>selectedAddons) {
    
    // see if there's a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons = const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    // if item already exists, increase its quantity
    if  (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
        food: food,
      selectedAddons: selectedAddons,
      ),
      );
    }

    notifyListeners();
  }

// remove from cart operation
  void removeFromCart(CartItem cartItem, List<Addon> selectedAddons) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in cart

  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // how to clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
}