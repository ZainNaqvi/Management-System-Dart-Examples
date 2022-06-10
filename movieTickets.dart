//For teachers
import 'dart:io';

class MovieTicket {
  late int key;
  late String name; //last name of teacher
  late int quantity; //Qualification of teacher
  late String movieName; //Experiance of the person

  late int choice;
  var movieList = [];
  // Starter menu
  void bankMenu() {
    print("************Movies List Menu*************");
    print("************Bollywood*************");
    print("1:KGF2.");
    print("2:DHOOM4.");
    print("3:BAAGHI.");
    print("4:BAAGHI2.");
    print("5:AVATAR.");
    print("6:V.");
    print("************Menu*************");
    print("1:Create a new entry.");
    print("2:Update the existing entry by id");
    print("3:Delete the entry.");
    print("4:For showing the specific movie here...");
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
    key = int.parse(stdin.readLineSync()!);
    print("Enter the first name...");
    name = stdin.readLineSync()!;

    print("Enter the Movie name...");
    movieName = stdin.readLineSync()!;

    movieList.add(
      {
        "id": key,
        "user_name": name,
        "movie_name": movieName,
      },
    );
    print(movieList);
  }

// insert new entry here...
  void editEntry() {
    print("Please ! Enter your account id for editing");
    var checkID = int.parse(stdin.readLineSync()!);
    for (var i = 0; i < movieList.length; i++) {
      if (checkID == movieList[i]['id']) {
        print("Enter the name here for changing");
        var name = stdin.readLineSync()!;
        print("Enter the movie name here for changing");
        var movieName = stdin.readLineSync()!;

        movieList[i]['name'] = movieList[i]['name'] = name;

        movieList[i]['movie_name'] = movieList[i]['movie_name'] = movieName;
        print(movieList[i]);
        return;
      }
    }
  }
// for deleting here...

  void deleteExistingAccount() {
    print("Please Enter your account id for debiting");
    var checkID = int.parse(stdin.readLineSync()!);
    for (var i = 0; i < movieList.length; i++) {
      if (checkID == movieList[i]['id']) {
        print("R u agreed for deleting ? say 1 for yes say 0 for no");
        var isDelete = int.parse(stdin.readLineSync()!);
        if (isDelete == 1) {
          print('WE are deleting this from database');
          movieList.removeWhere((element) => element["id"] == checkID);
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
    for (var i = 0; i < movieList.length; i++) {
      if (checkID == movieList[i]['id']) {
        if (checkID == movieList[i]['id']) {
          print("Your Account Detail");
          print("Your Account name");
          print(movieList[i]['name']);
          print("Your Account id");
          print(movieList[i]['id']);
          print("Your Salary");
          print(movieList[i]['movie_name']);
        }
      }
    }
  }

  void showAllData() {
    print("***********All Selected or Cart list**************");
    print(movieList);
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
