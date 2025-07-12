import java.io.IOException;
import java.nio.file.Files;   
import java.nio.file.Paths;
import java.util.concurrent.TimeUnit;

public class Visual{
	private String os, quadro, título, nomeVersão;
	private String[] opçõesTítulo;
    private boolean debug;
	
	private final String VERDE, VERDE_MUSGO, BRANCO, VERMELHO, VERMELHO_FOGO, LARANJA, AZUL, ROXO, AMARELO, ROSA,
	PRETO, CINZA, RESETA,
	FundoVerde, FundoBranco, FundoVermelho, FundoPadrão;
	
    public Visual(String título, String nomeVersão, String[] opçõesTítulo){
        this.título = título;
		this.nomeVersão = nomeVersão;
		this.opçõesTítulo = opçõesTítulo;
		
		os = System.getProperty("os.name").toLowerCase();
		
		VERDE = "\033[92m";
		VERDE_MUSGO = "\033[32m";
        BRANCO = "\033[37m";
		VERMELHO = "\033[31m";
		VERMELHO_FOGO = "\033[91m";
        LARANJA = "\033[33m";
        AZUL = "\033[34m";
        ROXO = "\033[35m";
        AMARELO = "\033[93m";
        ROSA = "\033[95m";
		PRETO = "\033[30m";
		CINZA = "\033[90m";
		
		FundoVerde = "\033[42m";
		FundoBranco = "\033[107m";
		FundoVermelho = "\033[41m";
		
		FundoPadrão = "\033[49m";
        RESETA = "\u001B[0m";
    }
	
	public void setDebug(boolean debug){
		this.debug = debug;
	}
    
	public void definirTítulo(){
		if (os.contains("win")){
            try{
            new ProcessBuilder("cmd", "/c", "title " + título).inheritIO().start();
        }catch (Exception e){
			if (debug == true) desenhaErro("Título", e.getMessage());
            }
        }
	}
	
	public void desenhaTítulo(){
		System.out.println("");
        desenhaArte("Título");
        System.out.print(CINZA+"Autor: "+VERDE_MUSGO+"Carlos S. Rehem"+RESETA+"\n");
		System.out.print(CINZA+"Versão: "+""+BRANCO+nomeVersão+RESETA+"\n");
		espera(100);
		System.out.println("");
		desenhaBarra();
		for (int i = 0; i <= opçõesTítulo.length-1; i++){
			System.out.println(BRANCO+opçõesTítulo[i]+RESETA);
		}
		desenhaBarra();
    }
	
	public void desenhaErro(String erroAtual, String textoErro){
		if (erroAtual == "Título"){
			System.out.println(VERMELHO+"Falha ao definir título: "+textoErro+"."+RESETA);
		}else if (erroAtual == "Espera"){
			System.out.println(VERMELHO+"Falha no comando esperar: "+textoErro+"."+RESETA);
		}else if (erroAtual == "Arte"){
			System.out.println(VERMELHO+"Falha ao desenhar arte: "+textoErro+"."+RESETA);
		}else if (erroAtual == "LimpaTela"){
			System.out.println(VERMELHO+"Falha ao limpar tela: "+textoErro+"."+RESETA);
		}else if (erroAtual == "Entrada"){
			System.out.println(VERMELHO+"Falha ao receber entrada: "+textoErro+"."+RESETA);
		}
		espera(1490);
	}
	
    public void limpaTela(){
        try{ 
            if (os.contains("win")) new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
        }catch (Exception e){
            if (debug == true) desenhaErro("LimpaTela", e.getMessage());
        }
      //===
    }
	
	public void desenhaSeta(){
        System.out.print(BRANCO+">"+RESETA);
    }
	
	public void desenhaBarra(){
        System.out.print(CINZA+"============================================"+RESETA+"\n");
    }
    
    private void espera(int segundos){
        try{
            TimeUnit.MILLISECONDS.sleep(segundos);
        }catch (InterruptedException e){
            if (debug == true) desenhaErro("Espera", e.getMessage());
        }
    }
	
	private void desenhaArte(String arte){
        try{
            quadro = Files.readString(Paths.get("Artes\\"+arte+".txt"));
			System.out.println(AMARELO+quadro+RESETA);
        }catch(IOException e){
            if (debug == true) desenhaErro("Arte", e.getMessage());
        }
		System.out.println("");
    }
	
    private void desenhaSair(){
        System.out.println(BRANCO+"Fechando");
        espera(1000); System.out.print(BRANCO+".");
        espera(870); System.out.print(BRANCO+".");
        espera(780); System.out.print(BRANCO+".");
        espera(100); limpaTela();
    }
    
  //===
}