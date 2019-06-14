pragma solidity ^0.5.6;

import "../Wallet/FullWallet.sol";


contract Selector {

    // Events

    function invocationSuccessSelector() public pure returns (bytes32) {
        // Note: we are currently unable to use the `.selector` method
        // for events
        return keccak256("InvocationSuccess(bytes32,uint256,uint256)");
    }

    function authorizedSelector() public pure returns (bytes32) {
        return keccak256("Authorized(address,address)");
    }

    function emergencyRecoverySelector() public pure returns (bytes32) {
        return keccak256("EmergencyRecovery(address,address)");
    }

    function recoveryAddressChangedSelector() public pure returns (bytes32) {
        return keccak256("RecoveryAddressChanged(address,address)");
    }

    // Invoke methods

    function invoke0Selector() public pure returns (bytes4) {
        FullWallet w;
        return w.invoke0.selector;
    }

    function invoke1CosignerSendsSelector() public pure returns (bytes4) {
        FullWallet w;
        return w.invoke1CosignerSends.selector;
    }

    function invoke2Selector() public pure returns (bytes4) {
        FullWallet w;
        return w.invoke2.selector;
    }

    // ERC1654
    function isValidSignatureSelector() public pure returns (bytes4) {
        FullWallet w;
        return w.isValidSignature.selector;
    }

}