import 'package:flutter/material.dart';
import 'package:flutter_play/components/my_button.dart';
import 'package:flutter_play/components/my_cart_tile.dart';
import 'package:flutter_play/models/restuarant.dart';
import 'package:flutter_play/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restuarant>(builder: (context, restuarant, child) {
      // cart
      final userCart = restuarant.cart;

      return Scaffold (
        appBar: AppBar(
          title: const Text("Cart"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [

            // clear cart button
            IconButton(
              onPressed: (){
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("Are you sure you want to clear the cart?"),
                    actions: [
                      // cancel button
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Cancel"),
                        ),

                        // yes button
                        TextButton(
                        onPressed: (){
                          Navigator.pop(context);
                          restuarant.clearCart();
                        },
                        child: const Text("Yes"),
                        ),
                    ],
                  ));
              },
              icon: const Icon(Icons.delete),
              )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty ? const Expanded(
                    child: Center(
                      child: Text("Cart is empty..."),
                      ),
                  )
                     : Expanded(
                    child: ListView.builder(
                      itemCount: userCart.length,
                      itemBuilder: (context, index) {
              
                        // get individul cart item
                        final cartItem = userCart[index];
                        // return cart tile UI
                        return MyCartTile(cartItem: cartItem);
                      },
                      ),
                      )
                ],
              ),
            ),

            // button to pay
            MyButton(
              text: "Go to checkout",
            onTap: ()=> Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => const PaymentPage()),
                ),
                ),
            const SizedBox(height: 25,)
          ],
        ),
        );
    },
    );
  }
}