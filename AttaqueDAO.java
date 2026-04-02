import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AttaqueDAO {

    private DatabaseManager dbm;
    private TypeDAO typeDAO;

    public AttaqueDAO() {
        this.dbm = new DatabaseManager();
        this.typeDAO = typeDAO;
    }



    // 🔹 Lire toutes les attaques
    public List<Attaque> getAll() throws SQLException {
        List<Attaque> attaques = new ArrayList<>();
        dbm.connect();

        String sql = "SELECT * FROM attaque";
        Statement stmt = dbm.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
            Attaque attaque = new Attaque(
            int puissance = rs.getInt("puissance"),
            String nom = rs.getString("nom"),
            int precision =  rs.getInt("precision"),
            typeDAO.getByName(rs.getString("TypeSQL")), // correspond à ton Enum Type
            rs.getInt("priorite"),
            );
            attaques.add(attaque);
        }

        // Fermeture simple (optionnelle mais recommandée)
        rs.close();
        stmt.close();

        return attaques;
    }
}