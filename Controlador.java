import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.Scanner;

public class Controlador{
    private Visual pintor;
    private Random d20;
    private Scanner teclado;
    
    private int entradaInteira;
    private boolean rodarJogo; 
    
    private int sor_Pergunta, sor_Alt;
    private char alternativas[];
    private String respostas[];
    private List<Integer> sor_Posições;

    public Controlador(Visual pintor, Random d20, Scanner teclado){
        this.pintor = pintor;
        this.d20 = d20;
        this.teclado = teclado;
        rodarJogo = true;
        
        sor_Pergunta = 0;
        alternativas = new char[]{'A','B','C','D'};
        respostas = new String[]{"Resposta 1", "Resposta 2", "Resposta 3", "Resposta 4"};
        sor_Posições = new ArrayList<Integer>();
    }
    
    public void rodarJogo(){
        while(rodarJogo == true){
            telaTítulo();
        }
    }
    
    private void telaTítulo(){
        pintor.desenhaEstado("Título");
        pintor.desenhaEstado("OpçõesTítulo");
        pintor.desenhaSeta(); entradaInteira = teclado.nextInt(); System.out.print("\n");
        
        if (entradaInteira == 1){
            //TODO opção: novo jogo.
        }else if (entradaInteira == 2){
            //TODO opção: continuar.
        }else if (entradaInteira == 3){
            telaSair();
            rodarJogo = false;
        }
      //===
    }
    
    private void telaSair(){
        pintor.desenhaEstado("Sair");
    }
    
    private void sor_Pergunta(){
        sor_Pergunta = d20.nextInt(5)+1;
        
        pintor.desenhaPergunta(sor_Pergunta);
        sor_Alternativa();
      //===
    }

    private void sor_Alternativa(){
        for (int i = 0; i <= 3; i++){
            sor_Posições.add(i);
        }
    
        Collections.shuffle(sor_Posições);  
        for (int i = 0; i <= 3; i++){
            sor_Alt = sor_Posições.get(i);
            System.out.println(alternativas[i]+") " + respostas[sor_Alt]);
        }
      //=== 
    }

  //===
}