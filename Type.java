public class Type {
    private String nom;
    private int id;

    public Type(String nom, int id){
        this.nom = nom;
    }

    public String getNom() {
        return nom;
    }

    public boolean isSameAs(Type typeAdverse) {
        return typeAdverse != null && this.nom.equals(typeAdverse.nom);
    }

    public int getId(){
        return id;
    }


}