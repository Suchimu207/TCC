import java.io.IOException;
import java.nio.file.Files;   
import java.nio.file.Paths;
import java.util.concurrent.TimeUnit;

public class Visual{
    private int estadoAtual;
    private String arte;
    
    private String os;
    private final String verde, branco, vermelho, laranja, azul, roxo, amarelo, rosa, reseta;

    public Visual(){
        verde = "\033[92m";
        branco = "\033[37m";
        vermelho = "\033[31m";
		laranja = "\033[33m";
		azul = "\033[34m";
		roxo = "\033[35m";
		amarelo = "\033[93m";
		rosa = "\033[95m";
        reseta = "\u001B[0m";
    }
    
    private void limpaTela(){
        try {
            os = System.getProperty("os.name").toLowerCase();
            
            if (os.contains("win")){
                new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
            }else if (os.contains("linux") || os.contains("unix")){
                new ProcessBuilder("clear").inheritIO().start().waitFor();
            }
        }catch (Exception e){
            System.out.println(vermelho+"Falha ao limpar a tela: "+e.getMessage()+"."+reseta);
        }
      //===
    }
    
    private void espera(int segundos){
        try{
            TimeUnit.MILLISECONDS.sleep(segundos);
        }catch (InterruptedException e){
            System.out.println(vermelho+"Falha no comando esperar: "+e.getMessage()+"."+reseta);
        }
    }
    
    public void desenhaSeta(){
        System.out.print(branco+">"+reseta);
    }
    
    public void desenhaEstado(String estadoAtual){
        if(estadoAtual == "Título"){
            desenhaTítulo();
        }else if (estadoAtual == "OpçõesTítulo"){
            desenhaOpçõesTítulo();
        }else if (estadoAtual == "Sair"){
            desenhaSair();
        }
      //===
    }

    public void desenhaPergunta(int sor_Pergunta){
        if (sor_Pergunta == 1){
            System.out.println("1) [...]");
        }else if(sor_Pergunta == 2){
            System.out.println("2) [...]");
        }else if(sor_Pergunta == 3){
            System.out.println("3) [...]");
        }else if(sor_Pergunta == 4){
            System.out.println("4) [...]");
        }else if(sor_Pergunta == 5){
            System.out.println("5) [...]");
        }
      //===  
    }

    private void desenhaTítulo(){
        limpaTela();
        try{
            arte = Files.readString(Paths.get("Artes\\Título.txt"));
        }catch(IOException e){
            System.out.println(vermelho+"Falha ao desenhar arte: "+e.getMessage()+"."+reseta);
        }
        System.out.println(amarelo+arte+reseta);
        System.out.println("");
        System.out.print("Desenvolvido por Carlos S. Rehem - 2025"+"\n");
		espera(100);
        System.out.println("");
    }
    
    private void desenhaOpçõesTítulo(){
        desenhaBarra();
        System.out.println(branco+"1. Novo jogo"+reseta);
        System.out.println(branco+"2. Continuar"+reseta);
        System.out.println(branco+"3. Sair"+reseta);
        desenhaBarra();
        System.out.println("");
    }
    
    private void desenhaSair(){
        System.out.print("\n"+branco+"Fechando");
        espera(1000); System.out.print(branco+".");
        espera(870); System.out.print(branco+".");
        espera(780); System.out.print(branco+".");
        espera(100); limpaTela();
    }
    
    private void desenhaBarra(){
        System.out.print(verde+"============================================"+reseta+"\n");
      }

  //===
}