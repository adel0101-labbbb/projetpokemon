import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Combat {
    private Joueur joueur1;
    private Joueur joueur2;
    private Connection connection;

    public Combat(Joueur joueur1, Joueur joueur2, Connection connection) {
        this.joueur1 = joueur1;
        this.joueur2 = joueur2;
        this.connection = connection;
    }

    public boolean estTermine() {
        return !joueur1.aEncoreDesPokemons() || !joueur2.aEncoreDesPokemons();
    }

    public Joueur getGagnant() {
        if (!joueur1.aEncoreDesPokemons() && !joueur2.aEncoreDesPokemons()) {
            return null;
        }
        if (!joueur1.aEncoreDesPokemons()) {
            return joueur2;
        }
        if (!joueur2.aEncoreDesPokemons()) {
            return joueur1;
        }
        return null;
    }

    public void jouerTour(int choix1, int choix2) {
        PokemonInstance p1 = joueur1.getPokemonActif();
        PokemonInstance p2 = joueur2.getPokemonActif();

        if (p1 == null || p2 == null) {
            return;
        }

        Attaque a1 = p1.attaques[choix1];
        Attaque a2 = p2.attaques[choix2];

        boolean j1Commence = joueEnPremier(p1, a1, p2, a2);

        if (j1Commence) {
            executerAttaque(p1, p2, a1);
            if (!p2.estKO()) {
                executerAttaque(p2, p1, a2);
            }
        } else {
            executerAttaque(p2, p1, a2);
            if (!p1.estKO()) {
                executerAttaque(p1, p2, a1);
            }
        }

        if (p1.estKO()) {
            System.out.println(p1.getNom() + " est KO !");
            joueur1.changerPokemonSuivant();
        }

        if (p2.estKO()) {
            System.out.println(p2.getNom() + " est KO !");
            joueur2.changerPokemonSuivant();
        }
    }

    private boolean joueEnPremier(PokemonInstance p1, Attaque a1, PokemonInstance p2, Attaque a2) {
        if (a1.priorite != a2.priorite) {
            return a1.priorite > a2.priorite;
        }
        return p1.vitesse >= p2.vitesse;
    }

    private void executerAttaque(PokemonInstance attaquant, PokemonInstance defenseur, Attaque attaque) {
        if (attaque == null) {
            return;
        }

        System.out.println(attaquant.getNom() + " utilise " + attaque.nom + " !");

        int base = attaque.puissance + attaquant.attack - defenseur.defense;
        if (base < 1) {
            base = 1;
        }

        double multiplicateur = 1.0;

        if (defenseur.getType1() != null) {
            multiplicateur *= getMultiplicateur(attaque.type.getId(), defenseur.getType1().getId());
        }
        if (defenseur.getType2() != null) {
            multiplicateur *= getMultiplicateur(attaque.type.getId(), defenseur.getType2().getId());
        }

        int degats = (int) Math.round(base * multiplicateur);
        if (degats < 1) {
            degats = 1;
        }

        defenseur.subirDegats(degats);

        System.out.println(defenseur.getNom() + " perd " + degats + " PV.");
        System.out.println(defenseur.getNom() + " : " + defenseur.pv + "/" + defenseur.pvMax + " PV");
    }

    private double getMultiplicateur(int typeAttaqueId, int typeDefenseId) {
        try {
        
            try {
                String sql = "SELECT multi FROM efficacite WHERE fkAtt = ? AND fkDef = ?";
                PreparedStatement ps = connection.prepareStatement(sql);
                ps.setInt(1, typeAttaqueId);
                ps.setInt(2, typeDefenseId);
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    return rs.getDouble("multi");
                }
            } catch (SQLException e) {
                
            }

           
            try {
                String sql = "SELECT multiplicateur FROM efficacite_type WHERE id_type_attaquant = ? AND id_type_defenseur = ?";
                PreparedStatement ps = connection.prepareStatement(sql);
                ps.setInt(1, typeAttaqueId);
                ps.setInt(2, typeDefenseId);
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    return rs.getDouble("multiplicateur");
                }
            } catch (SQLException e) {
                
            }

        } catch (Exception e) {
            System.out.println("Erreur lecture efficacite : " + e.getMessage());
        }

        return 1.0;
    }
}