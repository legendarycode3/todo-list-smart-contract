# TodoList Smart Contract

## Project Overview
A To-Do List smart contract(decentralized), that securely manages tasks on the blockchain. 
* It allows users to create tasks, assign unique IDs.
* It supports toggle completion status.
* Can retrieve their personal task list without relying on a centralized server or intermediary.
* And can also delete a To-Do list already existing.

## 📌 Features
* ****Immutability:**** Once deployed, the code cannot be altered, ensuring the rules of the to-do list remain constant.
* ****Transparency:****  All tasks and state changes are visible.
* ****Decentralization:****  No single entity controls the data, protecting it from censorship.
* ****Events:**** Emits an event (TaskCreated or TaskCompleted) to notify on the offchain that the data has updated.
* ****State Handling:**** Tasks have predefined states (isDeleted, status). Ensures data integrity with checks on task existence.
* Task creation with a unique identifier.
* ****Task Management:****
  * Create tasks with a id, description,isCompleted and  status.
  * Update task details (name, description,isCompleted and isDeleted status state).

## 🧠 Key Concepts(Components) Applied 
* ****Struct:**** Task Struct,  Defines the data structure of a task, typically containing `id`, `content`, (description),  `isCompleted` (boolean status) and `isDelected` (boolean status).
* ****Mapping:**** Used as a key-value store (like a database table) to map an integer ID to a task struct for efficient retrieval, (e.g., `mapping(uint => Task) public tasks`).
* ****State Variables:**** Keeps track of the total number of tasks (taskCount) on the blockchain.
  

## 📂 Project Structure (Files)
* ****`TodoList.sol`****: The core contract implementing the createTask(),     function toggleCompleted(uint256 _id) public {
(), deleteTask()  functions.
* ****`TodoList.t.sol`****: Unit Test (suite) containing tests to validate contract functionalities.

## 🌐Technology Stack (Technologies Used)
* ****[Solidity](https://www.soliditylang.org/)**** -  The programming language for writing the Smart contracts.
* ****[Remix IDE](https://remix.ethereum.org/)**** - used it to write, and deploy the smart contract directly in the browser first. A fastest way to get started, acting as a "no-setup" workshop for smart contract development.
* ****[Foundry(forge, cast, anvil)](https://www.getfoundry.sh/)****  -   Development framework and testing suite.
* ****[Visual Studio Code](https://code.visualstudio.com/)**** - Install this IDE only if you are using foundry development kit rather than "Remix IDE" which is for quick prototying.

## Getting Started
### Prerequisites
* Solidity Compiler, Version ^0.8.19 or higher.
* `Remix IDE` or `Foundry Development Kit`.

### Recommendation (For Beginners)
****NOTE (Use Remix IDE, for quick prototyping):****  You can literally just copy the main contract source code and paste it on Remix IDE and learn along side how the 
code works while trying to build yours as you keep building.

## Usage
### Building the Project (Using Remix IDE):
1. Copy the core smart contract file code `SimpleBank.sol` to Remix IDE (a browser based IDE, for quick prototyping).
2. Create a new file for the project on your Remix IDE and paste , to learn and build along faster.
3. And then Compile the smart contract file you have created on Remix IDE.

### Building the Project (Using Foundry Development Kit ) - only if you are good using foundry kit
1. Clone the repository:
    ```shell
      git clone https://github.com/legendarycode3/todo-list-smart-contract
   ```
2. Navigate to the directory you created and cloned the file to:
    ```shell
        cd todo-list-smart-contract
   ```
3. Compile the smart contract: `forge build`
   

### Testing the contract (Using Foundry Development Kit )
Runing all tests:
   ```shell
        forge test
   ```
Runing specific test:
   ```shell
      forge test --mt testFunctionName
   ```

## 📋Contract Details
### Functions:
* ****`createTask(string)`:**** Adds a new task to the blockchain, incrementing the task count.
* ****`toggleCompleted(uint256)`:**** Updates the status of a task from pending to done.
* ****`deleteTask(uint256)`:**** This is a function that allows users to mark a task as `deleted`. It checks if the task exists and is not already deleted, then sets the `isDeleted` property to true.

## Usage Guide (How to use - When using Remix IDE)
1. ****Compile:**** Compile the contract.
2. ****Deployment:**** Deploy the contract.
3. ****Create a Task:****
 * Use the `createTask` function:
   * Input a task name (e.g., "Shopping") and a description ("Go to the mool").
 * Use the `toggleCompleted` function:
   * Input an already existing todo task details and not also deleted (just by Id, e.g, 1). It automatically will change the todo task of this Id to true , meaning it  accepts the ID of the task to be toggled.
 * Use the `delete` function:
   * Input an existing todo list (with it unique identifier which is, Id) , if not deleted previously it will then get deleted.

     
## Why This Matters (TodoList Smart Contract)
 They matter because they demonstrate how to manage data storage, read/write actions, and state changes directly on the blockchain without a central server. 
 This key elements make them matter they include: </br>
 1. ****Trustless Execution:**** Users do not need to trust a centralized entity to manage their data; the code executes exactly as written.
 2. ****Demonstrates Immutability::**** Once deployed, the contract's code cannot be changed, ensuring the "trustless" nature of the application.
 3. ****Educational Foundation:**** They provide a complete workflow for building a Decentralized Application (DApp), including writing Solidity code, (E.g deploying with Remix IDE, and connecting a frontend).
 4. ****Decentralized Data Management:**** They show how to store, update, and retrieve data (tasks).
 5. ****CRUD Operations Mastery:**** They show how to Create tasks, Read them, Update their status, and Delete them, which are the backbone of most applications.
 6. ****Interaction with Blockchain:**** They demonstrate how to use mappings (like hashmaps) and structs to store data efficiently.
 7. ****State Management:**** They adequately show how to manage the state of a task (e.g., TODO, DOING, DONE), ensuring data integrity.

### Key Use Cases of ToDO Smart Contracts
 Here are some key usecases for To-Do List Smart Contracts in blockchain (web3)
 * ****DAO Task Management:****
 * ****Task Management Automation:**** Automatically track, update, and verify tasks without needing a central authority.
 * ****Employee Productivity Tracking:****
 * ****Milestone-Based Payments:****
 
 
## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of (Some include):

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).

## Documentation

https://book.getfoundry.sh/

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

## Author
Built with ❤️ by [@legendarycode3](https://github.com/legendarycode3/)  </br>
Part of my  `60 Days of Solidity Challenge`

##  If you find this project helpful,then link back to this repository. 
`I Appreciate`
