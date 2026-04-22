//import java.util.HashMap;
/*import java.util.HashMap;
import java.util.Map;

public class TypeDAO{
    private DatabaseManager dbm;
    private Map<Integer, Type> typesParId;
    private Map<Integer, Type> typesParNom;

    public TypeDAO(DatabaseManager dbm) {
    this.dbm = dbm;
    this.typesParId = new HashMap<>();
    this.typesParNom = new HashMap<>();

}

    

}
*/

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

    public TypeDAO(DatabaseManager dbm) {
        this.dbm = new DatabaseManager();
        this.typesParId = new HashMap<>();
    }

    
    public void loadAll() throws SQLException {
        String sql = "SELECT id, libelle FROM types";

        this.dbm.connect();

        Connection conn = dbm.getConnection();
        PreparedStatement stmt = conn.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
            int id = rs.getInt("id");
            String nom = rs.getString("libelle");

            Type TypeSQL = new Type(id, nom);
            typesParId.put(id, TypeSQL);
        }

        rs.close();
        stmt.close();
        dbm.disconnect();
    }

    
    public Type getById(int id) {
        return typesParId.get(id);
    }

 
    public Collection<Type> getAll() {
        return typesParId.values();
    }

    
    public Type getByName(String nom) {
        for (Type type : typesParId.values()) {
            if (type.getNom().equalsIgnoreCase(nom)) {
                return type;
            }
        }
        return null;
    }
}