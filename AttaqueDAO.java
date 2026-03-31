import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AttaqueDAO {

    private Connection connection;

    public AttaqueDAO(Connection connection) {
        this.connection = connection;
    }

    // 🔹 Lire toutes les attaques
    public List<Attaque> getAll() throws SQLException {
        List<Attaque> attaques = new ArrayList<>();

        String sql = "SELECT * FROM attaque";
        Statement stmt = connection.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
            Attaque attaque = new Attaque(
                rs.getInt("precision"),
                rs.getString("nom"),
                rs.getInt("puissance"),
                Type.valueOf(rs.getString("type").toUpperCase()), // correspond à ton Enum Type
                rs.getInt("priorite")
            );
            attaques.add(attaque);
        }

        // Fermeture simple (optionnelle mais recommandée)
        rs.close();
        stmt.close();

        return attaques;
    }
}