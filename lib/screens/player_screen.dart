import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../entities/player.dart';

class PlayerScreen extends StatelessWidget {

  PlayerScreen({super.key});

  List<Player> players = [

    Player(
      name: "Lionel Messi",
      description: 
      "Nacido en Rosasrio jugó profesionalemnte en el Barcelona(2004-2021), Paris Saint Germain (2021-2023) e Inter de Miamia(2023-presente), ademas de esto es el capitan de la Seleccion Argentina y el mejor jugador de todos los tiempo.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKjSMEx8zlf433jxyKEP9DiOBJVXDg-CpvHar3BFrHLEao10Xrti0IJ4EO&s=10.jpg",
    ),

    Player(
      name: "Lautaro Martinez",
      description: "Nacido en Bahia Blanca jugo profesionalmente en Racing Club (2015-2018) y el Inter de Milán (2018-presente) club del cual es el 10 y capitán ",
      image: "https://assets.goal.com/images/v3/blt909c98575cff6814/GOAL%20-%20Blank%20WEB%20-%20Facebook%20-%202024-07-13T191231.216.jpg?auto=webp&format=pjpg&width=3840&quality=60",
    ),

    Player(
      name: "Lisandro Lopez",
      description: "EX jugador de Racing, autor del golazo de chilena a Independiente en 2016",
      image: "https://media.ambito.com/p/211a5e74849cb90bc796e70304d351e0/adjuntos/239/imagenes/036/347/0036347985/lisandro-lopez.jpg",
    ),

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Jugadores"),
      ),

      body: Column(
        children: [
          ListView.builder(
          
            itemCount: players.length,
          
            itemBuilder: (context, index) {
              
              return SizedBox(
                height:100,
                child: Card(
                  child: ListTile(
                    leading: SizedBox(
                    height: 300, 
                    child: Image.network(
                     players[index].image,        
                   ),
                    ),
                
                    title: Text(
                      players[index].name,
                    ),
                
                    trailing: Icon(
                      Icons.arrow_forward,
                    ),
                
                    onTap: () {
                      context.go(
                        '/detail',
                        extra: players[index],
                      );
                
                    },
                
                  ),
                
                ),
              );
          
            },
          ),
          ElevatedButton(
        onPressed: () {
          context.push('/new_edit_players');
          },
        child: const Text("Agregar"),
        )
        ],
      ),     
    );
  }
}