class MyPersonalInfo {
  final String? firstName;
  final String? nickName;
  final String? lastName;
  final String? subTitle;
  final String? age;

  MyPersonalInfo({
    this.firstName,
    this.nickName,
    this.lastName,
    this.subTitle,
    this.age,
  });

  String getFullName() {
    return (firstName ?? '') + ' ' + (nickName ?? '') + ' ' + (lastName ?? '');
  }
}

final MyPersonalInfo myInfo = MyPersonalInfo(
    firstName: "Franco",
    nickName: "Neo",
    lastName: "Recasata",
    subTitle: "UA&P BSIT Student",
    age: "22");
