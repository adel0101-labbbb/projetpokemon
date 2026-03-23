public class Attaque {

    private int id;
    private String nom;
    private int puissance;
    private Type type;
    private int priorite;
}

public Attaque(int id, String nom, int puissance, Type type, int priorite){
    this.id = id;
    this.nom = nom;
    this.puissance = puissance;
    this.type = type;
    this.priorite = priorite;
}

public int calculerDegats(int id, int puissance, String nom, Type type, int priorite)