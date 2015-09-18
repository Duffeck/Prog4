/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.pucpr.prog4.loja.models.dao;

import br.pucpr.prog4.loja.models.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author lucas.duffeck
 */
public class JdbcClienteDao implements ClienteDao{
    
    private Connection conexão;
    
    public JdbcClienteDao(Connection conexão){
        this.conexão = conexão;
    }

    @Override
    public Cliente inserir(Cliente cliente) {
        String sql = "INSERT INTO pessoa "
                    +"(nome,"
                    +"sexo,"
                    +"cpf,"
                    +"comentario,"
                    +"tipo,"
                    +"dataNasc) "
                    +"VALUES "
                    +"(?, ?, ?, ?, ?, ?)";
        
        PreparedStatement ps;
        try{
            ps = conexão.prepareStatement(sql);
            ps.setString(1, cliente.getNome());
            ps.setString(2, cliente.getSexo());
            ps.setLong(3, cliente.getCPF());
            ps.setString(4, cliente.getComentario());
            ps.setString(5, cliente.getTipo());
            ps.setDate(6, new java.sql.Date(cliente.getDataNasc().getTime()));
            ps.executeUpdate();
            
            return cliente;
        }catch(Exception e){
            throw new DaoException("Ocorreu um erro ao inserir o cliente!");
        }
    }
    
}
