import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';
import 'package:provider/provider.dart';
import 'screens.dart';

class GroceryScreen extends StatefulWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  State<GroceryScreen> createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<GroceryItemManager>(builder: (context, manager, child){
      return  Scaffold(
        body: buildGroceryScreen(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GroceryItemScreen(manager: manager,),
              ),
            );
          },
          child: const Icon(Icons.add),
        ),
      );
    }
     
    );
  }

  Widget buildGroceryScreen() {
    final manager = Provider.of<GroceryItemManager>(context, listen: false);
        if (manager.groceryItems.isNotEmpty) {
          return GroceryListScreen(manager: manager,);
        } else {
          return const EmptyScreen();
        }
  }
}
