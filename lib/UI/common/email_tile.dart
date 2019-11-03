import 'package:flutter/material.dart';
import 'package:my_gmail/Class/data/email.dart';
import 'package:intl/intl.dart';

class EmailListTile extends StatelessWidget {
  EmailListTile({
    this.favChanged,
    @required this.items,
  });
  final EmailItems items;
  final VoidCallback favChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12.0,right: 12.0),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              radius: 25.0,
              child: Text(items?.avatar ?? ""),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    items.title ?? "",
                    style: Theme.of(context).textTheme.display1.copyWith(
                        fontSize: 15.5,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.0),
                  ),
                  Text(items.description ?? "",
                      style: Theme.of(context)
                          .textTheme
                          .body1
                          .copyWith(fontSize: 14.0, color: Colors.grey)),
                ],
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              Text(
                DateFormat.jm().format(items.date ?? DateTime.now()),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
              ),
              IconButton(
                icon: (items.fav ?? false)
                    ? Icon(
                        Icons.star,
                        color: Colors.amber,
                      )
                    : Icon(Icons.star_border),
                onPressed: favChanged,
              )
            ],
          )
        ],
      ),
    );
  }
}
