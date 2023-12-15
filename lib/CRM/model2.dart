class userdetails {
  String? name;
  String? phno;
  String? user;
  String? dob;
  String? add;
  userdetails(this.name,this.phno,this.user,this.dob, this.add);

}
List userDetails= userData.map((ab)=>userdetails(ab["Name"],ab["phno"],ab["user"],ab["dob"],ab["add"])).toList();
var userData=[
  {
    "Name":"name",
    "phno":"ball",
    "user":"121",
    "dob":"2",
    "add":"add",

  }

];
