/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package evoting.dao;

import evoting.dbutil.DBConnection;
import evoting.dto.AddCandidateDto;
import evoting.dto.CandidateDetails;
import java.io.IOException;
import java.sql.Blob;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Base64.Encoder;

/**
 *
 * @author prashoo
 */
public class CandidateDao {

    private static Statement st, st2, st3;
    private static PreparedStatement ps, ps1, ps2,ps3,ps4;

    static {
        try {
            st = DBConnection.getConnection().createStatement();
            st2 = DBConnection.getConnection().createStatement();
            st3 = DBConnection.getConnection().createStatement();
            ps = DBConnection.getConnection().prepareStatement("SELECT USERNAME FROM USER_DETAILS WHERE ADHAR_NO = ?");
            ps1 = DBConnection.getConnection().prepareStatement("INSERT INTO CANDIDATE VALUES(?,?,?,?,?)");
            ps2 = DBConnection.getConnection().prepareStatement("SELECT * FROM CANDIDATE WHERE CANDIDATE_ID=?");
            ps3 = DBConnection.getConnection().prepareStatement("DELETE FROM CANDIDATE WHERE CANDIDATE_ID=?");
            ps4 = DBConnection.getConnection().prepareStatement("UPDATE CANDIDATE SET PARTY = ?, CITY = ? ,SYMBOL = ? WHERE CANDIDATE_ID=?");

            
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    /**
     *
     * @param candidate
     * @return
     * @throws SQLException
     * @throws IOException
     */
    public static boolean updateCandidate(AddCandidateDto candidate)throws SQLException,IOException{
        ps4.setString(1, candidate.getParty());
        ps4.setString(2, candidate.getCity());
        ps4.setBinaryStream(3, candidate.getSymbol(), candidate.getSymbol().available());
        ps4.setString(4, candidate.getCandidateId());
        
        return (ps4.executeUpdate() != 0);
    }

    /**
     *
     * @param cid
     * @return
     * @throws SQLException
     */
    public static int deleteCandidateById(String cid)throws SQLException{
        ps3.setString(1,cid);
        return (ps3.executeUpdate());     
    }
    
    /**
     *
     * @return
     * @throws SQLException
     */
    public static String getNewCandidateId() throws SQLException {
      ResultSet rs = st.executeQuery("select max(CANDIDATE_ID) from CANDIDATE");
        if (rs.next()) {
            String empid = rs.getString(1);
            int eno = Integer.parseInt(empid.substring(1));
            return "C" + (eno + 1);
        } else {
            return "C101";
        }
        
    }

    /**
     *
     * @param uid
     * @return
     * @throws SQLException
     */
    public static String getUserNameById(String uid) throws SQLException {

        ps.setString(1, uid);

        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            return rs.getString(1);
        } else {
            return null;
        }
    }

    /**
     *
     * @return
     * @throws SQLException
     */
    public static ArrayList<String> getCandidateId() throws SQLException {
        ResultSet rs = st3.executeQuery("select CANDIDATE_ID from CANDIDATE");
        ArrayList<String> id = new ArrayList<>();
        while (rs.next()) {
            id.add(rs.getString(1));
        }
        return id;
    }

    /**
     *
     * @param cid
     * @return
     * @throws SQLException
     */
    public static CandidateDetails getDetailsById(String cid) throws SQLException{

        ps2.setString(1, cid);
        ResultSet rs = ps2.executeQuery();
        CandidateDetails candidate = new CandidateDetails();
        Blob blob;
        byte[] imageBytes;
        String base64Image;
        if (rs.next()) {
            blob = rs.getBlob(4);
            imageBytes = blob.getBytes(1l, (int) blob.length());
            Encoder ec = Base64.getEncoder();
            base64Image = ec.encodeToString(imageBytes);
            System.out.println("image:"+base64Image);
            candidate.setCandidateId(cid);
            candidate.setParty(rs.getString(2));
            candidate.setUserid(rs.getString(3));
            candidate.setSymbol(base64Image);
            candidate.setCity(rs.getString(5));
        }

        return candidate;

    }
    
    /**
     *
     * @return
     * @throws SQLException
     */
    public static ArrayList<String> getCity() throws SQLException {

        ResultSet rs = st2.executeQuery("select distinct CITY from USER_DETAILS");

        ArrayList<String> cityList = new ArrayList<>();

        while (rs.next()) {

            cityList.add(rs.getString(1));
        }
        return cityList;
    }

    /**
     *
     * @param candidate
     * @return
     * @throws SQLException
     * @throws IOException
     */
    public static boolean addCandidate(AddCandidateDto candidate) throws SQLException, IOException {
        System.out.println("candidate" + candidate.toString());
        ps1.setString(1, candidate.getCandidateId());
        ps1.setString(2, candidate.getParty());
        ps1.setString(3, candidate.getUserid());
        ps1.setBinaryStream(4, candidate.getSymbol(), candidate.getSymbol().available());
        ps1.setString(5, candidate.getCity());

        return (ps1.executeUpdate() != 0);

    }

}
