package Dao.Membre;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DB.dbMembre.dbConnection;
import Model.Membre;

public class MembreDao {
	
	Connection connect;
    
    public MembreDao(){
        connect = dbConnection.getConnection();
    }
    
    public void ajouterMembre(Membre membre) {
        try {
            PreparedStatement prstmt = connect.prepareStatement("INSERT INTO Membre (nom, prenom, email, phone, cin, adresse)"
                    + " VALUES (?, ?, ?, ?, ?, ?)");
            prstmt.setString(1, membre.getNom());
            prstmt.setString(2, membre.getPrenom());
            prstmt.setString(3, membre.getEmail());
            prstmt.setString(4, membre.getPhone());
            prstmt.setString(5, membre.getCin());
            prstmt.setString(6, membre.getAdresse());
            prstmt.executeQuery();
        } catch (SQLException e) {
        	e.printStackTrace();
        }
    } 
    
    
    public List<Membre> afficherProduits(){
        List<Membre> membres = new ArrayList<>();
        try{
            PreparedStatement prstmt = connect.prepareStatement("SELECT * from Membre");
            ResultSet res = prstmt.executeQuery();
            
            while(res.next()){
            	Membre membre = new Membre();
                
            	membre.setId_membre(res.getInt("id_membre"));
            	membre.setNom(res.getString("nom"));
            	membre.setPrenom(res.getString("prenom"));
            	membre.setEmail(res.getString("email"));
            	membre.setPhone(res.getString("phone"));
            	membre.setCin(res.getString("cin"));
            	membre.setAdresse(res.getString("adresse"));

            	membres.add(membre);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        
        return membres;
    }
    
    
}
