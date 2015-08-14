package br.pucpr.prog4.loja.models;

import java.util.ArrayList;
import java.util.List;

public class ProdutoManager implements IProdutoManager{
    private static List<Produto> produtos;
    
    static{
        Produto produto;
        produtos = new ArrayList<>(0);
        
        produto = new Produto(1, "HD Externo", 250.00);
        produtos.add(produto);
        
        produto = new Produto(2, "Sony Experia Z3", 1500.00);
        produtos.add(produto);
        
        produto = new Produto(3, "SuperMan Lego", 50.00);
        produtos.add(produto);
    }
    
    @Override
    public List<Produto> obterTodos() {
        return produtos;
    }
}
