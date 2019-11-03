import 'package:flutter/material.dart';
import 'package:my_gmail/Class/data/email.dart';
import 'package:my_gmail/Class/data/generalized_file.dart';
import 'package:my_gmail/UI/app/appdrawer.dart';
import 'package:my_gmail/UI/common/email_fab.dart';
import 'package:my_gmail/UI/common/email_tile.dart';
import 'package:my_gmail/UI/common/email_view.dart';
import 'package:responsive_scaffold/responsive_scaffold.dart';
import 'package:floating_search_bar/floating_search_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<EmailItems> _dummyemails = [];

  @override
  void initState() {
    _dummyemails = dummyemails;
    //Passing the value of Dummy Emails to the variable to access in this file and use it
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveListScaffold.builder(
      itemCount: _dummyemails?.length ?? 0,
      //used to check if there is in the item list of Email Items else return 0
      itemBuilder: (BuildContext context, int index) {
        return EmailListTile(
          items: _dummyemails[index],
          favChanged: () {
            setState(() {
              _dummyemails[index].fav = !_dummyemails[index].fav;
            });
          },
        );
      },
      detailBuilder: (BuildContext context, int index, bool tablet) {
        return DetailsScreen(
          appBar: AppBar(
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.archive),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.delete_outline),
                onPressed: () {
                  setState(() {
                    _dummyemails.removeAt(index);
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.mail_outline),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
          body: EmailView(
            items: _dummyemails[index],
            favChanged: () {
              setState(() {
                _dummyemails[index].fav = !_dummyemails[index].fav;
              });
            },
          ),
        );
      },
      floatingActionButton: EmailFab(),
      drawer: AppDrawer(),

      //slivers are more dynamic widget than the normal ones we use i.e. used for scrolling
      slivers: <Widget>[
        SliverFloatingBar(
          title: TextField(
            decoration: InputDecoration.collapsed(hintText: "Search mail"),
          ),
          trailing: CircleAvatar(
            child: Text("MV"),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.only(
                top: 12.0, bottom: 12.0, right: 12.0, left: 15.0),
            child: Text(
              "INBOX",
              style: TextStyle(
                fontSize: 13.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
