class A{
  int a = 10;
  static int p = 1;
  disp()
  {
    print(a);
  }
}

class B extends A{
  int h = 10;
  dis()
  {
    super.disp();
    print(a); // from parent class
  }
  @override
  disp()
  {
    print("test");
  }


}
class C extends B{
  int h = 10;
  dis()
  {
    super.disp();
    print(a); // from parent class
  }

}
