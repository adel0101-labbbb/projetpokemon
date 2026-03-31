public class Evolution{

    private Pokemon especeBase;
    private Pokemon especeEvoluee;
    private int niveauReqis;


    public Evolution(Pokemon especeBase, Pokemon especeEvoluee, int niveauReqis){

        this.especeBase = especeBase;
        this.especeEvoluee = especeEvoluee;
        this.niveauReqis = niveauReqis;
    }

    
    public boolean peutEvoluer(int niveau){
    return niveau >= niveauReqis;
    }

    public Pokemon getEspeceBase(){
    return especeBase; 
    }

    public Pokemon getEspeceEvoluee(){
    return especeEvoluee; 
    }

    public int getNiveauReqis(){   
    return niveauReqis;
    }


}


