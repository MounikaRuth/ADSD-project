<!DOCTYPE html>
<html>
<head>
    <title>Add Item</title>
</head>
<body>
    <h2>Add New Item</h2>
    <form action="/items/add" method="post">
        <label for="name">Item Name:</label>
        <input type="text" id="name" name="name" required>
        <br>
        <label for="quantity">Quantity:</label>
        <input type="number" id="quantity" name="quantity" required>
        <br>
        <input type="submit" value="Add Item">
    </form>
    <br>
    <a href="/items">Back to Inventory List</a>
</body>
</html>