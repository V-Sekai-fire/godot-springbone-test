extends Node3D

@onready var check: CheckBox = $CheckBox
@onready var animp: AnimationPlayer = $skel_bone_2025/AnimationPlayer
@onready var sim: SpringBoneSimulator3D = $skel_bone_2025/Rig/Skeleton3D/SpringBoneSimulator3D

func replay(anim):
	animp.play("hmd-walk")
	if check.button_pressed:
		sim.reset()

func _ready() -> void:
	animp.connect("animation_finished", replay, CONNECT_DEFERRED)
	animp.play("hmd-walk")
