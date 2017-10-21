/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FrameWork_Menu;

/**
 *
 * @author Heitor Victor
 */

import com.wedoneit.data.ConnectionPool;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MontaMenu {

    private static Connection conn = null;
    private static PreparedStatement prst = null;
    private static ResultSet rs = null;

    private final String teste = "Foi testado e rodou";

    public String getTeste() {
        return teste;
    }
    
    public static List<Module> listaModulos() throws SQLException{
        List<Module> modulos = new ArrayList<>();
        try{
            String sql = "SELECT * FROM MODULE";
            ConnectionPool connection = new ConnectionPool();
            conn = connection.getConnection();    
            prst = conn.prepareStatement(sql);
            rs = prst.executeQuery(sql);
            while (rs.next()) {                
                Module module = new Module();
                module.setId(Integer.parseInt(rs.getString("MODULE_ID")));
                module.setName(rs.getString("MODULE_NAME"));
                modulos.add(module);
            }
            conn.close();
            return modulos;
        }catch(SQLException e){
            System.out.println("Erro: " + e.getMessage());
            return null;
        }
    }
    
    public static List<Menu> listaMenu(){
        List<Menu> menus = new ArrayList<>();
        try{
            String sql = "SELECT * FROM MENU";
            ConnectionPool connection = new ConnectionPool();
            conn = connection.getConnection();  
            prst = conn.prepareStatement(sql);
            rs = prst.executeQuery(sql);
            while (rs.next()) {                
                Menu menu = new Menu();
                menu.setId(Integer.parseInt(rs.getString("MENU_ID")));
                menu.setName(rs.getString("MENU_NAME"));
                menu.setModulo_id(Integer.parseInt(rs.getString("MENU_IDMODULE")));
                menus.add(menu);
            }
            conn.close();
            return menus;
        }catch(SQLException e){
            System.out.println("Erro: " + e.getMessage());
            return null;
        }
    }
    
    public static List<Opcoes> listaOpcoes(){
        List<Opcoes> opcoes = new ArrayList<>();
        try{
            String sql = "SELECT * FROM OPCOES";
            ConnectionPool connection = new ConnectionPool();
            conn = connection.getConnection();    
            prst = conn.prepareStatement(sql);
            rs = prst.executeQuery(sql);
            while (rs.next()) {                
                Opcoes opcao = new Opcoes();
                opcao.setId(Integer.parseInt(rs.getString("OPCAO_ID")));
                opcao.setName(rs.getString("OPCAO_NAME"));
                opcao.setMenu_id(Integer.parseInt(rs.getString("OPCAO_IDMENU")));
                opcoes.add(opcao);
            }
            
            conn.close();
            return opcoes;
        }catch(SQLException e){
            System.out.println("Erro: " + e.getMessage());
            return null;
        }
    }
    
    public static void main(String[] args) throws SQLException {
        List<Module> module = listaModulos();
        List<Menu> menu = listaMenu();
        List<Opcoes> opcoes = listaOpcoes();
        
        for (int i = 0; i < module.size(); i++) {
            System.out.println(module.get(i).getName());
            for (int j = 0; j < menu.size(); j++) {
                if(menu.get(j).getModulo_id() == module.get(i).getId()){
                    System.out.println("    " + menu.get(j).getName());
                }
                for (int k = 0; k < opcoes.size(); k++) {
                    if(opcoes.get(k).getMenu_id() == menu.get(j).getId()){
                        System.out.println("        " + opcoes.get(k).getName());
                    }
                }
            }
        }
    }
}
