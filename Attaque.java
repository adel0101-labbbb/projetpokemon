public class Attaque {

    private int precision;
    private String nom;
    private int puissance;
    private Type type;
    private int priorite;
    
    public Attaque(int precision, String nom, int puissance, Type type, int priorite){
    
        this.precision = precision;
        this.nom = nom;
        this.puissance = puissance;
        this.type = type;
        this.priorite = priorite;
    }

    public void Degats(int precision, int puissance, String nom, Type type, int priorite, String p1, String p2){

        double degats = (p1.getAttaque() / p2.getDefense()) * puissance * MultiplicateurType ;

    }
}

