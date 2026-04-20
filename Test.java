import java.sql.Connection;

public class Test {
    public static void main(String[] args) {
        DatabaseManager dbm = new DatabaseManager();

        try {
            dbm.connect();
            Connection c = dbm.getConnection();

            PokemonDAO pokemonDAO = new PokemonDAO(dbm);
            Partie partie = new Partie(pokemonDAO, c);
            partie.lancer();

            dbm.disconnect();
        } catch (Exception e) {
            System.out.println("Erreur : " + e.getMessage());
            e.printStackTrace();
        }
    }
}