import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../entities/player.dart';
import '../provider/player_provider.dart';

class NewEditPlayerScreen extends ConsumerWidget {
  NewEditPlayerScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  final TextEditingController imageController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nuevo Jugador')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Nombre'),
            ),
            TextField(
              controller: descController,
              decoration: const InputDecoration(labelText: 'Descripción'),
            ),
            TextField(
              controller: imageController,
              decoration: const InputDecoration(labelText: 'URL de la Imagen'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final newPlayer = Player(
                  name: nameController.text,
                  description: descController.text,
                  image: imageController.text,
                );

               
                ref.read(playerProvider.notifier).update((state) {
                  return [...state, newPlayer];  //crea una lista nueva ponele el state y ademas el newPlayer
                });

                
                context.pop();
              },
              child: const Text('Guardar'),
            )
          ],
        ),
      ),
    );
  }
}