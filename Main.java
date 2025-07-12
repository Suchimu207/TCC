import java.util.Random;
import java.util.Scanner;

/**
 * @autor Carlos S. Rehem
 * Eis aís meu TCC.
*/

public class Main{
    public static void main (String[] args){
		String título = "Conhecendo o Cumbe";
		String nomeVersão = "0.1";
		String[] opçõesTítulo = {"1. Novo Jogo", "2. Continuar", "3. Créditos", "4. Sair"};
		
		
		Random d20 = new Random();
        Scanner teclado = new Scanner(System.in);
		
		Visual visualg = new Visual(título, nomeVersão, opçõesTítulo);
		Banco banquinho = new Banco();
       
        Controlador controle = new Controlador(visualg, d20, teclado, banquinho);
    //===
  }
}