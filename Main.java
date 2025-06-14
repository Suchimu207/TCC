import java.util.Random;
import java.util.Scanner;

/**
 * @autor Carlos S. Rehem
 */

public class Main{
    public static void main (String[] args) {
        Visual pintor = new Visual();
        Random d20 = new Random();
        Scanner teclado = new Scanner(System.in);
        
        Controlador controle = new Controlador(pintor, d20, teclado);
        controle.rodarJogo();
    //===
  }
}