// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract Election {
    uint256 public cadidateCount = 0;

    mapping(uint256 => Candidate) public condidates;

    struct Candidate {
        uint256 id;
        string name;
        uint256 vote_count;
    }

    constructor() public {
        addCandidate("Candidate1");
        addCandidate("Candidate2");
    }

    function addCandidate(string memory _name) private {
        cadidateCount++;
        condidates[cadidateCount] = Candidate(cadidateCount, _name, 0);
    }
}
