pragma solidity ^0.4.0;

contract Clicks {

  uint[] internal clicks;

  function addClicks(uint[] _clicks) public returns (uint){
    // TODO: check gas availability
    for (uint i = 0; i < _clicks.length; i++) {
      clicks.push(_clicks[i]);
    }
    return clicks.length;
  }

  function addClick(uint _click) public returns (uint){
    return clicks.push(_click);
  }

  function getClicks() public view returns (uint[]) {
    return clicks;
  }

  function getClicksLen() public view returns (uint) {
    return clicks.length;
  }
}
