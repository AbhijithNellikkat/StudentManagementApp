import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            ),
            const CircleAvatar(
              backgroundColor: Colors.white30,
              backgroundImage: NetworkImage(
                  'https://img.icons8.com/?size=512&id=82322&format=png'),
            ),
            const SizedBox(width: 19),
          ],
        ),
        body: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 19, top: 19),
                  child: Text(
                    'Hi , Afsal',
                    style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    ' Today is a good \n day to learn \n something new !',
                    style: TextStyle(
                        letterSpacing: 2,
                        fontSize: 16,
                        fontWeight: FontWeight.w200),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                height: MediaQuery.of(context).size.height * 0.39,
                child: Lottie.network(
                    'https://lottie.host/cdf6dd16-1c5b-4495-a62e-70cdc3f576c4/4Op0NCqmuf.json'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Card(
                      elevation: 7,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 30.0, right: 40.0, bottom: 60, top: 60.0),
                        child: Center(child: Text('Add Student')),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Card(
                      elevation: 7,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 30.0, right: 20.0, bottom: 66, top: 52.0),
                        child: Text('All Students List'),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
     
      ),
    );
  }
}
