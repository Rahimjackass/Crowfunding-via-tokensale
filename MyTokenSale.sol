pragma solidity 0.6.0;

import "./Crowdsale.sol";
import "./KycContract.sol";

contract MyTokensale is Crowdsale { 

    KycContract kyc;
    
    constructor(
        uint rate,
        address payable wallet,
        IERC20 token,
        KycContract _kyc
    ) 
        Crowdsale(rate , wallet, token)
        public
    {
        kyc = _kyc;
    }

    function _preValidatePurchase(address beneficiary, uint weiAmount) internal view override {
        super._preValidatePurchase(beneficiary, weiAmount);
        require(kyc.kycCompleted(msg.sender), "KYC not completed,purchase not allowed");
    }
}



