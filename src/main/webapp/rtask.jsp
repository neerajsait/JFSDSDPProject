<%@page import="com.klef.jfsd.springboot.model.Recruiter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ include file="recruiter_header.jsp" %>

<style>

.task-section {
    background-color: #ffffff;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
}

.task-section h2 {
    color: #1E3264;
    font-size: 24px;
    margin-bottom: 15px;
}

.task-section p {
    font-size: 16px;
    color: #666;
    margin-bottom: 25px;
}


.task-list {
    margin-bottom: 30px;
}

.task-list h3 {
    color: #1E3264;
    font-size: 20px;
    margin-bottom: 15px;
}

.task-list ul {
    list-style-type: none;
    padding: 0;
}

.task-list li {
    display: flex;
    align-items: center;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    margin-bottom: 10px;
    background-color: #f9f9f9;
}

.task-list span {
    flex: 1;
    font-size: 16px;
}

.task-date {
    margin-left: 15px;
    padding: 5px;
    border-radius: 4px;
    border: 1px solid #ccc;
    background-color: #ffffff;
}

button.task-action {
    background-color: #1E3264;
    color: white;
    padding: 5px 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-left: 10px;
}

button.task-action:hover {
    background-color: #16274f;
}


.add-task h3 {
    color: #1E3264;
    font-size: 20px;
    margin-bottom: 15px;
}

.add-task form {
    display: flex;
    flex-direction: column;
}

.add-task label {
    margin-bottom: 5px;
    font-weight: bold;
}

.add-task input[type="text"],
.add-task input[type="date"] {
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-bottom: 15px;
}

.add-task button[type="submit"] {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    background-color: #1E3264;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.add-task button[type="submit"]:hover {
    background-color: #16274f;
}
</style>

        <section class="task-section">
            <h2>Manage Your Tasks</h2>
            <p>View, add, edit, and manage tasks with deadlines related to recruitment activities.</p>
            
            
            <div class="task-list">
                <h3>Current Tasks</h3>
                <ul id="taskList">
                    <c:forEach items="${tasks}" var="task">
                        <li>
                            <span><c:out value="${task.description}" /></span>
                            <input type="date" class="task-date" value="${task.deadline}">
                            <button class="task-action" onclick="editTask(this)">Edit</button>
                            <button class="task-action" onclick="completeTask(this)">Mark as Complete</button>
                        </li>
                    </c:forEach>
                </ul>
            </div>

            <div class="add-task">
                <h3>Add New Task</h3>
                <form action="addtask" method="POST">
                    <label for="taskDescription">Task Description:</label>
                    <input type="text" id="taskDescription" name="taskDescription" placeholder="Enter task description" required>
                    <label for="taskDeadline">Deadline:</label>
                    <input type="date" id="taskDeadline" name="taskDeadline" required>
                    <button type="submit">Add Task</button>
                </form>
            </div>
        </section>

<%@ include file="recruiter_footer.jsp" %>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            let completedTasks = JSON.parse(localStorage.getItem('completedTasks') || '[]');
            const taskItems = document.querySelectorAll('#taskList li');
            
            taskItems.forEach(item => {
                const taskText = item.querySelector('span').innerText.trim();
                if (completedTasks.includes(taskText)) {
                    item.style.textDecoration = "line-through";
                    item.style.opacity = "0.6";
                    const btn = item.querySelectorAll('button')[1]; // 2nd button is Mark as Complete
                    if(btn) {
                        btn.disabled = true;
                        btn.innerText = "Completed";
                        btn.style.backgroundColor = "#28a745";
                    }
                }
            });
        });

        function completeTask(button) {
            const listItem = button.parentElement;
            const taskText = listItem.querySelector('span').innerText.trim();

            listItem.style.textDecoration = "line-through";
            listItem.style.opacity = "0.6";
            button.disabled = true;
            button.innerText = "Completed";
            button.style.backgroundColor = "#28a745";
            
            // Save to localStorage
            let completedTasks = JSON.parse(localStorage.getItem('completedTasks') || '[]');
            if (!completedTasks.includes(taskText)) {
                completedTasks.push(taskText);
                localStorage.setItem('completedTasks', JSON.stringify(completedTasks));
            }
        }

        function editTask(button) {
            const listItem = button.parentElement;
            const taskSpan = listItem.querySelector('span');
            const oldText = taskSpan.innerText.trim();
            const newText = prompt("Edit Task Description:", oldText);
            
            if (newText !== null && newText.trim() !== "") {
                taskSpan.innerText = newText.trim();
                // If it was completed, we don't handle renaming in localstorage for this simple mockup,
                // but usually editing a completed task doesn't make sense anyway.
            }
        }
    </script>
