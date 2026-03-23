import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class azqs {
    public static void main(String[] args) {
        DatabaseManager db = new DatabaseManager();

        try {
            db.connect();
            Connection c = db.getConnection();

            String sql = "SELECT * FROM types";
            PreparedStatement ps = c.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String nom = rs.getString("libelle");

                System.out.println(id + " - " + nom);
            }

            rs.close();
            ps.close();
            db.disconnect();

        } catch (SQLException e) {
            System.out.println("Erreur SQL : " + e.getMessage());
        }
    }
}