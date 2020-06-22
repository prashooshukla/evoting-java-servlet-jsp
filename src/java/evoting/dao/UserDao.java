/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package evoting.dao;

import evoting.dbutil.DBConnection;
import evoting.dto.CandidateDto;
import evoting.dto.UserDetails;
import evoting.dto.UserDto;
import java.io.IOException;
import java.sql.Blob;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Base64;

/**
 *
 * @author prashoo
 */
public class UserDao {

    private static Statement st, st1;
    private static PreparedStatement ps, ps1, ps2, ps3, ps4;

    static {

        try {

            ps = DBConnection.getConnection().prepareStatement("SELECT * FROM USER_DETAILS WHERE ADHAR_NO = ? AND PASSWORD= ?");
            ps1 = DBConnection.getConnection().prepareStatement("SELECT CANDIDATE_ID,USERNAME,PARTY,SYMBOL FROM CANDIDATE,USER_DETAILS WHERE CANDIDATE.USER_ID=USER_DETAILS.ADHAR_NO AND CANDIDATE.CITY=(SELECT CITY FROM USER_DETAILS WHERE ADHAR_NO=?)");
            ps2 = DBConnection.getConnection().prepareStatement("DELETE FROM USER_DETAILS WHERE ADHAR_NO=?");
            ps3 = DBConnection.getConnection().prepareStatement("SELECT ADHAR_NO ,USERNAME,ADDRESS,CITY,EMAIL,MOBILE_NO FROM USER_DETAILS WHERE ADHAR_NO=?");
            ps4 = DBConnection.getConnection().prepareStatement("UPDATE USER_DETAILS SET USERNAME=?,ADDRESS=?,CITY=?,EMAIL=?,MOBILE_NO=? WHERE ADHAR_NO=?");

            st = DBConnection.getConnection().createStatement();
            st1 = DBConnection.getConnection().createStatement();

        } catch (Exception e) {
            if (DBConnection.getConnection() != null) {
                System.out.println("not null");
            }
            e.printStackTrace();
        }
    }

    /**
     *
     * @param user
     * @return
     * @throws SQLException
     */
    public static boolean updateUser(UserDetails user) throws SQLException {
        ps4.setString(1, user.getUsername());
        ps4.setString(2, user.getAddress());
        ps4.setString(3, user.getCity());
        ps4.setString(4, user.getEmail());
        ps4.setLong(5, user.getMobile());
        ps4.setString(6, user.getUserid());
        
        return (ps4.executeUpdate()!=0);
    }

    /**
     *
     * @param uid
     * @return
     * @throws SQLException
     */
    public static UserDetails getUserDetailsById(String uid) throws SQLException {
        ps3.setString(1, uid);
        ResultSet rs = ps3.executeQuery();
        UserDetails userDetails = new UserDetails();
        if (rs.next()) {

            userDetails.setUserid(rs.getString(1));
            userDetails.setUsername(rs.getString(2));
            userDetails.setAddress(rs.getString(3));
            userDetails.setCity(rs.getString(4));
            userDetails.setEmail(rs.getString(5));
            userDetails.setMobile(Long.parseLong(rs.getString(6)));
        }
        System.out.println("userDetails: " + userDetails);
        return userDetails;
    }

    /**
     *
     * @param uid
     * @return
     * @throws SQLException
     */
    public static boolean deleteUserById(String uid) throws SQLException {
        ps2.setString(1, uid);

        return (ps2.executeUpdate() != 0);
    }

    /**
     *
     * @return
     * @throws SQLException
     */
    public static ArrayList<String> getUserId() throws SQLException {
        ResultSet rs = st1.executeQuery("SELECT ADHAR_NO FROM USER_DETAILS");
        ArrayList<String> userIdList = new ArrayList<>();
        while (rs.next()) {
            userIdList.add(rs.getString(1));
        }
        System.out.println("useridList:" + userIdList);
        return userIdList;
    }

    /**
     *
     * @return
     * @throws SQLException
     */
    public static ArrayList<UserDetails> getUserList() throws SQLException {
        ResultSet rs = st.executeQuery("SELECT * FROM USER_DETAILS");
        ArrayList<UserDetails> userList = new ArrayList<>();

        while (rs.next()) {
            UserDetails userDetails = new UserDetails();
            userDetails.setUserid(rs.getString(1));
            userDetails.setUsername(rs.getString(3));
            userDetails.setAddress(rs.getString(4));
            userDetails.setCity(rs.getString(5));
            userDetails.setEmail(rs.getString(6));
            userDetails.setMobile(Long.parseLong(rs.getString(7)));
            userList.add(userDetails);
        }
        System.out.println("userList in dao:" + userList);
        return userList;
    }

    /**
     *
     * @param user
     * @return
     * @throws SQLException
     */
    public static String validateUser(UserDto user) throws SQLException {
        ps.setString(1, user.getUserid());
        ps.setString(2, user.getPassword());

        ResultSet rs = ps.executeQuery();
        if (rs.next()) {

            return rs.getString(8);
        } else {
            return null;
        }
    }

    /**
     *
     * @param userid
     * @return
     * @throws SQLException
     * @throws IOException
     */
    public static ArrayList<CandidateDto> viewCandidate(String userid) throws SQLException, IOException {

        ArrayList<CandidateDto> candidate = new ArrayList<>();
        ps1.setString(1, userid);
        ResultSet rs = ps1.executeQuery();
        Blob blob;
        byte[] imageBytes;
        String base64Image;
        while (rs.next()) {
            blob = rs.getBlob(4);
            imageBytes = blob.getBytes(1l, (int) blob.length());
            base64Image = Base64.getEncoder().encodeToString(imageBytes);
            candidate.add(new CandidateDto(rs.getString(1), rs.getString(2), rs.getString(3), base64Image));

        }

        return candidate;
    }

}
