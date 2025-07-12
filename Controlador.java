import java.util.List;
import java.util.Random;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.Collections;
import java.util.InputMismatchException;

public class Controlador{
	private enum EstadosJogo{
		TITULO("Título"),
		PERGUNTAS("Perguntas"),
		CREDITOS("Créditos");
		
		private String estadoJogo;
		
		EstadosJogo(String estadoJogo){
			this.estadoJogo = estadoJogo;
		}
		
		public String getEstadoJogo(){
			return estadoJogo;
		}
	}	
	private Scanner teclado;
	private Random d20;
    private Visual visualg;
    private Banco banquinho;
    
    private int entrada;
    private boolean rodarJogo, debug;
	
	public Controlador(Visual visualg, Random d20, Scanner teclado, Banco banquinho){
        this.visualg = visualg;
        this.d20 = d20;
        this.teclado = teclado;
        this.banquinho = banquinho;
	
		debug = false;
		visualg.setDebug(debug);
		
		rodarJogo = true;
		iniciarJogo();
    }

    public void iniciarJogo(){
		visualg.definirTítulo();
		do{
			visualg.limpaTela();
			visualg.desenhaTítulo();
			tratarEntrada();
		}while (rodarJogo == true);
    }
	
	private void tratarEntrada(){
		try{
            visualg.desenhaSeta(); entrada = teclado.nextInt();
        }catch(InputMismatchException e){
            if (debug == true) visualg.desenhaErro("Entrada", e.getMessage());
            entrada = -1;
        }finally{
            teclado.nextLine();
        }
    }

  //===
}