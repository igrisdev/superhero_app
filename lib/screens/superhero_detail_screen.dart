import 'package:flutter/material.dart';
import 'package:superhero_app/data/model/superhero_detail_response.dart';

class SuperheroDetailScreen extends StatelessWidget {
  final SuperheroDetailResponse superhero;

  const SuperheroDetailScreen({super.key, required this.superhero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Superhero ${superhero.name}")),
      body: Column(
        children: [
          Image.network(
            superhero.url,
            height: 500,
            width: double.infinity,
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
          Text(
            superhero.realName,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: double.parse(
                            superhero.powerStatsResponse.power,
                          ),
                          width: 20,
                          color: Colors.red,
                        ),
                        Text("Power"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: double.parse(
                            superhero.powerStatsResponse.intelligence,
                          ),
                          width: 20,
                          color: Colors.greenAccent,
                        ),
                        Text("Intelligence"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: double.parse(
                            superhero.powerStatsResponse.speed,
                          ),
                          width: 20,
                          color: Colors.green,
                        ),
                        Text("Speed"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: double.parse(
                            superhero.powerStatsResponse.durability,
                          ),
                          width: 20,
                          color: Colors.orange,
                        ),
                        Text("Durability"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: double.parse(
                            superhero.powerStatsResponse.strength,
                          ),
                          width: 20,
                          color: Colors.blue,
                        ),
                        Text("Strength"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: double.parse(
                            superhero.powerStatsResponse.combat,
                          ),
                          width: 20,
                          color: Colors.purple,
                        ),
                        Text("Combat"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
