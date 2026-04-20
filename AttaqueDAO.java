import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AttaqueDAO {
    private DatabaseManager dbm;

    public AttaqueDAO(DatabaseManager dbm) {
        this.dbm = dbm;
    }

    public Attaque[] get4AttaquesPourPokemon(int pokemonId, Type typePrincipal) throws SQLException {
        Connection c = dbm.getConnection();
        ArrayList<Attaque> liste = new ArrayList<>();


        try {
            String sql =
                "SELECT a.libelle, a.puissance, a.precis, a.priorite, t.id AS type_id, t.libelle AS type_libelle " +
                "FROM attaques a " +
                "JOIN types t ON a.type_id = t.id " +
                "JOIN est_attaque ea ON ea.attaque_id = a.id " +
                "WHERE ea.pokemon_id = ? " +
                "LIMIT 4";

            PreparedStatement ps = c.prepareStatement(sql);
            ps.setInt(1, pokemonId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int puissance = rs.getInt("puissance");
                int precision = rs.getInt("precis");
                int priorite = 0;
                try {
                    priorite = rs.getInt("priorite");
                } catch (SQLException e) {
                    priorite = 0;
                }

                Type type = new Type(
                    rs.getInt("type_id"),
                    rs.getString("type_libelle")
                );

                liste.add(new Attaque(
                    puissance,
                    rs.getString("libelle"),
                    precision,
                    type,
                    priorite
                ));
            }
        } catch (SQLException e) {
            // on passe au fallback
        }

        // 2) fallback : 4 attaques du type principal
        if (liste.isEmpty() && typePrincipal != null) {
            String sql =
                "SELECT a.libelle, a.puissance, a.precis, t.id AS type_id, t.libelle AS type_libelle " +
                "FROM attaques a " +
                "JOIN types t ON a.type_id = t.id " +
                "WHERE a.type_id = ? " +
                "ORDER BY a.puissance DESC " +
                "LIMIT 4";

            PreparedStatement ps = c.prepareStatement(sql);
            ps.setInt(1, typePrincipal.getId());
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int puissance = rs.getInt("puissance");
                int precision = rs.getInt("precis");

                Type type = new Type(
                    rs.getInt("type_id"),
                    rs.getString("type_libelle")
                );

                liste.add(new Attaque(
                    puissance,
                    rs.getString("libelle"),
                    precision,
                    type,
                    0
                ));
            }
        }

        // 3) fallback ultime
        if (liste.isEmpty()) {
            Type normal = new Type(999, "Normal");
            liste.add(new Attaque(35, "Charge", 95, normal, 0));
            liste.add(new Attaque(40, "Griffe", 100, normal, 0));
            liste.add(new Attaque(50, "Morsure", 100, normal, 0));
            liste.add(new Attaque(45, "Vive-Attaque", 100, normal, 1));
        }

        Attaque[] attaques = new Attaque[4];
        for (int i = 0; i < 4; i++) {
            attaques[i] = (i < liste.size()) ? liste.get(i) : null;
        }

        return attaques;
    }
}