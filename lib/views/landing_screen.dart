import 'package:crowdafrik/views/first-screen.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/background image.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.5,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'CrowdAfrik is a Financial technology (fintech) initiative with a broad range of ideas that aim to provide support, finances and deploy technical exchanges to Africans with the main goal of poverty reduction, industrial development and creating job opportunities.',
                    style: TextStyle(fontWeight: FontWeight.w400),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FirstScreen(),
                          ));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          color: Color(0xFFFE2929),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'GET STARTED',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Image.asset(
                            'assets/icons/arrow_forward_24px.png',
                          )
                        ],
                      )),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
