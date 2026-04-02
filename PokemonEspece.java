public class PokemonEspece{
    String nom;
    int pvMax;
    int pv;
    int attack;
    int defense;
    int vitesse;
    Type type1;
    Type type2;
    Attaque[] attaque;  // !!!!!!
    Etat etat;



    public PokemonEspece(String nom, int pvMax, int pv, int attack, int defense, int vitesse, Type type1, Type type2, Attaque[] attaque, Etat etat){
        this.nom = nom;
        this.pvMax = pvMax;
        this.pv = pv;
        this.attack = attack;
        this.defense = defense;
        this.vitesse = vitesse;
        this.type1 = type1;
        this.type2 = type2;
        this.attaque = attaque;
        this.etat = etat;


    }


}