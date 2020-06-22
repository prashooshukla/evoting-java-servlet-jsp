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
public class CandidateDetails {

    private String candidateId;
    private String userid;
    private String candidateName;
    private String symbol;
    private String party;
    private String city;

    /**
     *
     * @return
     */
    @Override
    public String toString() {
        return "CandidateDetails{" + "candidateId=" + candidateId + ", userid=" + userid + ", candidateName=" + candidateName + ", symbol=" + symbol + ", party=" + party + ", city=" + city + '}';
    }

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
    public String getCandidateName() {
        return candidateName;
    }

    /**
     *
     * @param candidateName
     */
    public void setCandidateName(String candidateName) {
        this.candidateName = candidateName;
    }

    /**
     *
     * @return
     */
    public String getSymbol() {
        return symbol;
    }

    /**
     *
     * @param symbol
     */
    public void setSymbol(String symbol) {
        this.symbol = symbol;
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
     * @param candidateId
     * @param userid
     * @param candidateName
     * @param symbol
     * @param party
     * @param city
     */
    public CandidateDetails(String candidateId, String userid, String candidateName, String symbol, String party, String city) {
        this.candidateId = candidateId;
        this.userid = userid;
        this.candidateName = candidateName;
        this.symbol = symbol;
        this.party = party;
        this.city = city;
    }

    /**
     *
     */
    public CandidateDetails() {
        
    }

}
