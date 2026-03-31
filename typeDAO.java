public double recupMulti(int fkAtt,int fkDef){
    String sql = "SELECT multi from efficacite WHERE fkAtt = ? and fkDef= ? LIMIT 1;";

    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setInt(1,fkAtt);
    pstmt.setInt(2,fkDef);
    ResultSet multi = pstmt.executeQuery(sql);
    return multi ;
}