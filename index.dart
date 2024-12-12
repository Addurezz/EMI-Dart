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
  // printWeekSchedule(student1);
  printDaySchedule(student1, day);
 // printWhenMensa(student1, student2, day);
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

void printWhenMensa() {

}
