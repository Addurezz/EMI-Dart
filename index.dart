enum Weekday {MO, DI, MI, DO, FR}

void main() {
  Map<Weekday, List<String>> student1 = {
    Weekday.MO: ["", "", "VL: Mathe", "Ü: Seminargruppe", "", ""],
    Weekday.DI: ["", "", "", "", "", ""],
    Weekday.MI: ["", "Ü: EMI", "VL: Mathe", "Ü: AUD", "", ""],
    Weekday.DO: ["Ü: Mathe", "Ü: Mathe", "VL: EMI", "", "", ""],
    Weekday.FR: ["", "VL: AUD", "VL: Mathe", "", "", ""],
  };
  Map<Weekday, List<String>> student2 = {
    Weekday.MO: ["VL: Mathe", "Ü: Seminargruppe", "", "", "", ""],
    Weekday.DI: ["", "", "", "", "", ""],
    Weekday.MI: ["Ü: EMI", "", "VL: Mathe", "", "Ü: Mathe", "Ü: AuD"],
    Weekday.DO: ["", "", "VL: EMI", "", "", ""],
    Weekday.FR: ["", "VL: AUD", "VL: Mathe", "", "", ""],
  };
  Weekday day = Weekday.MO;
<<<<<<< HEAD
  // printWeekSchedule(student1);
  printDaySchedule(student1, day);
 // printWhenMensa(student1, student2, day);
=======
  //printWeekSchedule(student1);
  //printDaySchedule(student1, day);
  printWhenMensa(student1, student2, day);
>>>>>>> refs/remotes/origin/main
}

void printWeekSchedule() {
      
}

void printDaySchedule(Map<Weekday, List<String>> student, Weekday day) {

    student[day]?.forEach((item) {
      if(item==""){
        print("frei");
      }
      else{
      print(item);
      }
    });
}

<<<<<<< HEAD
void printWhenMensa() {

=======
printWhenMensa(Map student1, Map student2, Weekday day) {

  List<int> eat = [];

  for (int i = 0; i < 6; i++){
    if ((student1[day][i] == "") && (student2[day][i] == "")){
      eat.add(i+1);
    }
  }
  
  print("Ihr könnt in folgenden Doppelstunden essen gehen: ${eat}");
>>>>>>> refs/remotes/origin/main
}
