/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package evoting.dto;

/**
 *
 * @author vishal
 */
public class VoteDto {

    private String candidateId;
    private String voterId;

    public String getCandidateId() {
        return candidateId;
    }

    public void setCandidateId(String candidateId) {
        this.candidateId = candidateId;
    }

    public String getVoterId() {
        return voterId;
    }

    public void setVoterId(String voterId) {
        this.voterId = voterId;
    }

    @Override
    public String toString() {
        return "VoteDto{" + "candidateId=" + candidateId + ", voterId=" + voterId + '}';
    }

    public VoteDto(String candidateId, String voterId) {
        this.candidateId = candidateId;
        this.voterId = voterId;
    }

}
