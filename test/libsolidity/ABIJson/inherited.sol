contract Base {
    function baseFunction(uint p) public returns (uint i) { return p; }
    event baseEvent(bytes32 indexed evtArgBase);
}
contract Derived is Base {
    function derivedFunction(bytes32 p) public returns (bytes32 i) { return p; }
    event derivedEvent(uint indexed evtArgDerived);
}
// ----
//     :Base
// [
//   {
//     "constant": false,
//     "inputs":
//     [
//       {
//         "internalType": "uint256",
//         "name": "p",
//         "type": "uint256"
//       }
//     ],
//     "name": "baseFunction",
//     "outputs":
//     [
//       {
//         "internalType": "uint256",
//         "name": "i",
//         "type": "uint256"
//       }
//     ],
//     "payable": false,
//     "stateMutability": "nonpayable",
//     "type": "function"
//   },
//   {
//     "anonymous": false,
//     "inputs":
//     [
//       {
//         "indexed": true,
//         "internalType": "bytes32",
//         "name": "evtArgBase",
//         "type": "bytes32"
//       }
//     ],
//     "name": "baseEvent",
//     "type": "event"
//   }
// ]
//
//
//     :Derived
// [
//   {
//     "constant": false,
//     "inputs":
//     [
//       {
//         "internalType": "uint256",
//         "name": "p",
//         "type": "uint256"
//       }
//     ],
//     "name": "baseFunction",
//     "outputs":
//     [
//       {
//         "internalType": "uint256",
//         "name": "i",
//         "type": "uint256"
//       }
//     ],
//     "payable": false,
//     "stateMutability": "nonpayable",
//     "type": "function"
//   },
//   {
//     "constant": false,
//     "inputs":
//     [
//       {
//         "internalType": "bytes32",
//         "name": "p",
//         "type": "bytes32"
//       }
//     ],
//     "name": "derivedFunction",
//     "outputs":
//     [
//       {
//         "internalType": "bytes32",
//         "name": "i",
//         "type": "bytes32"
//       }
//     ],
//     "payable": false,
//     "stateMutability": "nonpayable",
//     "type": "function"
//   },
//   {
//     "anonymous": false,
//     "inputs":
//     [
//       {
//         "indexed": true,
//         "internalType": "uint256",
//         "name": "evtArgDerived",
//         "type": "uint256"
//       }
//     ],
//     "name": "derivedEvent",
//     "type": "event"
//   },
//   {
//     "anonymous": false,
//     "inputs":
//     [
//       {
//         "indexed": true,
//         "internalType": "bytes32",
//         "name": "evtArgBase",
//         "type": "bytes32"
//       }
//     ],
//     "name": "baseEvent",
//     "type": "event"
//   }
// ]
