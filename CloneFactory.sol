// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./Logic.sol";

contract CloneFactory {
    event CloneCreated(address clone);

    function createClone(address implementation) external returns(address instance) {
        bytes20 target = bytes20(implementation);

        assembly {
            let clone := mload(0x40)
            mstore(clone, 0x3d602d80600a3d3981f3)
            mstore(add(clone,0x14), shl(0x60, target))
            mstore(add(clone, 0x28), 0x5af43d82803e903d91602b57fd5bf3)
            instance := create(0, clone, 0x37)
        }

        require(instance!=address(0), "creation failed");
        emit CloneCreated(instance);
    }
}