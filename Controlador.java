import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.Scanner;

public class Controlador{
    private Visual pintor;
    private Random d20;
    private Scanner teclado;
    
    private int sor_Pergunta, sor_Alt;
    private char alternativas[];
    private String respostas[];
    private List<Integer> sor_Posições;

    public Controlador(Visual pintor, Random d20, Scanner teclado){
        this.pintor = pintor;
        this.d20 = d20;
        this.teclado = teclado;
        
        sor_Pergunta = 0;
        alternativas = new char[]{'A','B','C','D'};
        respostas = new String[]{"Resposta 1", "Resposta 2", "Resposta 3", "Resposta 4"};
        sor_Posições = new ArrayList<Integer>();
        
        iniciarJogo();
    }
    
    private void iniciarJogo(){
        pintor.desenhaEstado();
        System.out.print(">");
        teclado.nextInt();
        sor_Pergunta();
        
      //===
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