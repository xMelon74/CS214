/* LogTable.java displays a table of logarithms.
 *
 * Input: start, stop and increment, three doubles.
 * PRE: start < stop && increment > 0.
 * Output: A table of logarithms from start to stop,
 *         with increment as the step value.
 * Begun by: Nelesen, for CS 214 at Calvin College.
 * Completed by:
 ********************************************************/
import java.util.Scanner; 		// Get input

class LogTable{

  public static void main(String[] args){
    Scanner keyboard = new Scanner(System.in);
    System.out.println("To display a table of logarithms,");
    System.out.println("enter the start, stop and increment values: ");
    double start, stop, increment;
    start = keyboard.nextDouble();
    stop = keyboard.nextDouble();
    increment = keyboard.nextDouble();
    double count = start;

    //Replace this line with a while loop to generate the table of logs
    while(count <= stop){
      System.out.println("The logarithm of " + count + " is " + Math.log(count));
      count += increment;
    }

    for (double i = start; i < stop; i += increment){
      System.out.println("The logarithm of " + i + " is " + Math.log(i));
    }


    count = start;
    do {
      System.out.println("The logarithm of " + count + " is " + Math.log(count));
      count += increment;
    } while (count <= stop);

  }
}

