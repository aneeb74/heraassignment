import 'package:flutter/material.dart';

class HomeModel {
  String image;
  String name;
  String location1;
  String location2;
  String text;
  String image2;
  String amount;
  String phone;

  HomeModel(
      {required this.name,
      required this.image,
      required this.location1,
      required this.location2,
      required this.text,
      required this.image2,
      required this.phone,
      required this.amount});

  static List<HomeModel> home = [
    HomeModel(
        name: "Maaz Afridi",
        image: "assets/aneeb.jpg",
        location1: "KDA,",
        location2: "kohat",
        text: "Hi ,This is a house and i want to buy it\n If some one are interested\n then contact with and this place is located  by #Kohat KDA.\nMy Contact No. 0335-3243044 ",
        image2: "assets/greenhouse.png",
        phone: "030691651",
        amount: "220000pkr."),
    HomeModel(
        name: " Majeed Ahmad",
        image: "assets/hassan.jpg",
        location1: "3DTown,",
        location2: "Pes",
        text: "Hey,\n I have a flat,if someone want to look it for buying\n Contact me on this number:0335-3243044 ",
        image2: "assets/bluehouse.png",
        phone: "0335-3243",
        amount: "220000pkr."),
  ];
}
