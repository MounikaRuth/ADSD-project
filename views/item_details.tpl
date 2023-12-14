<!DOCTYPE html>
<html>
<head>
    <title>Item Details</title>
</head>
<body>
    <h2>Item Details</h2>
    <p><strong>Name:</strong> {{item[1]}}</p>
    <p><strong>Quantity:</strong> {{item[2]}}</p>
    <br>
    <a href="/items/{{item[0]}}/update">Update Quantity</a>
    <br>
    <a href="/items/{{item[0]}}/delete">Delete Item</a>
    <br>
    <a href="/items">Back to Inventory List</a>
</body>
</html>