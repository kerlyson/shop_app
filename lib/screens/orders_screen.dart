import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/orders.dart' show Orders;
import 'package:shop_app/widgets/app_drawer.dart';
import 'package:shop_app/widgets/order_item.dart';


class OrdersScreen extends StatelessWidget {

  static const routeName = 'orders';

  const OrdersScreen();

  @override
  Widget build(BuildContext context) {

    final ordersData = Provider.of<Orders>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Your Orders'),),
      body: ListView.builder(
        itemCount: ordersData.orders.length,
        itemBuilder: (_, i) => OrderItem(ordersData.orders[i]),
      ),
      drawer: AppDrawer(),
    );
  }
}