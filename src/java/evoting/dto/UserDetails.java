/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package evoting.dto;

/**
 *
 * @author prashoo
 */
public class UserDetails {
    private String username;
    private String userid;
    private String email;
    private String address;
    private long mobile;
    private String city;
    private String password;
    
    /**
     *
     * @param username
     * @param userid
     * @param email
     * @param address
     * @param mobile
     * @param city
     * @param password
     */
    public UserDetails(String username, String userid, String email, String address, long mobile, String city, String password) {
        this.username = username;
        this.userid = userid;
        this.email = email;
        this.address = address;
        this.mobile = mobile;
        this.city = city;
        this.password = password;
    }

    /**
     *
     * @return
     */
    @Override
    public String toString() {
        return "UserDetails{" + "username=" + username + ", userid=" + userid + ", email=" + email + ", address=" + address + ", mobile=" + mobile + ", city=" + city + ", password=" + password + '}';
    }

    /**
     *
     */
    public UserDetails(){
        
    }
    
    /**
     *
     * @return
     */
    public String getUsername() {
        return username;
    }

    /**
     *
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     *
     * @return
     */
    public String getUserid() {
        return userid;
    }

    /**
     *
     * @param userid
     */
    public void setUserid(String userid) {
        this.userid = userid;
    }

    /**
     *
     * @return
     */
    public String getEmail() {
        return email;
    }

    /**
     *
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     *
     * @return
     */
    public String getAddress() {
        return address;
    }

    /**
     *
     * @param address
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     *
     * @return
     */
    public long getMobile() {
        return mobile;
    }

    /**
     *
     * @param mobile
     */
    public void setMobile(long mobile) {
        this.mobile = mobile;
    }

    /**
     *
     * @return
     */
    public String getCity() {
        return city;
    }

    /**
     *
     * @param city
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     *
     * @return
     */
    public String getPassword() {
        return password;
    }

    /**
     *
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }
 
}
