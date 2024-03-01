import 'package:flutter/material.dart';

class SelectableButton extends StatelessWidget {
  final bool selected;
  final VoidCallback? onPressed;
  final Widget child;

  const SelectableButton({
    Key? key,
    required this.selected,
    this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = selected ? Colors.black : const Color.fromRGBO(245, 245, 245, 50);
    Color textColor = selected ? Colors.white : Colors.black;

    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        minimumSize: MaterialStateProperty.all<Size>(Size(60, 36)),
      ),
      child: child,
    );
  }
}

class BtnWidget extends StatefulWidget {
  BtnWidget({Key? key}) : super(key: key);

  @override
  _BtnWidgetState createState() => _BtnWidgetState();
}

class _BtnWidgetState extends State<BtnWidget> {
  late List<bool> selectedList;
  final List<String> btndata = ['Lifestyle', 'Music', 'Art', 'Books', 'Sport'];

  @override
  void initState() {
    super.initState();
    selectedList = List<bool>.generate(btndata.length, (index) => index == 0);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DefaultTabController(
        length: btndata.length,
        child: Row(
          children: [
            for (int i = 0; i < btndata.length; i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SelectableButton(
                  selected: selectedList[i],
                  onPressed: () {
                    setState(() {
                      for (int j = 0; j < selectedList.length; j++) {
                        selectedList[j] = j == i;
                      }
                    });
                  },
                  child: Text(btndata[i],
                  style: TextStyle(
                    color: selectedList[i] ? Colors.white : Colors.black,
                  ),),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
