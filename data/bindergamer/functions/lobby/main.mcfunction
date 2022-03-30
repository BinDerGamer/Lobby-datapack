##
 # main.mcfunction
 # lobby
 #
 # Created by BinDerGamer.
##
execute as @a[team=public] at @s if block ~ 0 ~ air run playsound entity.arrow.hit_player master @s
execute as @a at @s if block ~ 0 ~ air run team join lobby
execute as @a[team=lobby] at @s if block ~ 0 ~ bedrock run playsound entity.arrow.hit_player master @s
execute as @a at @s if block ~ 0 ~ bedrock run team join public

execute as @a[team=lobby] at @s run gamemode adventure @s
execute as @a[team=public] at @s run gamemode survival @s

execute as @a[team=lobby] at @s run kill @e[distance=..2,type=arrow]
execute as @a[team=lobby] at @s run effect give @s resistance 10 10 true