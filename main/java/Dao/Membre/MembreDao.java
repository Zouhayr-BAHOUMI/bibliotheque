package Dao.Membre;

import java.sql.Connection;
import DB.dbMembre.dbConnection;

public class MembreDao {
	
	Connection connect;
    
    public MembreDao(){
        connect = dbConnection.getConnection();
    }
}
