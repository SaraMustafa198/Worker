import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.green[300],
                        Colors.green[700],
                        Colors.green[900],
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )),
              ),
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                title: Text("Ermy"),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.15,
                left: 20,
                right: MediaQuery.of(context).size.width * 0.3,
                child: Text(
                  "Hi, Welcome to Ermy requests ",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 22,
                  ),
                ),
              ),
              new Row(children: <Widget>[
                new Container(
                  padding: EdgeInsets.fromLTRB(280, 70, 50, 50),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/Profile");
                    },
                    child: new CircleAvatar(
                      backgroundImage:
                          new NetworkImage('https://i.ibb.co/jDvLWGV/user.png'),
                      backgroundColor: Colors.white,
                      radius: 40.0,
                    ),
                  ),
                ),
              ]),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "All Requests",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          TextField(
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'New requests',
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, i) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green[400],
                    child: Text("#"),
                  ),
                  title: Text("Request"),
                  subtitle: Row(
                    children: <Widget>[
                      Chip(
                        backgroundColor: Colors.green[900],
                        label: Text(
                          "Accept",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 7.0,
                      ),
                      Chip(
                        backgroundColor: Colors.green[900],
                        label: Text(
                          "cancel",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          TextField(
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            decoration: InputDecoration(
                border: InputBorder.none, hintText: 'Old requests'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, i) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green[400],
                    child: Text("#"),
                  ),
                  title: Text("Request"),
                  subtitle: Row(
                    children: <Widget>[
                      Chip(
                        backgroundColor: Colors.green[900],
                        label: Text(
                          "Finished",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FunctionalButton extends StatefulWidget {
  final String title;
  final IconData icon;
  final Function() onPressed;

  const FunctionalButton({Key key, this.title, this.icon, this.onPressed})
      : super(key: key);

  @override
  _FunctionalButtonState createState() => _FunctionalButtonState();
}

class _FunctionalButtonState extends State<FunctionalButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RawMaterialButton(
          onPressed: widget.onPressed,
          splashColor: Colors.black,
          fillColor: Colors.white,
          elevation: 15.0,
          shape: CircleBorder(),
          child: Padding(
              padding: EdgeInsets.all(14.0),
              child: Icon(
                widget.icon,
                size: 30.0,
                color: Colors.black,
              )),
        ),
      ],
    );
  }
}

class ProfileWidget extends StatefulWidget {
  final Function() onPressed;

  const ProfileWidget({Key key, this.onPressed}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 4),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.grey, blurRadius: 11, offset: Offset(3.0, 4.0))
          ],
        ),
        child: ClipOval(
          child: new CircleAvatar(
            backgroundImage:
                new NetworkImage('https://i.ibb.co/jDvLWGV/user.png'),
            backgroundColor: Colors.white,
            radius: 40.0,
          ),
        ),
      ),
    );
  }
}

class PriceWidget extends StatefulWidget {
  final String price;
  final Function() onPressed;

  const PriceWidget({Key key, this.price, this.onPressed}) : super(key: key);

  @override
  _PriceWidgetState createState() => _PriceWidgetState();
}

class _PriceWidgetState extends State<PriceWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 4),
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        boxShadow: [
          BoxShadow(
              color: Colors.grey, blurRadius: 11, offset: Offset(3.0, 4.0))
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("\$",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 26,
                  fontWeight: FontWeight.bold)),
          Text(widget.price,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class GoButton extends StatefulWidget {
  final String title;
  final Function() onPressed;

  const GoButton({Key key, this.title, this.onPressed}) : super(key: key);

  @override
  _GoButtonState createState() => _GoButtonState();
}

class _GoButtonState extends State<GoButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 10),
              shape: BoxShape.circle),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              shape: BoxShape.circle,
            ),
            child: RawMaterialButton(
              onPressed: widget.onPressed,
              splashColor: Colors.black,
              fillColor: Colors.blue,
              elevation: 15.0,
              shape: CircleBorder(),
              child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(widget.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28))),
            ),
          ),
        ),
      ],
    );
  }
}
