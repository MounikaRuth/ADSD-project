<!DOCTYPE html>
<html>
<head>
    <title>Inventory Manager</title>
</head>
<body>
    <h2>Inventory List</h2>
    <ul>
        % for item in items:
            <li><a href="/items/{{item[0]}}">{{item[1]}} - Quantity: {{item[2]}}</a></li>
        % end
    </ul>
    <a href="/items/add">Add New Item</a>
</body>
</html>
