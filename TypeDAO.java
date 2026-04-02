import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class TypeDAO {

    private DatabaseManager dbm;
    private Map<Integer, Type> typesParId;

    public TypeDAO() {
        dbm = new DatabaseManager();
        try {
            dbm.connect();
        } catch (SQLException e) {
            System.out.println("ERREUR : impossible de se connecter à la base de données" + e.getMessage());

        }
        typesParId = new HashMap<>();
    }

    /**
     * Charge tous les types depuis la base
     * et les stocke en mémoire.
     */
    public void loadAll() throws SQLException {
        String sql = "SELECT id, libelle FROM types";

        Connection conn = dbm.getConnection();
        if (conn == null) {
            System.out.println("ERREUR : la connexion est null");
            return;
        }
        PreparedStatement stmt = conn.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
            int id = rs.getInt("id");
            String nom = rs.getString("libelle");

            Type type = new Type(id, nom);
            typesParId.put(id, type);
            System.out.println("Type chargé : " + id + " - " + nom);
        }

        rs.close();
        stmt.close();
    }

    /**
     * Retourne un type déjà chargé par son id.
     */
    public Type getById(int id) {
        return typesParId.get(id);
    }

    /**
     * Retourne tous les types déjà chargés.
     */
    public Collection<Type> getAll() {
        return typesParId.values();
    }

    /**
     * Recherche un type déjà chargé par son nom.
     */
    public Type getByName(String nom) {
        for (Type type : typesParId.values()) {
            if (type.getNom().equalsIgnoreCase(nom)) {
                return type;
            }
        }
        return null;
    }
}