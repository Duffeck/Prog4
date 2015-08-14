package br.pucpr.prog4.loja.models;

public class Produto {
    private int id;
    private String nome;
    private double preço;

    Produto(int i, String hd_Externo, double d) {
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getPreço() {
        return preço;
    }

    public void setPreço(double preço) {
        this.preço = preço;
    }
    
}
