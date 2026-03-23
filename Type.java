public class Type {
    private String nom;

    public Type(String nom) {
        this.nom = nom;
    }

    public String getNom() {
        return nom;
    }

    public boolean isSameAs(Type typeAdverse) {
        return typeAdverse != null && this.nom.equalsIgnoreCase(typeAdverse.nom);
    }

   /* public boolean haveBonusVS(Type typeAdverse){
        

    }
*/
}