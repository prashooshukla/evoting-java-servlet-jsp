/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package evoting.dto;

import java.io.InputStream;

/**
 *
 * @author prashoo
 */
public class AddCandidateDto {

    /**
     *
     * @return
     */
    @Override
    public String toString() {
        return "AddCandidateDto{" + "candidateId=" + candidateId + ", party=" + party + ", city=" + city + ", userid=" + userid + ", symbol=" + symbol + '}';
    }

    private String candidateId;
    private String party;
    private String city;
    private String userid;
    private InputStream symbol;

    /**
     *
     * @return
     */
    public String getCandidateId() {
        return candidateId;
    }

    /**
     *
     * @param candidateId
     */
    public void setCandidateId(String candidateId) {
        this.candidateId = candidateId;
    }

    /**
     *
     * @return
     */
    public String getParty() {
        return party;
    }

    /**
     *
     * @param party
     */
    public void setParty(String party) {
        this.party = party;
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
    public InputStream getSymbol() {
        return symbol;
    }

    /**
     *
     * @param symbol
     */
    public void setSymbol(InputStream symbol) {
        this.symbol = symbol;
    }

    /**
     *
     * @param candidateId
     * @param party
     * @param city
     * @param userid
     * @param symbol
     */
    public AddCandidateDto(String candidateId, String party, String city, String userid, InputStream symbol) {
        this.candidateId = candidateId;
        this.party = party;
        this.city = city;
        this.userid = userid;
        this.symbol = symbol;
    }

}
