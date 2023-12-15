late String description; //similar a lazy

void main() {
  /*****************************************
   * Variáveis
   */
  description = 'Feijoada!';
  var name = "Willy Wonka"; //string
  var year = 92; //int
  var pi = 3.1415; //double
  num y = year + pi; // num -> pode misturar int e double
  var planets = ["Earth", "Mars", "Saturn"]; //list
  
  final String nickname =
      'Bobby'; //imutavel, similar a val em kotlin. Pode usar const
  
  var earthImg = {
    'tags': ['Earth'],
    'url': 'https://images.app.goo.gl/ew988BoheCuvjp5fA'
  };
  
  int? number = null; //null safety
  number = 2;
  
  Object fruit = "Apple";
  fruit = "Grappe";

  print(fruit);
  print(number);
  print(description);
  print(y);

  /**********************************************************
   * as, is, is!\
   * as ---> (employee as Person).firstName = 'Bob'; //it's a typecast
   * is ---> if (employee is Person) {employee.firstName = 'Bob';} // verify the type of employee
   * is! --> if (employee is Person) {employee.firstName = 'Bob';} // verify the type of employee (false)
   */
  int? b = null;
  b ??= number; //se b for nulo, pega o valor de number
  print(b);

  /*************************************************************
   * condições
   * condition ? expr1 : expr2 // sem comentários, ja sabe
   * expr1 ?? expr2 // se expr1 nao for nulo, retorna ele, senão retorna expr2
   * 
   * Podemos transformar isso:
   * String playerName(String? name) {
  *    if (name != null) {
  *      return name;
  *    } else {
  *      return 'Guest';
  *    }
  *  }
  * Nisso: String playerName(String? name) => name != null ? name : 'Guest';
  *
   */

  /*************************************************************
   * Cascade Notation
   */

  // var paint = Paint();
  // paint.color = Colors.black;
  // paint.strokeCap = StrokeCap.round;
  // paint.strokeWidth = 5.0;

  // podemos escrever assim...

  // var paint = Paint()
  // ..color = Colors.black
  // ..strokeCap = StrokeCap.round
  // ..strokeWidth = 5.0;

// isso...

  // var button = querySelector('#confirm');
  // button?.text = 'Confirm';
  // button?.classes.add('important');
  // button?.onClick.listen((e) => window.alert('Confirmed!'));
  // button?.scrollIntoView();

  //vira isso:
  // querySelector('#confirm') // Get an object.
  // ?..text = 'Confirm' // Use its members.
  // ..classes.add('important')
  // ..onClick.listen((e) => window.alert('Confirmed!'))
  // ..scrollIntoView();
  
  /*************************************************************
   * Conversão de variáveis
   */
  
  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

}
