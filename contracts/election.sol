pragma solidity ^0.4.24;

contract Election{
	// Constructor
	struct Candidate{
		uint id;
		string name;
		uint voteCount;
	}

	mapping (uint => Candidate) public candidates;

	uint public candidatesCount;
	function Election () public{
		addCandidate("Felix");
		addCandidate("Iris");
	}
	function addCandidate (string _name) private{
		candidatesCount ++;
		candidates[candidatesCount] = Candidate(candidatesCount,_name,0);
	}
}