pragma solidity ^0.8.7;

contract RandomPick {
    
    KatsuUserFactory kuf;
    constructor(address kufaddress) {
        kuf = KatsuUserFactory(kufaddress);
    }
    
    function pickRandom() public view returns(string memory, uint16, string memory, string memory) {
        uint256 randomNum = uint256(keccak256(abi.encodePacked(block.timestamp, block.difficulty, msg.sender)))
        % (kuf.getLength() - 1);
        address owner = kuf.contractOwner(kuf.contractArray(randomNum));
        (string memory bio, uint16 birthyear, string memory motto) = kuf.showProfile(owner);
        return (bio, birthyear, motto, "Congratulations, Both got rewarded");
    }
}
