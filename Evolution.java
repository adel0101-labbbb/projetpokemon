public class Evolution{

    private PokemonEspece especeBase;
    private PokemonEspece especeEvoluee;
    private int niveauRequis;


    public Evolution(PokemonEspece especeBase, PokemonEspece especeEvoluee, int niveauRequis){

        this.especeBase = especeBase;
        this.especeEvoluee = especeEvoluee;
        this.niveauRequis = niveauRequis;
    }

    
    public boolean peutEvoluer(int niveau){
    return niveau >= niveauRequis;
    }

    public PokemonEspece getEspeceBase(){
    return especeBase; 
    }

    public PokemonEspece getEspeceEvoluee(){
    return especeEvoluee; 
    }

    public int getNiveauRequis(){   
    return niveauRequis;
    }


}


