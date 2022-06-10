//For teachers
import 'dart:io';

class Teacher {
  late String firstName; //first name of teacher
  late String lastName; //last name of teacher
  late String qualification; //Qualification of teacher
  late String exp; //Experiance of the person
  late int pay; //Pay of the Teacher
  late String subj; //subject whos he/she teach
  late String lec; //Lecture per Week
  late String addrs; //Adders of teacher home
  late int cel_no; //Phone number
  late String blod_grp; //Bool Group
  late int serves; //Number of serves in School
  late int id; //Number of serves in School

  late int choice;
  var teacherList = [];
  // Starter menu
  void bankMenu() {
    print("************Menu*************");
    print("1:Create a new entry.");
    print("2:Update the existing entry by id");
    print("3:Delete the entry.");
    print("4:For showing the specific data here...");
    print("5:Display All Records here...");
    print("6:For exit...");
  }

// user choice here...
  // get the user choice here...
  void userChoice() {
    print("Enter Your choice here...");
    choice = int.parse(stdin.readLineSync()!);
  }

  // if the user choice 1
  // Opening the new account process is given below!
  void OpenAccount() {
    print("Enter the id here...");
    id = int.parse(stdin.readLineSync()!);
    print("Enter the first name...");
    firstName = stdin.readLineSync()!;
    print("Enter the salary ...");
    pay = int.parse(stdin.readLineSync()!);
    print("Enter the last name...");
    lastName = stdin.readLineSync()!;
    print("Enter the qualification here...");
    qualification = stdin.readLineSync()!;
    print("Enter the experience here...");
    exp = stdin.readLineSync()!;
    print("Enter the subj here...");
    subj = stdin.readLineSync()!;
    print("Enter the lecture here...");
    lec = stdin.readLineSync()!;
    print("Enter the address here...");
    addrs = stdin.readLineSync()!;
    print("Enter the Blood Group here...");
    blod_grp = stdin.readLineSync()!;
    print("Enter your serves...");
    serves = int.parse(stdin.readLineSync()!);
    print("Enter your cel_no...");
    cel_no = int.parse(stdin.readLineSync()!);
    teacherList.add(
      {
        "id": id,
        "name": firstName,
        'pay': pay,
        "lastname": lastName,
        "qualification": qualification,
        "exp": exp,
        "subj": subj,
        "lec": lec,
        "addrs": addrs,
        "blod_grp": blod_grp,
        "serves": serves,
        "cel_no": cel_no
      },
    );
    print(teacherList);
  }

// insert new entry here...
  void editEntry() {
    print("Please ! Enter your account id for editing");
    var checkID = int.parse(stdin.readLineSync()!);
    for (var i = 0; i < teacherList.length; i++) {
      if (checkID == teacherList[i]['id']) {
        print("Enter the name here for changing");
        var name = stdin.readLineSync()!;
        print("Enter the add ammount to the  pay here...");
        var pay = int.parse(stdin.readLineSync()!);

        teacherList[i]['name'] = teacherList[i]['name'] = name;
        print(teacherList[i]);
        teacherList[i]['pay'] = teacherList[i]['pay'] + pay;
        print(teacherList[i]);
        return;
      }
    }
  }
// for deleting here...

  void deleteExistingAccount() {
    print("Please Enter your account id for debiting");
    var checkID = int.parse(stdin.readLineSync()!);
    for (var i = 0; i < teacherList.length; i++) {
      if (checkID == teacherList[i]['id']) {
        print("R u agreed for deleting ? say 1 for yes say 0 for no");
        var isDelete = int.parse(stdin.readLineSync()!);
        if (isDelete == 1) {
          print('WE are deleting this from database');
          teacherList.removeWhere((element) => element["id"] == checkID);
        } else {
          print("Okk not deleting");
        }
      }
    }
  }

//for showing all the data of the list here..
  void checkAccountDetails() {
    print("Please Enter your account id for debiting");
    var checkID = int.parse(stdin.readLineSync()!);
    for (var i = 0; i < teacherList.length; i++) {
      if (checkID == teacherList[i]['id']) {
        if (checkID == teacherList[i]['id']) {
          print("Your Account Detail");
          print("Your Account name");
          print(teacherList[i]['first_name']);
          print("Your Account id");
          print(teacherList[i]['id']);
          print("Your Salary");
          print(teacherList[i]['pay']);
        }
      }
    }
  }

  void showAllData() {
    print("***********All teacher list**************");
    print(teacherList);
  }

  // initial starter of the program here...
  void start() {
    do {
      // because we need this
      bankMenu();
      userChoice();
      switch (choice) {
        case 1:
          OpenAccount();
          break;
        case 2:
          editEntry();
          break;
        case 3:
          deleteExistingAccount();
          break;
        case 4:
          showAllData();
          break;
        case 5:
          showAllData();
          break;
        default:
          print("Invalid");
      }
    } while (choice != 6);
  }
} //Variable of teacher type
