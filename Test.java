import java.sql.SQLException;
import java.sql.*;

public class Test{
    public static void main(String[] args) {

        try {
            Connection conn = Database.getConnection();

            AttaqueDAO dao = new AttaqueDAO(conn);

            // 🔥 récupérer les attaques
            for (Attaque a : dao.getAll()) {
                System.out.println(a.getNom());
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}