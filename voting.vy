# @dev Vyper contract for managing a voting process
# @title Voting
# @notice This contract allows users to vote for candidates and tally the votes.

# Define a mapping from candidate names to vote counts
votes: public(map(string, uint256))

# Define an event for voting
event VoteCasted(candidate: string, votes: uint256)

@public
@pure
@constant
def get_votes(candidate: string) -> uint256:
    """
    @dev Returns the number of votes for a given candidate.
    @param candidate The name of the candidate.
    @return uint256 The number of votes for the candidate.
    """
    return self.votes[candidate]

@public
def vote(candidate: string):
    """
    @dev Casts a vote for a given candidate.
    @param candidate The name of the candidate to vote for.
    """
    # Increment the vote count for the candidate
    self.votes[candidate] += 1
    
    # Emit the VoteCasted event
    log.VoteCasted(candidate, self.votes[candidate])
