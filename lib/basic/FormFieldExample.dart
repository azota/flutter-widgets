import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormFieldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "2. Button 사용법",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Test 입니다."),
            ),
            body: rootWidget()));
  }
}

// 상태 갱신을 위한 위젯 (StatefulWidget)
class rootWidget extends StatefulWidget {
  String _title = "Test";
  // Form의 상태관리
  final _formKey = GlobalKey<FormState>();

  @override
  rootWidgetState createState() {
    return rootWidgetState();
  }
}

class rootWidgetState extends State<rootWidget> {
  @override
  Widget build(BuildContext context) {
    return buildTestBody();
  }

  // State내의 widget 필드는 State를 생성한 StatefulWidget을 지정하고 있다.
  Widget buildTestBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        // Form 예제
        Text(widget._title), //rootWidget의 _title
        Form(
          /* key => wiget간 값을 전달할 때 사용되는 필드*/
          key: widget._formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                validator: (value) {
                  if (value.length < 1) {
                    return '값을 입력해주세요';
                  }
                  return null;
                },
                keyboardType: TextInputType.phone,

                // _formKey.currentState.save() 호출시
                onSaved: (newValue) {
                  print("TextFormField onSaved -> $newValue");

                  // 화면갱신
                  setState(() {
                    widget._title = "$newValue";
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (widget._formKey.currentState.validate()) {
                      // 상태저장 후, 리셋
                      widget._formKey.currentState.save();
                      widget._formKey.currentState.reset();
                    }
                  },
                  child: Text('저장하기'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}