import 'package:flutter/cupertino.dart';

class AppLoader extends StatelessWidget {
  final Color? color;

  const AppLoader({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: CupertinoActivityIndicator(color: color));
  }
}
