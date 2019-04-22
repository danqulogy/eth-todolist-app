pragma solidity ^0.5.0;

contract TodoList {

    struct Task{
        uint id;
        string content;
        bool completed;
    }

    uint public taskCount = 0;
    mapping (uint => Task) public tasks;

    constructor() public{
       createTask("Complete Wetula Platform");
    }


    
    function createTask(string memory content) public {
        uint taskId = taskCount++;

        Task memory task = Task({id: taskId, content: content, completed: false });
        tasks[taskId] = task;
    }

    function getTaskByID(uint _id) view public returns (string memory) {
        require(tasks[_id].id != 0, "Task does not exist ");

        return tasks[_id].content;
    }

   
}