package br.com.estoque.DTO;
 
public class Cliente extends Pessoa {
    private boolean vip = false;
    
    public boolean getVip(){
        return this.vip;
    }
    
    public void setVip(boolean vip) {
        this.vip = vip;
    }
    
    public double addDescontoVip(double valor){
        return valor -= valor * 0.05;
    }
}
