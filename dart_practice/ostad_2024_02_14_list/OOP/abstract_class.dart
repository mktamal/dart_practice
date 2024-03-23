

abstract class Student{
  void reading();
}

class CSEStd extends Student{
  @override
  void reading() {
    print('reading code');
  }
}

class LawStd implements Student{
  @override
  void reading() {
    // TODO: implement reading
  }

}

void main(){
  CSEStd std = CSEStd();
  std.reading();
}