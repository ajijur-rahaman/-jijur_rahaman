import 'package:flutter/material.dart';

class End_Drawer extends StatefulWidget {
  const End_Drawer({super.key});
  @override
  State<End_Drawer> createState() => End_DrawerState();
}

class End_DrawerState extends State<End_Drawer> {
  int? selectedColorsIndex;
  final List<Color> colorLabels = [
    Color(0xffCE8722),
    Color(0xffDC4447),
    Color(0xff181E27),
    Color(0xff44565C),
    Color(0xffE4E4E4),
    Color(0xff6D4F44),
    Color(0xffDFA8A9),
  ];
  double _sliderVal = 50.0;
  int? selectedRating;

  int? selectedButtonIndex;
  final List<String> buttonNames = ['Reset', 'Apply'];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Filter",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: _closeEndDrawer,
                    icon: Icon(Icons.cancel, size: 25),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(color: Color(0xffF3F3F6)),
              Text(
                "Price",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Slider(
                max: 100.0,
                min: 0,
                activeColor: Color(0xff33302E),
                value: _sliderVal,
                divisions: 3,
                label: _sliderVal.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _sliderVal = value;
                  });
                },
              ),
              Text('Color', style: TextStyle(fontSize: 18)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(7, (index) {
                  return Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: colorLabels[index],
                    ),
                  );
                }),
              ),
              SizedBox(height: 10),
              Text('Start Rating', style: TextStyle(fontSize: 18)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  5,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedRating = index + 1;
                      });
                    },
                    child: RatingCircle(
                      number: (index + 1).toString(),
                      isSelected: selectedRating == index + 1,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text('Category', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Container(
                height: 40,
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.pin_drop),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_drop_down),
                    ),
                    hintText: 'Crop Tops',

                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBox(title: '50% off'),
                  CustomBox(title: '40% off'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBox(title: '30% off'),
                  CustomBox(title: '25% off'),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  2,
                  (index) => ButtonModel(
                    name: buttonNames[index],
                    isSelected: selectedButtonIndex == index,
                    onTap: () {
                      setState(() {
                        selectedButtonIndex = index;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: IconButton(onPressed: _openEndDrawer, icon: Icon(Icons.menu)),
      ),
    );
  }
}

class RatingCircle extends StatelessWidget {
  final String number;
  final bool isSelected;

  const RatingCircle({required this.number, this.isSelected = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.black : Colors.transparent,
        border: Border.all(color: Colors.black, width: 1.5),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            size: 10,
            color: isSelected ? Colors.white : Colors.black,
          ),
          Text(
            number,
            style: TextStyle(
              fontSize: 12,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonModel extends StatelessWidget {
  final String name;
  final bool isSelected;
  final VoidCallback? onTap;
  const ButtonModel({required this.name, this.isSelected = false, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.black : Colors.white,
        ),
        onPressed: onTap,
        child: Text(
          name,
          style: TextStyle(color: isSelected ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}

class CustomBox extends StatelessWidget {
  final String title;
  const CustomBox({required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 40,

      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xff33302E),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.clear)),
        ],
      ),
    );
  }
}
