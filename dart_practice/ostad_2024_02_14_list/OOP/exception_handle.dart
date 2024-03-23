
void main() {
  printer();
}

void printer() {
  try {
    printHeadline();
  }
  on CustomException{
    print('custom exception');
  }
  on MachineException{
    print('machine exception');
  }
  catch (e) {
    print('something went wrong ${e.toString()}');
  }
  finally{
    print('print finally');
  }
  printContent();
}

void printHeadline() {
  //throw CustomException();
  //throw Exception('not printing');
  //throw MachineException();

  print('printing headline');
}

void printContent() {
  print('print content');
}

class CustomException implements Exception{
  @override
  String toString() {
    return 'this is custom';
  }
}



class MachineException implements Exception{
  @override
  String toString() {
    return 'this is printer exception';
  }
}