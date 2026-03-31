public class EfficaciteType {
    
    private Type typeAttaque;
    private Type typeCible;
    private double multiplicateur;


    public EfficaciteType(Type typeAttaque, Type typeCible, double multiplicateur){

        this.typeAttaque = typeAttaque;
        this.typeCible = typeCible;
        this.multiplicateur = multiplicateur;    
    }

    public double getMultiplicateur(){
        return multiplicateur;
    }

    public Type getTypeAttaque(){
        return typeAttaque;
    }

    public Type getTypeCible(){
        return typeCible;
    }



}