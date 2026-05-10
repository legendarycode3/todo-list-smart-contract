// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;


/**
 * @title  TodoList Smart Contract
 * @author LegendaryCode
 * @notice A decentralized to-do list 
 */

contract TodoList {


              /** ERRORS (CUSTOM) */
    error TaskDoesNotExist(uint256 taskId);
    error TaskIsDeleted(uint256 taskId);
   

            /** STATE VARIABLES */
    /// @notice A Struct that group related properties of a single task, with it details.
    struct Task { 
        uint256 id;        
        string content;   
        bool isCompleted;  
         bool isDeleted;    
    }

    /// @notice  A key-value pair structure (uint256 => Tasks) that functions like a hash table. It allows for efficient retrieval of any task by its unique ID. stores tasks, indexed by their ID.
    mapping(uint256 => Task) public s_tasks; 

    /// @notice Used to increment IDs and track the total number of tasks.
    uint256 public taskCount;




                /** EVENTS */
    /// @notice  Event to log the status change offchain.
    event TaskStatusToggled(uint256 indexed id, bool isCompleted);



    /** FUNCTIONS */
    /// @notice A function that creates a Task
    function createTask(string memory _taskDescription) public {
        taskCount = taskCount + 1;

        //This stores the new Task struct in the mapping using the new count as the key. It accesses a mapping named tasks at the current taskCount position to store the new task.
        s_tasks[taskCount] = Task(taskCount, _taskDescription, false, false);
    }


    /// @notice A public function that accepts the ID of the task to be toggled.
    function toggleCompleted(uint256 _id) public {
        // To Ensure task exists (assuming non-zero ID) , using custom error
        if(_id < 0 || _id > taskCount){
            revert TaskDoesNotExist(_id);
        }

        if(s_tasks[_id].isDeleted){
            revert TaskIsDeleted(_id);
        }
  

        // This retrieves the Task struct from the tasks mapping by its ID. Using storage ensures that any modifications to the task variable directly update the actual task data stored on the blockchain, rather than a local copy.
        Task storage task = s_tasks[_id];

        // Core-logic .
        task.isCompleted = !task.isCompleted;

        /// @notice TaskStatusToggled to log the change, allowing external applications (like a web frontend) to listen for to this state change , offchain. 
        emit TaskStatusToggled(_id, task.isCompleted);
    }


    /// @notice A function to delete a Task
    function deleteTask(uint256 _id) public {
        
        require(_id > 0 && _id <= taskCount, "Task Does not exist.");
        require(!s_tasks[_id].isDeleted, "Task already deleted");
        s_tasks[_id].isDeleted  = true;
    }


}












