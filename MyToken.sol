pragma solidity 0.6.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";

contract Mytoken is ERC20, ERC20Detailed {

    constructor(uint initialSupply) ERC20Detailed("Rahimjackass' Token", "NOUDI", 0) public {
        _mint(msg.sender, initialSupply);
    }
}