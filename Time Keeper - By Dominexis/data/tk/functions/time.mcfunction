# Get time

execute store result score #world_border_diameter tk.value run worldborder get

scoreboard players operation #time_differential tk.value = #world_border_diameter tk.value
scoreboard players operation #time_differential tk.value -= #previous_world_border_diameter tk.value

execute if score #time_differential tk.value matches 0..999 run scoreboard players operation $time tk.value += #time_differential tk.value

scoreboard players operation #previous_world_border_diameter tk.value = #world_border_diameter tk.value