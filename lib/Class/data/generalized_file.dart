import 'package:my_gmail/Class/data/email.dart';

List<EmailItems> dummyemails = <EmailItems>[
  EmailItems(
    avatar: "MV",
    title: "Mohit Vadsak",
    fav: true,
    date: DateTime.now(),
    description:
        "Happy Diwali! May prosperity and happiness fill your life with the shine of diyas and the echoes of chants.",
  ),
  EmailItems(
    avatar: "AP",
    title: "Ankita Patil",
    fav: true,
    date: DateTime.parse("2019-10-27 13:05:00"),
    description:
        "Happy New Year! I resolve to stop wasting my resolutions on myself and use them to repay you for the warmth you’ve shown me.",
  ),
  EmailItems(
    avatar: "NR",
    title: "Naitik Rathod",
    fav: false,
    date: DateTime.parse("2019-10-27 10:55:55"),
    description: "Happy Diwali Dostaar!",
  ),
  EmailItems(
    avatar: "AS",
    title: "Aagam Shah",
    fav: false,
    date: DateTime.parse("2019-10-27 08:03:55"),
    description:
        "Happy New Year! May the New Year bring lots of happiness in your life.",
  ),
  EmailItems(
    avatar: "G",
    title: "Google",
    fav: false,
    date: DateTime.utc(1989, DateTime.november, 9),
    description: "Security alert for your linked Google Account",
  ),
];
