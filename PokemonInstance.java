public class PokemonInstance {
    PokemonEspece espece;
    int niveau;
    int pvMax;
    int pv;
    int attack;
    int defense;
    int vitesse;
    Attaque[] attaques;
    Etat etat;

    public PokemonInstance(PokemonEspece espece, int niveau, Attaque[] attaques) {
        this.espece = espece;
        this.niveau = niveau;

        this.pvMax = espece.pvMax + niveau * 2;
        this.pv = this.pvMax;
        this.attack = espece.attack + niveau;
        this.defense = espece.defense + niveau;
        this.vitesse = espece.vitesse + niveau / 2;

        this.attaques = new Attaque[4];
        for (int i = 0; i < 4; i++) {
            if (attaques != null && i < attaques.length) {
                this.attaques[i] = attaques[i];
            } else {
                this.attaques[i] = null;
            }
        }

        this.etat = espece.etat;
    }

    public boolean estKO() {
        return pv <= 0;
    }

    public String getNom() {
        return espece.nom;
    }

    public Type getType1() {
        return espece.type1;
    }

    public Type getType2() {
        return espece.type2;
    }

    public void subirDegats(int degats) {
        this.pv -= degats;
        if (this.pv < 0) {
            this.pv = 0;
        }
    }

    public void afficherAttaques() {
        System.out.println("Attaques de " + getNom() + " :");
        for (int i = 0; i < attaques.length; i++) {
            if (attaques[i] != null) {
                System.out.println("[" + i + "] " + attaques[i].nom + " (Type: " + attaques[i].type.getNom() + ", Puissance: " + attaques[i].puissance + ")");
            }
        }
    }
}