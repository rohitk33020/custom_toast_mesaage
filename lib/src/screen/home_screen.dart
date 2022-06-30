import 'package:custom_toast_message/src/utilies/enum/background_enum.dart';
import 'package:custom_toast_message/src/widgets/widgets_index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(onPressed: () => print(BackgroundColor.success),text: 'Success Text',color: BackgroundColor.success,),
            CustomButton(onPressed: () => print(BackgroundColor.info),color: BackgroundColor.info,),
            CustomButton(onPressed: () => print(BackgroundColor.warning),color: BackgroundColor.warning,),
            CustomButton(onPressed: () => print(BackgroundColor.error),color: BackgroundColor.error,),
          ],
        ),
      ),
    );
  }
}
