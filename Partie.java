import java.sql.Connection;
import java.util.Scanner;

public class Partie {
    private Joueur joueur1;
    private Joueur joueur2;
    private Combat combat;
    private PokemonDAO pokemonDAO;
    private Scanner scanner;
    private Connection connection;

    public Partie(PokemonDAO pokemonDAO, Connection connection) {
        this.pokemonDAO = pokemonDAO;
        this.connection = connection;
        this.scanner = new Scanner(System.in);
    }

    public void lancer() throws Exception {
        System.out.print("Nom du joueur 1 : ");
        joueur1 = new Joueur(scanner.nextLine());

        System.out.print("Nom du joueur 2 : ");
        joueur2 = new Joueur(scanner.nextLine());

        selectionEquipe(joueur1);
        selectionEquipe(joueur2);

        combat = new Combat(joueur1, joueur2, connection);

        while (!combat.estTermine()) {
            afficherSituation();

            int choix1 = demanderChoixAttaque(joueur1);
            int choix2 = demanderChoixAttaque(joueur2);

            combat.jouerTour(choix1, choix2);
        }

        Joueur gagnant = combat.getGagnant();
        if (gagnant == null) {
            System.out.println("Match nul !");
        } else {
            System.out.println("Le gagnant est " + gagnant.nom + " !");
        }
    }

    private void selectionEquipe(Joueur joueur) throws Exception {
        System.out.println("\nSelection des 6 Pokemon pour " + joueur.nom);

        for (int i = 0; i < 6; i++) {
            System.out.print("Choisis l'id du Pokemon " + (i + 1) + " : ");
            int id = Integer.parseInt(scanner.nextLine());

            PokemonInstance p = pokemonDAO.getPokemonInstanceById(id, 50);

            if (p == null) {
                System.out.println("Pokemon introuvable, recommence.");
                i--;
            } else {
                joueur.ajouterPokemon(p);
                System.out.println(p.getNom() + " ajoute a l'equipe.");
            }
        }
    }

    private void afficherSituation() {
        System.out.println("\n===== Situation =====");
        System.out.println(joueur1.nom + " actif : " + joueur1.getPokemonActif().getNom() +
                " (" + joueur1.getPokemonActif().pv + "/" + joueur1.getPokemonActif().pvMax + " PV)");
        System.out.println(joueur2.nom + " actif : " + joueur2.getPokemonActif().getNom() +
                " (" + joueur2.getPokemonActif().pv + "/" + joueur2.getPokemonActif().pvMax + " PV)");
    }

    private int demanderChoixAttaque(Joueur joueur) {
        PokemonInstance p = joueur.getPokemonActif();
        System.out.println("\nTour de " + joueur.nom + " avec " + p.getNom());
        p.afficherAttaques();

        int choix = -1;
        while (choix < 0 || choix > 3 || p.attaques[choix] == null) {
            System.out.print("Choisis une attaque (0 a 3) : ");
            choix = Integer.parseInt(scanner.nextLine());
        }

        return choix;
    }
}