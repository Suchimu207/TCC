public class Visual{
    private int estadoAtual;

    public Visual(){
        estadoAtual = 1;
    }
    
    public void desenhaEstado(){
        limpaTela();
        if(estadoAtual == 1){
            desenhaTítulo();
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
    
    private void limpaTela(){
        try {
            new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
      //===
    }
    
    private void desenhaTítulo(){
        System.out.println("=====================");
        System.out.println(" Conhecendo o Cumbe  ");
        System.out.println("=====================");
        System.out.println("");
    }

  //===
}