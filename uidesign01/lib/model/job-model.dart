class JobModel {
  String? companyLogo, companyName, jobTitle, companyAddress;
  int? id;
  List<String>? requirement;
  JobModel(
      {this.companyLogo,
      this.companyName,
      this.jobTitle,
      this.companyAddress,
      this.requirement,
      this.id});
}

List<JobModel> generateJobList = [
  JobModel(
    id: 1,
    companyLogo: "assets/images/airbnb_logo.png",
    companyName: "Airbnb inc.",
    companyAddress: "50 Herminia Starvenue,\nCanada",
    jobTitle: "VP Bussiness Intelegence",
    requirement: [
      "Creative with an Eye shape and colors",
      "Understand different materials and productions methods",
      "Creative with an Eye shape and colors",
      "Understand different materials and productions methods",
    ],
  ),
  JobModel(
    id: 1,
    companyLogo: "assets/images/airbnb_logo.png",
    companyName: "Airbnb inc.",
    companyAddress: "50 Herminia Starvenue,\nCanada",
    jobTitle: "VP Bussiness Intelegence",
    requirement: [
      "Creative with an Eye shape and colors",
      "Understand different materials and productions methods",
      "Creative with an Eye shape and colors",
      "Understand different materials and productions methods",
    ],
  ),
  JobModel(
    id: 1,
    companyLogo: "assets/images/airbnb_logo.png",
    companyName: "Airbnb inc.",
    companyAddress: "50 Herminia Starvenue,\nCanada",
    jobTitle: "VP Bussiness Intelegence",
    requirement: [
      "Creative with an Eye shape and colors",
      "Understand different materials and productions methods",
      "Creative with an Eye shape and colors",
      "Understand different materials and productions methods",
    ],
  ),
];
