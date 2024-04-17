import 'package:flutter/material.dart';
import 'package:studym8/index.dart';


class EnrolCorseInstance extends StatefulWidget {
  const EnrolCorseInstance({super.key});

  @override
  State<EnrolCorseInstance> createState() => _EnrolCorseInstanceState();
}

class _EnrolCorseInstanceState extends State<EnrolCorseInstance> {
  EnrollScorse? _character = EnrollScorse.Paypal;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24),
        child: Column(
          children: [
            for (var enrol in EnrollScorse.values)
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: RadioListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    tileColor: Color(0xFFEEEDED),
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: Row(
                      children: [
                        Image(image: AssetImage("${enrol.image}")),
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          enrol.title,
                          style:roboto16TextStyle,
                        )
                      ],
                    ),
                    value: enrol,
                    groupValue: _character,
                    onChanged: (value) {
                      setState(() {
                        _character = value as EnrollScorse;
                      });
                    },
                  ))
          ],
        ),
      ),
    );
  }
}
