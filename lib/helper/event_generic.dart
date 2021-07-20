class EventGeneric<E, T> {
  late E statusCode;
  late T returnValue;


  setValue(E t1, T t2) {
    this.statusCode = t1;
    this.returnValue = t2;
  }
}
