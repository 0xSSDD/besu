# Assignment

## Overview

This submission extends the Hyperledger Besu codebase to support reading and testing a new private mutable variable (`epochCounter`) in the `validator_contract.sol` smart contract, as per the assignment requirements.

## What Was Done

1. **Smart Contract Update**
   - Modified `validator_contract.sol` to add a private mutable variable `epochCounter` with a public getter (`getEpochCounter`) and setter (`setEpochCounter`).

2. **Contract Compilation**
   - Compiled the updated Solidity contract to generate the ABI and binary for integration with Besu.


3. **Client Modification**
   - Extended the `ValidatorContractController` Java class to:
     - Add support for reading the `epochCounter` value from the contract.
     - Implement robust error handling and function-specific decoding for both `getValidators` and `getEpochCounter`.

4. **Unit Tests**
   - Added and updated tests in `ValidatorContractControllerTest` to:
     - Verify correct reading of the `epochCounter` value.
     - Ensure proper error handling for all edge cases (failed/invalid/empty simulation results, unexpected types, etc.) for both `getValidators` and `getEpochCounter`.

### Notes

- All changes are isolated to the contract, controller, and test files as required.

## To run locally

Clone the repo locally, and then

* The tests can be run locally by running:
```
# from the root of the project
./gradlew :consensus:qbft:test --tests "org.hyperledger.besu.consensus.qbft.validator.ValidatorContractControllerTest"
```

* The smart ocntract can be compiled by:
```
# assumes you are in the root of this project and have solc installed
$: cd consensus/qbft-core/src/integration-test/resources
$: solc --bin --abi validator_contract.sol -o build
```

* Optionally to ensure code style was maintained, the linter can be run using the following command:
```
./gradlew spotlessApply
```


The rest of the original readme can be found at: https://github.com/hyperledger/besu