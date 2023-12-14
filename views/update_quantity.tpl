<!DOCTYPE html>
<html>
<head>
    <title>Update Quantity</title>
</head>
<body>
    <h2>Update Quantity</h2>
    <form action="/items/{{item[0]}}/update" method="post">
        <label for="quantity">New Quantity:</label>
        <input type="number" id="quantity" name="quantity" value="{{item[2]}}" required>
        <br>
        <input type="submit" value="Update Quantity">
    </form>
    <br>
    <a href="/items/{{item[0]}}">Back to Item Details</a>
</body>
</html>