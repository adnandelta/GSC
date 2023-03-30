import 'package:flutter/material.dart';
import 'package:gscproject/home/bloc/home_bloc.dart';
import 'package:gscproject/home/widgets/emoticon_card.dart';
import 'package:gscproject/home/widgets/exercise_tile.dart';
import 'package:gscproject/home/widgets/greet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBody extends StatelessWidget {
  const HomeBody();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff412d6a),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Greet(),
                  const SizedBox(
                    height: 25.0,
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      EmoticonCard(
                        emoticonFace: '😔',
                        mood: 'Down',
                      ),
                      EmoticonCard(
                        emoticonFace: '😊',
                        mood: 'Fine',
                      ),
                      EmoticonCard(
                        emoticonFace: '😁',
                        mood: 'Happy',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(
                      35.0,
                    ),
                    topRight: Radius.circular(
                      35.0,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListView(
                          children: const [
                            ExerciseTile(
                              exercise: 'Period Tracker',
                              subExercise: 'Date',
                              icon: Icons.favorite,
                              color: Colors.pink,
                            ),
                            ExerciseTile(
                              exercise: 'Vending Machine',
                              subExercise: 'Near me',
                              icon: Icons.view_timeline_outlined,
                              color: Colors.blue,
                            ),
                            ExerciseTile(
                              exercise: 'Gynecologist',
                              subExercise: 'Near me',
                              icon: Icons.medical_information_rounded,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
