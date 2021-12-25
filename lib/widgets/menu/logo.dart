import 'package:flutter/material.dart';

import '../../constants.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: kSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 2),
            Image(
              image: AssetImage("assets/images/logo.jpg"),
              width: 100.0,
            ),
            Spacer(),
            Text(
              'RCE Hotels',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              'Wecolme our RCE Hotels in Nizwa,OM',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
