
package br.com.estoque.DTO;

public class Vendedor extends Pessoa {
    
    public double calcularComissao(double valor){
        return valor = valor * 0.03;
    }
}
