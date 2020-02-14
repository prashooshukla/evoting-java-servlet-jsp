/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package evoting.dao;

import evoting.dbutil.DBConnection;
import evoting.dto.CandidateDto;
import evoting.dto.VoteDto;
import java.io.IOException;
import java.sql.Blob;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Base64;
import java.util.LinkedHashMap;

/**
 *
 * @author vishal
 */
public class VoteDao {

    private static PreparedStatement ps, ps2,ps3,ps4;
    private static Statement st;
    static {
        try {
            st=DBConnection.getConnection().createStatement();
            ps = DBConnection.getConnection().prepareStatement("SELECT CANDIDATE_ID FROM VOTING WHERE VOTER_ID = ?");
            ps2 = DBConnection.getConnection().prepareStatement("SELECT CANDIDATE_ID,USERNAME,PARTY,SYMBOL FROM CANDIDATE,USER_DETAILS WHERE CANDIDATE.USER_ID = USER_DETAILS.ADHAR_NO AND CANDIDATE_ID=?");
            ps3 = DBConnection.getConnection().prepareStatement("INSERT INTO VOTING VALUES (?,?)");
            ps4 = DBConnection.getConnection().prepareStatement("SELECT CANDIDATE_ID,COUNT(*) FROM VOTING GROUP BY CANDIDATE_ID ORDER BY COUNT(*) DESC");
            
        } catch (Exception e) {

            e.printStackTrace();
        }
    }
    
    
    
    public static LinkedHashMap<String,Integer> getResult()throws Exception{
        LinkedHashMap <String,Integer> result =new LinkedHashMap<>();
        ResultSet rs=ps4.executeQuery();
        while(rs.next()){
            result.put(rs.getString(1),rs.getInt(2));
        }
        System.out.println(result);
        return result;
    }
    
    public static int getVoteCount() throws SQLException{
        ResultSet rs=st.executeQuery("SELECT COUNT(*) FROM VOTING");
        if(rs.next()){
            return rs.getInt(1);
        }
        return 0;
    }
    
    public static boolean addVote(VoteDto vote)throws SQLException{
        ps3.setString(1, vote.getCandidateId());
        ps3.setString(2, vote.getVoterId());
        return (ps3.executeUpdate()!=0);
    }
    
    public static String getCandidateId(String userid)throws SQLException{
        ps.setString(1, userid);
        ResultSet rs=ps.executeQuery();
        if(rs.next()){
            System.out.println(rs.getString(1));
            return rs.getString(1);
        }
        else{
            return null;
        }
    }

    public static CandidateDto getVote(String candidateid) throws SQLException, IOException {
        CandidateDto candidate = null;
        Blob blob;
        byte[] imageBytes;
        String cImage;
        ps2.setString(1, candidateid);
        ResultSet rs = ps2.executeQuery();
        if (rs.next()) {
            blob = rs.getBlob(4);
            imageBytes = blob.getBytes(1l, (int) blob.length());
            cImage = Base64.getEncoder().encodeToString(imageBytes);
            candidate = new CandidateDto(rs.getString(1), rs.getString(2), rs.getString(3), cImage);

        }
        return candidate;
    }

}
