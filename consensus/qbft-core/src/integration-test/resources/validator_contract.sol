/*
 * Copyright ConsenSys AG.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
 * an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */
pragma solidity >= 0.5.3;

contract Validators {
    /** A simple private mutable variable for the assigment */
    uint256 private epochCounter;
    address[] validators;

    constructor() {}

    /**
    * A simple public view function to get the epoch counter
    * @return the epoch counter
    */
    function getEpochCounter() public view returns (uint256) {
        return epochCounter;
    }

    function getValidators() public view returns (address[] memory) {
        return validators;
    }

    /**
    * A simple public function to set the epoch counter
    * @dev Future improvements:
    * - Add an event to emit the epoch counter change
    * - Add a revert with a custom error message if an invalid epoch counter is provided
    * - Currently the epoch counter can be modified by anyone - could be restricted to the validators only
    * @param _epochCounter the new epoch counter
    */
    function setEpochCounter(uint256 _epochCounter) public {
        epochCounter = _epochCounter;
    }
}
