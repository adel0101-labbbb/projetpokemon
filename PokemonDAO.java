import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PokemonDAO {
    private DatabaseManager dbm;
    private AttaqueDAO attaqueDAO;

    public PokemonDAO(DatabaseManager dbm) {
        this.dbm = dbm;
        this.attaqueDAO = new AttaqueDAO(dbm);
    }

    public PokemonInstance getPokemonInstanceById(int id, int niveau) throws SQLException {
        Connection c = dbm.getConnection();

        String sqlPokemon = "SELECT id, nom FROM pokemons WHERE id = ?";
        PreparedStatement psPokemon = c.prepareStatement(sqlPokemon);
        psPokemon.setInt(1, id);
        ResultSet rsPokemon = psPokemon.executeQuery();

        if (!rsPokemon.next()) {
            return null;
        }

        String nom = rsPokemon.getString("nom");

        Type type1 = null;
        Type type2 = null;

        String sqlTypes =
            "SELECT t.id, t.libelle " +
            "FROM est_type et " +
            "JOIN types t ON et.type_id = t.id " +
            "WHERE et.pokemon_id = ?";

        PreparedStatement psTypes = c.prepareStatement(sqlTypes);
        psTypes.setInt(1, id);
        ResultSet rsTypes = psTypes.executeQuery();

        if (rsTypes.next()) {
            type1 = new Type(rsTypes.getInt("id"), rsTypes.getString("libelle"));
        }
        if (rsTypes.next()) {
            type2 = new Type(rsTypes.getInt("id"), rsTypes.getString("libelle"));
        }

  
        int pvMax = 100 + (id % 30);
        int pv = pvMax;
        int attack = 20 + (id % 15);
        int defense = 15 + (id % 15);
        int vitesse = 10 + (id % 20);

        PokemonEspece espece = new PokemonEspece(
            nom,
            pvMax,
            pv,
            attack,
            defense,
            vitesse,
            type1,
            type2,
            null,
            null
        );

        Attaque[] attaques = attaqueDAO.get4AttaquesPourPokemon(id, type1);

        return new PokemonInstance(espece, niveau, attaques);
    }
}