class UserModel {
  String? name, details, img;
  bool? isMorning;
  int? id;

  UserModel({this.name, this.details, this.img, this.isMorning, this.id});
}

List<UserModel> myList = [
  UserModel(
    name: "Burger",
    details:
        "High quality beef medium to well with cheese and bacon on a multigrain bun.",
    img:
        "https://media.istockphoto.com/photos/hamburger-with-cheese-and-french-fries-picture-id1188412964?k=20&m=1188412964&s=612x612&w=0&h=Ow-uMeygg90_1sxoCz-vh60SQDssmjP06uGXcZ2MzPY=",
    // isMorning: false,
    id: 1,
  ),
  UserModel(
    name: "Pancake",
    details:
        "High quality beef medium to well with cheese and bacon on a multigrain bun.",
    img:
        "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2022%2F03%2F20%2F20334-Banana-Pancakes-mfs__2x3.jpg",
    isMorning: true,
    id: 2,
  ),
  UserModel(
    name: "Steak",
    details:
        "High quality beef medium to well with cheese and bacon on a multigrain bun.",
    isMorning: false,
    id: 3,
  ),
  UserModel(
    name: "Tacos",
    details:
        "High quality beef medium to well with cheese and bacon on a multigrain bun.",
    img:
        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-202104-birriatacos-058-1619806492.jpg",
    // isMorning: false,
    id: 4,
  ),
];
