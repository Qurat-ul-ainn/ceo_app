import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  final bool passHide;
  final String txtHint;
  final txtController;

  const TextFieldComponent(
      {Key key, this.txtHint, this.txtController, this.passHide})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      height: 42,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(color: Colors.grey)),
      child: TextFormField(
        controller: txtController,
        obscureText: passHide,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20.0,bottom: 5.0),
          hintText: txtHint,
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: Colors.grey.shade500,
          ),
        ),
      ),
    );
  }
}

//Class For BlueButton
class Button extends StatelessWidget {
  final String btnTxt;
  final Function btnFunction;

  const Button({
    Key key,
    this.btnTxt,
    this.btnFunction,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      height: 42,
      width: double.infinity,
      child: FlatButton(
        onPressed: btnFunction,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(8.0),
        ),
        color: Colors.blue[900],
        child: Text(
          btnTxt,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

//navigate button
class FltButton extends StatelessWidget {
  final String btnTxt;
  final Function btnFunction;

  const FltButton({Key key, this.btnTxt, this.btnFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: btnFunction,
        child: Text(
          btnTxt,
          style: TextStyle(color: Colors.blue[700], fontSize: 15),
        ),
      ),
    );
  }
}

//Class For Artist ,Skip ,User Sign up Button
class SignUpButton extends StatelessWidget {
  final String btnTxt;
  final Function btnFunction;

  const SignUpButton({
    Key key,
    this.btnTxt,
    this.btnFunction,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      height: 42,
      //color: Colors.green,
      width: double.infinity,
      child: FlatButton(
        onPressed: btnFunction,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(4.0),
        ),
        color: Colors.blue[700],
        child: Text(
          btnTxt,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

//ListViewComponent
class ListViewComponent extends StatelessWidget {
  final imageUrl;
  final int price;
  final condition;
  final location;

  const ListViewComponent(
      {Key key, this.imageUrl, this.price, this.condition, this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.all(8.0),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(6.0,),
          border: Border.all(color: Colors.black,width: 1.5)),
      child: Row(
        children: [
          Container(
            height: 130,
            width: 130,
            color: Colors.white,
            child: Center(child: Text("DEMO IMAGE",style: TextStyle(fontWeight: FontWeight.bold),)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                    width: 1.5,
                  )),
                  child: Text(
                    'FEATURED',
                  ),
                ),
                Text(
                  'Rs. $price',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text('$condition'),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      // color: Colors.green,
                      // size: 30.0,
                    ),
                    Text('$location'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
