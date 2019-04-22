pragma solidity ^0.5.0;

contract TodoList {

    struct Task{
        uint id;
        string content;
        bool completed;
    }

    uint public taskCount = 0;
    mapping (uint => Task) public tasks;
    
    function createTask(string memory content) public {
        uint taskId = taskCount++;

        Task memory task = Task({id: taskId, content: content, completed: false });
        tasks[taskId] = task;
    }
}