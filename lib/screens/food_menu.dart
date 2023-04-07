import 'package:flutter/material.dart';
import 'package:panucci_ristorante/cardapio.dart';
import 'package:panucci_ristorante/components/food_item.dart';

class FoodMenu extends StatelessWidget {
const FoodMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final List items = comidas;
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text('Menu', textAlign: TextAlign.center, style: TextStyle(fontFamily: "Caveat", fontSize: 32),),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index){
            return FoodItem(imageURI: items[index]['image'], itemTitle: items[index]['name'], itemPrice: items[index]['price']);
          },
          childCount: items.length
          ))
        ],
      ),
    );
  }
}