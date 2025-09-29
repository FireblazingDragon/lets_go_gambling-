extends Control

@onready var textbox = $CanvasLayer/Money

func _physics_process( _delta: float ) -> void:
	textbox.text = Global.money
#extends Control
#
#@onready var textbox = $CanvasLayer/Money
#
#func _ready():
	## Basic info
	#print("UI _ready: Global -> ", Global)
	#if Global.get_script():
		#print("Global script resource path:", Global.get_script().resource_path)
	#else:
		#print("Global has no script attached (get_script() returned null)")
#
	#var props = Global.get_property_list()
	#print("Global property list:", props)
#
	#var has_money := false
	#for p in props:
		## p is a Dictionary describing the property
		#if p.has("name") and p["name"] == "money":
			#has_money = true
			#break
	#print("Global has 'money' property?:", has_money)
#
#func _process(_delta):
	## Safe guarded access to avoid runtime spam
	#var props = Global.get_property_list()
	#var has_money := false
	#for p in props:
		#if p.has("name") and p["name"] == "money":
			#has_money = true
			#break
	#if has_money:
		#textbox.text = Global.money
	#else:
		## do nothing until the autoload/prop is available
		#return
