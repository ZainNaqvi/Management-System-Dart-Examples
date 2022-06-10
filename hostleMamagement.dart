//For teachers
import 'dart:io';

class Hostle {
  late int id;
  //strarting student information here
  late int studentid;
  late String studentname;
  late int studentroom;
  late int choice;
  var students = [];
  var rooms = [];
  // Starter menu
  void bankMenu() {
    print("************Menu*************");
    print("1:Add new entry.");
    print("2:Update the existing entry by id");
    print("3:Delete the entry.");
    print("4:Show Specific Students details by id...");
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
    studentid = int.parse(stdin.readLineSync()!);
    print("Enter the Student name...");
    studentname = stdin.readLineSync()!;
    print("Enter the studentroom ...");
    studentroom = int.parse(stdin.readLineSync()!);

    students.add(
      {
        "id": studentid,
        "name": studentname,
        "student_room": studentroom,
      },
    );
    print(students);
  }

// insert new entry here...
  void editEntry() {
    print("Please ! Enter your Student id for editing.");
    var checkID = int.parse(stdin.readLineSync()!);
    for (var i = 0; i < students.length; i++) {
      if (checkID == students[i]['id']) {
        print("Enter the name here for changing");
        var name = stdin.readLineSync()!;
        print("Changing the room here in which room u want to change!.");
        var changeRoom = int.parse(stdin.readLineSync()!);

        students[i]['name'] = students[i]['name'] = name;

        students[i]['student_room'] = students[i]['student_room'] = changeRoom;
        print(students[i]);
        return;
      }
    }
  }
// for deleting here...

  void deleteExistingAccount() {
    print("Please Enter your account id for debiting");
    var checkID = int.parse(stdin.readLineSync()!);
    for (var i = 0; i < students.length; i++) {
      if (checkID == students[i]['id']) {
        print("R u agreed for deleting ? say 1 for yes say 0 for no");
        var isDelete = int.parse(stdin.readLineSync()!);
        if (isDelete == 1) {
          print('WE are deleting this from database');
          students.removeWhere((element) => element["id"] == checkID);
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
    for (var i = 0; i < students.length; i++) {
      if (checkID == students[i]['id']) {
        if (checkID == students[i]['id']) {
          print("Your Account Detail");
          print("Your Account name");
          print(students[i]['name']);
          print("Your Account id");
          print(students[i]['id']);
          print("Your room Number ");
          print(students[i]['student_room']);
        }
      }
    }
  }

  void showAllData() {
    print("***********All Students list**************");
    print(students);
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
