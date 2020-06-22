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
public class CandidateDto {

    private String candidateId;
    private String candidateName;
    private String party;
    private String symbol;

    /**
     *
     * @param candidateId
     * @param candidateName
     * @param party
     * @param symbol
     */
    public CandidateDto(String candidateId, String candidateName, String party, String symbol) {
        this.candidateId = candidateId;
        this.candidateName = candidateName;
        this.party = party;
        this.symbol = symbol;
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
    @Override
    public String toString() {
        return "CandidateDto{" + "candidateId=" + candidateId + ", candidateName=" + candidateName + ", party=" + party + ", symbol=" + symbol + '}';
    }

}
