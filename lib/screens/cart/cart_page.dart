import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:easy_eat/providers/cart_provider.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Your Cart")),
      body: cartProvider.cartItems.isEmpty
          ? Center(child: Text("Cart is Empty"))
          : ListView.builder(
              itemCount: cartProvider.cartItems.length,
              itemBuilder: (context, index) {
                final food = cartProvider.cartItems[index];
                return ListTile(
                  title: Text(food.name),
                  subtitle: Text("\$${food.price}"),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle),
                    onPressed: () {
                      cartProvider.removeFromCart(food);
                    },
                  ),
                );
              },
            ),
      bottomNavigationBar: cartProvider.cartItems.isNotEmpty
          ? ElevatedButton(
              onPressed: () {
                cartProvider.clearCart();
              },
              child: Text("Clear Cart"),
            )
          : null,
    );
  }
}
