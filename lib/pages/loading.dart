import 'package:belajar_flutter/services/word_time.dart';
import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  var time = 'Loading';
  var location = 'Asia/Jakarta';

  void setUpWorldTime() async {
    WorldTime instance =
        WorldTime(location: 'Jakarta', urlLocation: 'Asia/Jakarta');
    await instance.getTime();

    setState(() {
      time = instance.time;
      location = instance.location;
    });

    Future.delayed(const Duration(seconds: 15), () {
      return Navigator.pushReplacementNamed(context, '/home', arguments: {
        'location': instance.location,
        'time': instance.time,
      });
    });
  }

  @override
  void initState() {
    super.initState();
    // ignore: avoid_print
    print('hadir pak');
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade400,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              location,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            Text(
              time,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
