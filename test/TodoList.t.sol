// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

/**
 * @title   TodoList Smart Contract
 * @author  LegendaryCode
 * @notice   A test contract for TodoList
 */

import "forge-std/Test.sol";
import {TodoList} from "../src/TodoList.sol";

contract TodoListTest is Test{

    TodoList todolist;


    /** FUnctions */

    /// @notice Setup function
    function setUp() public {
        todolist = new TodoList();
    }


    /// @notice Function testCreateTask(), a test that create a task
    function testCreateTask() public {
        todolist.createTask("MultiMillionaire");
       
        assertEq(todolist.taskCount(), 1, "The Create CreateTask function is not working properly");
    }


   function testCreateTest() public {
        // Arrange
        todolist.createTask("MultiMillionaire"); // Checking Counter

       
        (uint256 id, string memory description, bool completed, bool deleted) = todolist.s_tasks(1); // Checking stored task

        // Assert
        assertEq(id, 1);
        assertEq(description, "MultiMillionaire");
        assertEq(completed, false);
        assertEq(deleted, false);
   }


   /// @notice function  testToggleTask() , a test that check if an "Id" was toggled(check if toggles work)
    function testToggleTask() public {
        // Arrange
        todolist.createTask("MultiMillionaire");

        (, , bool completedBefore, ) = todolist.s_tasks(1); // Getting initial state
        assertEq(completedBefore, false, "Task should not start as not completed");

        // Act
        todolist.toggleCompleted(1);
        (, , bool completedAfter, ) = todolist.s_tasks(1);    // Geting updated state


        // Assert
        assertEq(completedAfter, true, "Task was not toggled correctly");
    }
    
   
   
}




