public class Joueur {
    String nom;
    PokemonInstance[] equipe;
    int nbPokemons;
    int indexActif;

    public Joueur(String nom) {
        this.nom = nom;
        this.equipe = new PokemonInstance[6];
        this.nbPokemons = 0;
        this.indexActif = 0;
    }

    public boolean ajouterPokemon(PokemonInstance p) {
        if (nbPokemons >= 6 || p == null) {
            return false;
        }
        equipe[nbPokemons] = p;
        nbPokemons++;
        return true;
    }

    public PokemonInstance getPokemonActif() {
        if (indexActif < 0 || indexActif >= nbPokemons) {
            return null;
        }
        return equipe[indexActif];
    }

    public boolean aEncoreDesPokemons() {
        for (int i = 0; i < nbPokemons; i++) {
            if (equipe[i] != null && !equipe[i].estKO()) {
                return true;
            }
        }
        return false;
    }

    public boolean changerPokemonSuivant() {
        for (int i = 0; i < nbPokemons; i++) {
            if (equipe[i] != null && !equipe[i].estKO()) {
                indexActif = i;
                return true;
            }
        }
        return false;
    }

    public void afficherEquipe() {
        System.out.println("Equipe de " + nom + " :");
        for (int i = 0; i < nbPokemons; i++) {
            PokemonInstance p = equipe[i];
            if (p != null) {
                System.out.println("[" + i + "] " + p.getNom() + " - PV: " + p.pv + "/" + p.pvMax + (p.estKO() ? " KO" : ""));
            }
        }
    }
}