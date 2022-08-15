import 'package:doctor_appointment_app/models/doctor_model.dart';
import 'package:doctor_appointment_app/models/fotmat_model.dart';
import 'package:flutter/material.dart';

List<DoctorModel> doctorList = [
  DoctorModel(
    imageURL: "assets/images/female-doctor.png",
    name: "Dr. Perrin",
    occupation: "Neurology",
    fee: "\$30",
    rating: "5",
  ),
  DoctorModel(
    imageURL: "assets/images/male-doctor.png",
    name: "Dr. Larry Chin",
    occupation: "Allergy Specialist",
    fee: "\$50",
    rating: "4.5",
  ),
  DoctorModel(
    imageURL: "assets/images/female-doctor.png",
    name: "Dr. Clara Gaultney",
    occupation: "General practitioner",
    fee: "\$50",
    rating: "4.5",
  ),
  DoctorModel(
    imageURL: "assets/images/male-doctor.png",
    name: "Dr. Sawyer Welton",
    occupation: "Oncologist",
    fee: "\$50",
    rating: "4.5",
  ),
  DoctorModel(
    imageURL: "assets/images/female-doctor.png",
    name: "Dr. Marcella",
    occupation: "Dentist",
    fee: "\$50",
    rating: "4.5",
  ),
  DoctorModel(
    imageURL: "assets/images/male-doctor.png",
    name: "Dr. Reed Thorsen",
    occupation: "Dermatologist",
    fee: "\$50",
    rating: "4.5",
  ),
];

List<FormatModel> FormatList = [
  FormatModel(
    formatIcon: Icons.chat_bubble_outline_outlined,
    formatTitle: "Start\nConversation",
    IconBgColor: Color(0xffAAE18F),
  ),
  FormatModel(
    formatIcon: Icons.video_call_outlined,
    formatTitle: "Join\nLive video call",
    IconBgColor: Color(0xff0957DE),
  ),
];
