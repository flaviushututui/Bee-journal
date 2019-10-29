class Frame{
  int _honey;
  int _eggs;
  int _number;

  Frame(int number, int honey, int eggs){
    this._number = number;
    this._honey = honey;
    this._eggs = eggs;
  }

  set number(int nr) => _number = nr;

  get number => _number;

  set quantEggs(int eggs) => _eggs = eggs;

  int get eggs=> _eggs;

  set quantHoney(int honey) => _honey = honey;

  int get quantHoney=> _honey;
}
