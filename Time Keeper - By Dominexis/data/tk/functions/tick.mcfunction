# Manage world border timer

execute store result score #world_border_diameter tk.value run worldborder get
execute if score #world_border_reset_timer tk.value matches 0 run function tk:reset

scoreboard players operation #time_differential tk.value = #world_border_diameter tk.value
scoreboard players operation #time_differential tk.value -= #previous_world_border_diameter tk.value

execute unless score #world_border_diameter tk.value matches 59900000..59990000 run function tk:reset
execute if score #time_differential tk.value matches 1000.. run function tk:reset
execute if score #time_differential tk.value matches 0..999 unless score #world_border_diameter tk.value matches 59990000.. run scoreboard players operation $time tk.value += #time_differential tk.value

execute if score #world_border_reset_timer tk.value matches 000 run scoreboard players set #previous_world_border_diameter tk.value 59900000
execute if score #world_border_reset_timer tk.value matches 1.. run scoreboard players operation #previous_world_border_diameter tk.value = #world_border_diameter tk.value

scoreboard players add #world_border_reset_timer tk.value 1
execute if score #world_border_reset_timer tk.value matches 200.. run scoreboard players set #world_border_reset_timer tk.value 0