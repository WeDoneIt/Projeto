/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wedoneit.data;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author Felipe
 */
public class ConnectionPool {
    private static final String usuario="root";
    private static final String senha="WebDEVELOPMENT.2017";
    private static final String banco="wedoneit";
    private static final String ip="localhost";
    private static final String driver="com.mysql.jdbc.Driver";
    private static Connection conexao = null;

    //padrao singleton
    public Connection getConnection() {
        System.out.println(">>Conectando ao banco");
        try {
            Class.forName(driver);
            if(conexao==null || conexao.isClosed()){
                conexao = DriverManager.getConnection("jdbc:mysql://"+ip+"/"+banco+"",usuario, senha);
            }
            return conexao; 
        }catch (ClassNotFoundException e) {    
            throw new RuntimeException(e);    
        }catch (SQLException e) {

            closeConnection();
            throw new RuntimeException(e);
        }

    }

    public void closeConnection(){
        try{
            if(conexao!=null && !conexao.isClosed()){
                conexao.close();
                System.out.println(">>Conexao encerrada com sucesso");
            }
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public static void main(String[] args) {
        ConnectionPool con = new ConnectionPool();
        System.out.println("conexao: "+ con.getConnection());
    }

}

