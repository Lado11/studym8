import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/index.dart';


class EnrollPaymnetPin extends StatelessWidget {
  const EnrollPaymnetPin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enroll Course"),
        centerTitle: true,
        leading: const Icon(
          CupertinoIcons.arrow_left,
        ),
      ),
      body: SafeArea(
        child:Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child:  Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 92,),
              Text("Enter your pin to confirm payment",style: roboto16TextStyle,),
              const SizedBox(height: 42,),
              CustomPinInput(),
            ],
          ),
        )
      ),
    );
  }
}
