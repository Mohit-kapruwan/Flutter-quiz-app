import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget();

  @override
 _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool _isButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(seconds: 1),
      child: _isButtonClicked
          ? CupertinoButton(
              onPressed: () {
               
              },
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(50),
              child: const Icon(
                Icons.check,
                color: Colors.white,
              ),
            )
          : InkWell(
              onTap: () async {
                setState(() {
                  _isButtonClicked = true;
                });
                await Future.delayed(const Duration(seconds: 1));
                // ignore: use_build_context_synchronously
                await Navigator.pushNamed(context, '/home');
                setState(() {
                  _isButtonClicked = false;
                });
              },
              child: AnimatedContainer(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
                duration: const Duration(seconds: 1),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Start Quiz",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
    );
  }
}