import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;

public class Test {

    public static void main(String[] args) {
        try {
            DatabaseManager dbm = new DatabaseManager();
            TypeDAO tyDAO = new TypeDAO(dbm);

            tyDAO.loadAll();

            System.out.println("Type id 1 : " + tyDAO.getById(1).getNom());
            System.out.println("Type Feu : " + tyDAO.getByName("Feu").getId());

            for (Type t : tyDAO.getAll()) {
                System.out.println(t.getId() + " - " + t.getNom());
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}