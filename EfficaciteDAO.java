import java.sql.*;
import java.util.*;

public class EfficaciteDAO {

    public static List<EfficaciteType> chargerEfficacites(Map<Integer, Type> types) {
        List<EfficaciteType> liste = new ArrayList<>();

        try {
        DatabaseManager dbm = new DatabaseManager(); // ✅ créer l'objet
        dbm.connect();                               // ✅ ouvrir la connexion
        Connection conn = dbm.getConnection();       // ✅ récupérer la connexion

        
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM efficacite");

            while (rs.next()) {

                int idTypeAttaque = rs.getInt("fkAtt");
                int idTypeDef = rs.getInt("fkDef");
                double multiplicateur = rs.getDouble("multi");

                Type typeAttaque = types.get(idTypeAttaque);
                Type typeDef = types.get(idTypeDef);

                EfficaciteType efficacite = new EfficaciteType(
                    typeAttaque,
                    typeDef,
                    multiplicateur
                );

                liste.add(efficacite);
            }

            rs.close();
            stmt.close();
            dbm.disconnect(); // ✅ fermer la connexion

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return liste;
    }
}