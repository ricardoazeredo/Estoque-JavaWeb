package br.com.estoque.DTO;


public class Produto {
    private int idProduto;
    private String nome;
    private double valor = 0;
    private int quantidade = 0;
    private int minQuantidade = 0;
    
    public int getIdProduto(){
        return idProduto;
    }
    
    public void setIdProduto(int idProduto){
        this.idProduto = idProduto;
    }
    
    public String getNome(){
        return this.nome;
    }
    
    public void setNome(String nome){
        this.nome = nome;
    }
    
    public double getValor(){
        return this.valor;
    }
    
    public void setValor(double valor){
        this.valor = valor;
    }
    
    public int getQuantidade() {
        return this.quantidade;
    }
    
    public void setQuantidade(int quantidade){
        this.quantidade = quantidade;
    }
    
    public int getMinQuantidade(){
        return this.minQuantidade;
    }
    
    public void setMinQuantidade(int minQuantidade){
        this.minQuantidade = minQuantidade;
    }    
}
