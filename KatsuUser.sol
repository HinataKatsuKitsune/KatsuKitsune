pragma solidity ^0.8.7;


contract KatsuUser {
    
    address Owner;
    string Bio;
    string Motto;
    string FavAnime;
    string FavAnimeCharakter;
    string Passion;
    string MySuperpower;
    
    constructor(address _owner, string memory _bio, string memory _motto,
    string memory _favAnime, string memory _favchar, string memory _passion, string memory _superpower) {
        Owner = _owner;
        Bio = _bio;
        Motto = _motto;
        FavAnime = _favAnime;
        FavAnimeCharakter = _favchar;
        Passion = _passion;
        MySuperpower = _superpower;
        
    }
    
    function getOwner() public view returns (address) {
        return Owner;
    }
    
    function changeOwner(address _newowner) public returns (bool) {
        require(msg.sender == Owner, "Only owner can call this function");
        Owner = _newowner;
        return true;
    }
    
    function getProfileInfo() public view returns(string memory, string memory, string memory, 
    string memory, string memory, string memory) {
        return (Bio, Motto, FavAnime, FavAnimeCharakter, Passion, MySuperpower);
    }
    
    function changeProfileInfo(string memory _bio, string memory _motto,
    string memory _favanime, string memory _favchar, string memory _passion, string memory _superpower) public returns(bool) {
        require(tx.origin == Owner, 'only owner can change');
            if (bytes(_bio).length != 0) {
                Bio = _bio;
            }
        
            if (bytes(_motto).length != 0) {
                Motto = _motto;
            }
            
            if (bytes(_favanime).length != 0) {
                FavAnime = _motto;
            }
            
            if (bytes(_favchar).length != 0) {
                FavAnimeCharakter = _motto;
            }
            
            if (bytes(_passion).length != 0) {
                Passion = _motto;
            }
            
            if (bytes(_superpower).length != 0) {
                MySuperpower = _motto;
            }
        
        return true;
        }
    
    function getBio() public view returns(string memory){
        return Bio;
    }
    
    function getMotto() public view returns(string memory){
        return Motto;
    }
        
    function getFavoriteAnime() public view returns(string memory){
        return FavAnime;
    }
    
    function getFavoriteAnimeChar() public view returns(string memory){
        return FavAnimeCharakter;
    }
    
    function getPassion() public view returns(string memory){
        return FavAnime;
    }
    
    function getMySuperpower() public view returns(string memory){
        return MySuperpower;
    }
}
