
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Vector;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Felipe
 */
public class AbstractPersistentEntity implements Serializable {
        
    public boolean insert() {
       return false;
    }
    
    public boolean delete(){
        return false;
    }
    
    public boolean getThis(String where){// Pegar o objeto no banco.
        Connection conn = null;
        try{
//        boolean flag = getThis(where, conn);
        return false;// return o flag;
        }finally{
//            close(conn);
        }
    }
    
    
    
}
