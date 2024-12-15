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
  printWeekSchedule(student1);
  printDaySchedule(student1, day);
  printWhenMensa(student1, student2, day);

}

void printWeekSchedule(var student) {
  for (int i = 0; i < 5; i++) {
    printDaySchedule(student, Weekday.values[i]);
    print("\n");
  }
}

void printDaySchedule(Map<Weekday, List<String>> student, Weekday day) {

  print("Tag: ${getWeekday(day)}");
  print("-----------------");
  int i = 1;
  student[day]?.forEach((item) {
    if(item==""){
      print("${i}. frei");
      i++;
    }
    else{
      print("${i}. ${item}");
      i++;
    }
  });
}

void printWhenMensa(Map student1, Map student2, Weekday day) {

  List<int> eat = [];

  for (int i = 0; i < 6; i++){
    if ((student1[day][i] == "") && (student2[day][i] == "")){
      eat.add(i+1);
    }
  }

  //if eat is empty, there are no free double lessons
  if (eat.isEmpty){
    print("Ihr könnt an diesem Tag nicht in der Mensa essen gehen.");
    return;
  }
  
  print("Ihr könnt in folgenden Doppelstunden essen gehen: ${eat}");
}

//get the string representation of the weekday
String getWeekday(Weekday day) {
  switch (day) {
    case Weekday.MO:
      return "Montag";
    case Weekday.DI:
      return "Dienstag";
    case Weekday.MI:
      return "Mittwoch";
    case Weekday.DO:
      return "Donnerstag";
    case Weekday.FR:
      return "Freitag";
  }
}
