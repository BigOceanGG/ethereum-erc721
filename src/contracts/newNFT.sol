pragma solidity 0.8.0;
 
import "./tokens/nf-token-metadata.sol";
import "./ownership/ownable.sol";
 
contract newNFT is NFTokenMetadata, Ownable {
 
  constructor() {
    nftName = "Synth NFT1";
    nftSymbol = "SYN1";
  }
 
  function mint(address _to, uint256 _tokenId, string calldata _uri) external onlyOwner {
    super._mint(_to, _tokenId);
    super._setTokenUri(_tokenId, _uri);
  }
  
  function burn(uint256 tokenId) external {
    //solhint-disable-next-line max-line-length
    super._burn(tokenId);
  }
 
}