pragma solidity ^0.4.23;


//Buy Credentials or Assign Credentials to new customer
contract CredentialStore {
  //Total Availble Credential to OEM
  //TODO: It should come from oems contract
  address[16] public credentials;

  //Get CMS Users Address
  function getUsers() public view returns (address[16] memory) {
    return credentials;
  }

  //Assign a Credential To User 
  //input: Users Ethereum Wallet ID (Ethereum Account Address)
  function assignCredential(uint credentialID)  public returns (uint) {
    require(credentialID >= 0 && credentialID <16);
    credentials[credentialID] = msg.sender;
    return credentialID;
  }
}
