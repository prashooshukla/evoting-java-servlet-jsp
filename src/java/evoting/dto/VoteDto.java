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
public class VoteDto {

    private String candidateId;
    private String voterId;

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
    public String getVoterId() {
        return voterId;
    }

    /**
     *
     * @param voterId
     */
    public void setVoterId(String voterId) {
        this.voterId = voterId;
    }

    /**
     *
     * @return
     */
    @Override
    public String toString() {
        return "VoteDto{" + "candidateId=" + candidateId + ", voterId=" + voterId + '}';
    }

    /**
     *
     * @param candidateId
     * @param voterId
     */
    public VoteDto(String candidateId, String voterId) {
        this.candidateId = candidateId;
        this.voterId = voterId;
    }

}
