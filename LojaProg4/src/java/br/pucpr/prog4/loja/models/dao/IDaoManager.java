package br.pucpr.prog4.loja.models.dao;

public interface IDaoManager 
{
    void iniciar() throws DaoException;
    void encerrar();
    void confirmarTransação();
    void abortarTransação();
    
    ClienteDao getClienteDao();
}
