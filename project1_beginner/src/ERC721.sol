pragma solidity ^0.8.13;
contract DevconPanda is ERC721URIStorage{
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;


    constructor () ERC721{"DevconPanda","DCP"}{}

    function mint(address user,string memory tokenURI) public return (uint256){
        uint256 newItemId = _tokenIds.current();
        _mint(user ,newItemId);
        _setTokenURL(newItemId,tokenURI);

        _tokenIds.increment();
        return newItemIds 
        
    }
}