
# project_inventory_manager
from bottle import route, post, run, template, redirect, request
import inventory_database

# Initialize the inventory database
inventory_database.initialize_database()

@route("/")
def get_index():
    redirect("/items")

@route("/items")
def get_items():
    items = inventory_database.get_all_items()
    return template("items.tpl", items=items)

@route("/items/add")
def get_add_item():
    return template("add_item.tpl")

@post("/items/add")
def post_add_item():
    item_name = request.forms.get("name")
    quantity = int(request.forms.get("quantity"))
    inventory_database.add_item(item_name, quantity)
    redirect("/items")

@route("/items/<item_id>")
def get_item_details(item_id):
    item = inventory_database.get_item_details(item_id)
    return template("item_details.tpl", item=item)

@route("/items/<item_id>/update")
def get_update_item(item_id):
    item = inventory_database.get_item_details(item_id)
    return template("update_item.tpl", item=item)

@post("/items/<item_id>/update")
def post_update_item(item_id):
    new_quantity = int(request.forms.get("quantity"))
    inventory_database.update_item(item_id, new_quantity)
    redirect("/items")

@route("/items/<item_id>/delete")
def get_delete_item(item_id):
    inventory_database.delete_item(item_id)
    redirect("/items")

run(host='localhost', port=8980)