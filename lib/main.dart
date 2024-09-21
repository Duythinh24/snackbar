import 'package:flutter/material.dart';
import 'package:practicesnackbar/close.dart';
import 'package:practicesnackbar/size.dart';
import 'package:practicesnackbar/title.dart';

void main() {
  runApp(const MyApp());
}

final BigSizeTitle = tieude();
final TitleNotifications = notifications();
final CloseIcon = iconclose();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(child: MyState()),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyState extends StatefulWidget {
  const MyState({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyWidgetState();
  }
}

class _MyWidgetState extends State<MyState> {
  @override
  Widget build(BuildContext context) {
    List<Widget> indexs = [
      _button1(context),
      _button2(context),
      _button3(context),
      _button4(context),
      _button5(context),
      _button6(context),
     // _button7(context),
    ];
    return Container(
      padding: const EdgeInsets.only(top: 220),
      child: Center(
        child: SizedBox(
          width: 200,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return indexs[index];
            },
            itemCount: 6,
          ),
        ),
      ),
    );
  }
}

Widget _button1(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(20),
    child: ElevatedButton(
        onPressed: () async {
          await BigSizeTitle.showSnackhastitle(
              context: context,
              type: AlertType.Success,
              title: null,
              message: 'Write success description here');
          await Future.delayed(const Duration(seconds: 1));
          await BigSizeTitle.showSnackhastitle(
              context: context,
              type: AlertType.Warning,
              title: null,
              message: 'Write warning description here');
          await Future.delayed(const Duration(seconds: 1));
          await BigSizeTitle.showSnackhastitle(
              context: context,
              type: AlertType.Description,
              title: null,
              message: 'Write description here');
          await Future.delayed(const Duration(seconds: 1));
          await BigSizeTitle.showSnackhastitle(
              context: context,
              type: AlertType.Error,
              title: null,
              message: 'Write error description here');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          padding: const EdgeInsets.all(20),
        ),
        child:
            const Text("Not Title Big", style: TextStyle(color: Colors.white))),
  );
}

Widget _button2(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(20),
    child: ElevatedButton(
        onPressed: () async {
          await TitleNotifications.showSnackSizetitle(
              context: context,
              type: AlertType.Success,
              SizeSnack: false,
              message: "Write success description here");
          await Future.delayed(const Duration(seconds: 1));
          await TitleNotifications.showSnackSizetitle(
              context: context,
              type: AlertType.Warning,
              SizeSnack: false,
              message: "Write warning description here");
          await Future.delayed(const Duration(seconds: 1));
          await TitleNotifications.showSnackSizetitle(
              context: context,
              type: AlertType.Error,
              SizeSnack: false,
              message: "Write error description here");
          await Future.delayed(const Duration(seconds: 1));
          await TitleNotifications.showSnackSizetitle(
              context: context,
              type: AlertType.Description,
              SizeSnack: false,
              message: "Write description here");
          await Future.delayed(const Duration(seconds: 1));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          padding: const EdgeInsets.all(20),
        ),
        child: const Text("Not Title Small",
            style: TextStyle(color: Colors.white))),
  );
}

Widget _button3(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(20),
    child: ElevatedButton(
        onPressed: () async {
          await BigSizeTitle.showSnackhastitle(
              context: context,
              type: AlertType.Success,
              title: 'Success Title',
              message: 'Write success description here');
          await Future.delayed(const Duration(seconds: 1));
          await BigSizeTitle.showSnackhastitle(
              context: context,
              type: AlertType.Warning,
              title: 'Warning Title',
              message:
                  'Warning Description Warning Description Warning Description');
          await Future.delayed(const Duration(seconds: 1));
          await BigSizeTitle.showSnackhastitle(
              context: context,
              type: AlertType.Description,
              title: 'Info Description',
              message: 'Info Description Info Description Info Description');
          await Future.delayed(const Duration(seconds: 1));
          await BigSizeTitle.showSnackhastitle(
              context: context,
              type: AlertType.Error,
              title: 'Error Title',
              message: 'Error Description Error Description Error Description');
          await Future.delayed(const Duration(seconds: 1));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          padding: const EdgeInsets.all(20),
        ),
        child: const Text("Title Big", style: TextStyle(color: Colors.white))),
  );
}

Widget _button4(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(20),
    child: ElevatedButton(
        onPressed: () async {
          await TitleNotifications.showSnackSizetitle(
              context: context,
              type: AlertType.Success,
              title: 'Success Title',
              message: 'Write success description here',
              SizeSnack: false);
          await Future.delayed(const Duration(seconds: 1));
          await TitleNotifications.showSnackSizetitle(
              context: context,
              type: AlertType.Warning,
              title: 'Warning Title',
              message:
                  'Warning Description Warning Description Warning Description',
              SizeSnack: false);
          await Future.delayed(const Duration(seconds: 1));
          await TitleNotifications.showSnackSizetitle(
              context: context,
              type: AlertType.Description,
              title: 'Info Description',
              message: 'Info Description Info Description Info Description',
              SizeSnack: false);
          await Future.delayed(const Duration(seconds: 1));
          await TitleNotifications.showSnackSizetitle(
              context: context,
              type: AlertType.Error,
              title: 'Error Title',
              message: 'Error Description Error Description Error Description',
              SizeSnack: false);
          await Future.delayed(const Duration(seconds: 1));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          padding: const EdgeInsets.all(20),
        ),
        child:
            const Text("Title Small", style: TextStyle(color: Colors.white))),
  );
}

Widget _button5(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(20),
    child: ElevatedButton(
        onPressed: () {
          CloseIcon.showhasclose(
              context: context,
              type: AlertType.Success,
              title: 'Success Title',
              showCloseIcon: false,
              message: 'Write success description here',
              );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          padding: const EdgeInsets.all(20),
        ),
        child: const Text("Has IconClose", style: TextStyle(color: Colors.white))),
  );
}

Widget _button6(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(20),
    child: ElevatedButton(
        onPressed: () {
          CloseIcon.showhasclose(
              context: context,
              type: AlertType.Warning,
              title: 'Warning Title',
              showCloseIcon: true,
              message: 'Write success description here',
             );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          backgroundColor: Colors.deepOrange,
        ),
        child: const Text("Not IconClose", style: TextStyle(color: Colors.white))),
  );
}
// Widget _button7(BuildContext context) {
//   return Container(
//     padding: const EdgeInsets.all(20),
//     child: ElevatedButton(
//         onPressed: () {
//           CloseIcon.showhasclose(
//             context: context,
//             type: AlertType.Error,
//             title: 'Warning Title',
//             showCloseIcon: false,
//             message: 'Write success description here',
//           );
//         },
//         style: ElevatedButton.styleFrom(
//           padding: const EdgeInsets.all(20),
//           backgroundColor: Colors.deepOrange,
//         ),
//         child: const Text("Test", style: TextStyle(color: Colors.white))),
//   );
// }
