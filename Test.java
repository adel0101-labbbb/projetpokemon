import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;

public class Test {
    public static void main(String[] args) {
        // TODO : Connexion à la bd et tests divers

        DatabaseManager dbm = new DatabaseManager();

        try {
            dbm.connect();
        } catch (SQLException e) {
            System.out.println("Erreur : " + e.getMessage());
        }

        String sql = "SELECT * FROM pokemons;";
        String sql1 = "SELECT * FROM attaques;";

      //  try {
            /*Connection c = dbm.getConnection();

          //  System.out.println("toto " + c.toString());

            PreparedStatement requete = c.prepareStatement(sql);
            PreparedStatement requete1 = c.prepareStatement(sql1);

            ResultSet donnees = requete.executeQuery();
            ResultSet donnees1 = requete1.executeQuery();

            while (donnees.next()) {
                System.out.println(donnees.getInt("id") + " : " + donnees.getString("nom") + ";");
            }

            while (donnees1.next()) {
                System.out.println(donnees1.getInt("id") + " : " + donnees1.getString("libelle") + ";");
            }

        } catch (SQLException e) {
            System.out.println(e.getErrorCode());
        }*/
// test dao
        try{
       /*     Connection c = dbm.getConnection();
            String sqldao = "SELECT * FROM dresseurs;";

            PreparedStatement requetedao = c.prepareStatement(sqldao);
            ResultSet donneesdao = requetedao.executeQuery();

            while(donneesdao.next()){
                System.out.println(donneesdao.getInt("id") + " : " + donneesdao.getString("nom") + ";");
            */ 


            TypeDAO tyDAO = new TypeDAO(dbm);
            tyDAO.loadAll();
            System.out.println();
            
            }catch(SQLException e){

            }
        
      //  }
    
       
        
        
    }
}




        

