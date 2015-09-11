/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.pucpr.prog4.loja.models;

import br.pucpr.prog4.loja.models.dao.*;

/**
 *
 * @author lucas.duffeck
 */
public class ClienteManagerImpl implements IClienteManager{

    @Override
    public Cliente cadastrar(Cliente cliente) {
        
        IDaoManager manager;
        manager = new JdbcDaoManager();
        try{
            manager.iniciar();
            ClienteDao dao = manager.getClienteDao();
            Cliente c;
            c = dao.inserir(cliente);

            manager.confirmarTransação();
            manager.encerrar();
            return c;
        }catch(Exception e){
            manager.abortarTransação();
            throw e;
        }
    }
    
}
