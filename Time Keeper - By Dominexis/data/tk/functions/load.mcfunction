# Create scoreboard objectives

scoreboard objectives add tk.value dummy







# Initialize scores

scoreboard players add #world_border_reset_timer tk.value 0
scoreboard players add $time tk.value 0

execute store result score #world_border_diameter tk.value run worldborder get
scoreboard players operation #previous_world_border_diameter tk.value = #world_border_diameter tk.value