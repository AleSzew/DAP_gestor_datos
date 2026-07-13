import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/entities/player.dart';

class DetailScreen extends StatelessWidget {
   Player player;
   DetailScreen({
    super.key,
    required this.player,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(player.name),
      ),

      body: Center(

        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
          
            mainAxisAlignment: MainAxisAlignment.center,
          
            children: [
          
              Image.network(
                player.image,
                width: 250,
              ),
          
              SizedBox(height: 20),
          
              Text(
                player.name,
                style: TextStyle(fontSize: 25),
              ),
          
              SizedBox(height: 20),
                
              Text(player.description),
              ElevatedButton(
              onPressed: () {
              context.push('/new_edit_players');
              },
              child: const Text("Editar"),
            ),
            ElevatedButton(
            onPressed: () {
            context.push('/new_edit_players');
             },
            child: const Text("Eliminar"),
            )
            ],
            
          ),
        ),

      ),

    );
  }
}