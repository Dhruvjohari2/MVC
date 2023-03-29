// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

class Welcome {
  Welcome({
    required this.app,
    required this.appBar,
    required this.bottomNavigationBar,
    required this.listTile,
    required this.elevatedButton,
    required this.textButton,
    required this.textInputDecoration,
    required this.textColor,
    required this.tabBar,
    required this.isActive,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  final App app;
  final AppBar appBar;
  final BottomNavigationBar bottomNavigationBar;
  final ListTile listTile;
  final ElevatedButton elevatedButton;
  final TextButton textButton;
  final TextInputDecoration textInputDecoration;
  final TextColor textColor;
  final TabBar tabBar;
  final bool isActive;
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int v;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    app: App.fromJson(json["app"]),
    appBar: AppBar.fromJson(json["appBar"]),
    bottomNavigationBar: BottomNavigationBar.fromJson(json["bottomNavigationBar"]),
    listTile: ListTile.fromJson(json["listTile"]),
    elevatedButton: ElevatedButton.fromJson(json["elevatedButton"]),
    textButton: TextButton.fromJson(json["textButton"]),
    textInputDecoration: TextInputDecoration.fromJson(json["textInputDecoration"]),
    textColor: TextColor.fromJson(json["textColor"]),
    tabBar: TabBar.fromJson(json["tabBar"]),
    isActive: json["is_active"],
    id: json["_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    v: json["__v"],
  );
}

class App {
  App({
    required this.appBackgroundColor,
  });

  final String appBackgroundColor;

  factory App.fromJson(Map<String, dynamic> json) => App(
    appBackgroundColor: json["appBackgroundColor"],
  );

}

class AppBar {
  AppBar({
    required this.iconColor,
    required this.textColor,
    required this.backgroundColor,
  });

  final String iconColor;
  final String textColor;
  final String backgroundColor;

  factory AppBar.fromJson(Map<String, dynamic> json) => AppBar(
    iconColor: json["iconColor"],
    textColor: json["textColor"],
    backgroundColor: json["backgroundColor"],
  );

  Map<String, dynamic> toJson() => {
    "iconColor": iconColor,
    "textColor": textColor,
    "backgroundColor": backgroundColor,
  };
}

class BottomNavigationBar {
  BottomNavigationBar({
    required this.selectedTextColor,
    required this.unSelectedTextColor,
    required this.backgroundColor,
  });

  final String selectedTextColor;
  final String unSelectedTextColor;
  final String backgroundColor;

  factory BottomNavigationBar.fromJson(Map<String, dynamic> json) => BottomNavigationBar(
    selectedTextColor: json["selectedTextColor"],
    unSelectedTextColor: json["unSelectedTextColor"],
    backgroundColor: json["backgroundColor"],
  );

  Map<String, dynamic> toJson() => {
    "selectedTextColor": selectedTextColor,
    "unSelectedTextColor": unSelectedTextColor,
    "backgroundColor": backgroundColor,
  };
}

class ElevatedButton {
  ElevatedButton({
    required this.backgroundColor,
    required this.textColor,
  });

  final String backgroundColor;
  final String textColor;

  factory ElevatedButton.fromJson(Map<String, dynamic> json) => ElevatedButton(
    backgroundColor: json["backgroundColor"],
    textColor: json["textColor"],
  );

  Map<String, dynamic> toJson() => {
    "backgroundColor": backgroundColor,
    "textColor": textColor,
  };
}

class ListTile {
  ListTile({
    required this.iconColor,
    required this.textColor,
  });

  final String iconColor;
  final String textColor;

  factory ListTile.fromJson(Map<String, dynamic> json) => ListTile(
    iconColor: json["iconColor"],
    textColor: json["textColor"],
  );

  Map<String, dynamic> toJson() => {
    "iconColor": iconColor,
    "textColor": textColor,
  };
}

class TabBar {
  TabBar({
    required this.textColor,
    required this.indicatorUnderLineColor,
  });

  final String textColor;
  final String indicatorUnderLineColor;

  factory TabBar.fromJson(Map<String, dynamic> json) => TabBar(
    textColor: json["textColor"],
    indicatorUnderLineColor: json["indicatorUnderLineColor"],
  );

}

class TextButton {
  TextButton({
    required this.textColor,
  });

  final String textColor;

  factory TextButton.fromJson(Map<String, dynamic> json) => TextButton(
    textColor: json["textColor"],
  );

  Map<String, dynamic> toJson() => {
    "textColor": textColor,
  };
}

class TextColor {
  TextColor({
    required this.wholeAppTextColor,
  });

  final String wholeAppTextColor;

  factory TextColor.fromJson(Map<String, dynamic> json) => TextColor(
    wholeAppTextColor: json["wholeAppTextColor"],
  );

  Map<String, dynamic> toJson() => {
    "wholeAppTextColor": wholeAppTextColor,
  };
}

class TextInputDecoration {
  TextInputDecoration({
    required this.iconColor,
    required this.hintColor,
    required this.labelTextColor,
  });

  final String iconColor;
  final String hintColor;
  final String labelTextColor;

  factory TextInputDecoration.fromJson(Map<String, dynamic> json) => TextInputDecoration(
    iconColor: json["iconColor"],
    hintColor: json["hintColor"],
    labelTextColor: json["labelTextColor"],
  );

  Map<String, dynamic> toJson() => {
    "iconColor": iconColor,
    "hintColor": hintColor,
    "labelTextColor": labelTextColor,
  };
}
