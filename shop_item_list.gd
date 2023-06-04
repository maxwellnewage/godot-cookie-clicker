extends ItemList

var shop_list = [
	{
		"name": "Click",
		"cost": 1,
		"give": 1,
		"method": "M"
	},
	{
		"name": "Cursor",
		"cost": 1,
		"give": 1,
		"method": "A"
	},
	{
		"name": "Abuela",
		"cost": 5,
		"give": 2,
		"method": "A"
	},
	{
		"name": "Granja",
		"cost": 10,
		"give": 5,
		"method": "A"
	},
	{
		"name": "Mina",
		"cost": 20,
		"give": 7,
		"method": "A"
	},
	{
		"name": "Fábrica",
		"cost": 50,
		"give": 10,
		"method": "A"
	},
	{
		"name": "Banca",
		"cost": 100,
		"give": 25,
		"method": "A"
	},
]

func _ready():
	var icon = ResourceLoader.load("res://granny.svg")
	
	for item in shop_list:
		var name_format = "%s | Valor: %s cookies | Genera %s CpS"
		var item_name = name_format % [item["name"], item["cost"], item["give"]]
		add_item(item_name, icon)

func _on_item_selected(index):
	var item = shop_list[index]
	
	if Globals.cookie_counter >= item["cost"]:
		Globals.cookie_counter -= item["cost"]
		Globals.cookies_per_second += item["give"]
	else:
		print("Galletas insuficientes!")
