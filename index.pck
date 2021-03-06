GDPC                                                                            !   @   res://.import/Point.png-32d65882a75f53c0a470e4238d29b194.stex   �S      b      �:Z��&���z�<   res://.import/Ray.png-23f607744b467f6741f353bcdd8b777d.stex ��      H      �}��!bN+TK���@   res://.import/Target.png-300729f56e33411ed029993aa0cf19c0.stex  ��      �(      ��¬u��@�5��s@   res://.import/arrow_6.png-2e002a0c6ca59395faab1b20f3c6af53.stex �<      U      ����o��&��v�U�e   res://Materials/Ray.tres	      �      ��+3�y�W1����   res://Materials/Ray_3.tres  �
      T      �I#&8m���+j3��(   res://Materials/ray_noisetexture.tres          �       :��+��7�@K�I   res://Prefabs/Ball.tscn �      J      �qXs��4u<9��9ױH   res://Prefabs/Camera2D.tscn 0      �       �z��__�9T(�2�S   res://Prefabs/Ray.tscn  0      �      � A���#����;   res://Prefabs/Ray_3.tscn0      F      ��0���q���H��   res://Prefabs/Target.tscn   �      �      Tu��Y�2>�_�'   res://Prefabs/Wall.tscn       x      �ab��Nʂ2���U   res://Scenes/Demo.tscn  �            ��`ت��lIU�)S]4   res://Scenes/level_1.tscn   �%      �      e"�������D"�%j   res://Scenes/menu.tscn  �.      .
      u�,�-�֯�ӫtLu�   res://Shaders/Ray.shader�8             aС{��eV$�l�:�   res://Shaders/Ray_3.shader  �:            9&��lw��_�j�O�(   res://Textures/Arrow/arrow_6.png.import 0Q      �      <v���4�4�C��m�W    res://Textures/Point.png.import @s      �      .Glv��c�ng�΀$   res://Textures/Ray.dds  �u      �U      ��ӄ�~������m�    res://Textures/Ray.png.import   �      �      ;I@��]�ˀ�1��    res://Textures/Target.png.import`�      �      �eVC(��np���p   res://icon.png  `     �      G1?��z�c��vN��   res://project.binaryP!           ��M��;������R   res://scripts/Ball.gd.remap �     '       �߆�h�C���r   res://scripts/Ball.gdc  ��      �
      6,��I!y_�	�%|�    res://scripts/Camera.gd.remap   �     )       ����<�+��Q� 0��   res://scripts/Camera.gdc�           ��voZOu%��˟��   res://scripts/Ray.gd.remap        &       �������'_M۽���   res://scripts/Ray.gdc   �           oÌ���1]�
����    res://scripts/Target.gd.remap   0     )       ^+1~V���9 �m   res://scripts/Target.gdc�     �      �*����'�}�\�        [gd_resource type="ShaderMaterial" load_steps=3 format=2]

[ext_resource path="res://Shaders/Ray.shader" type="Shader" id=1]
[ext_resource path="res://Materials/ray_noisetexture.tres" type="Texture" id=2]

[resource]
shader = ExtResource( 1 )
shader_param/strength = 4.0
shader_param/threshold = 0.4
shader_param/k_speed = 1.3
shader_param/ray_color = Color( 0.301961, 1, 1, 1 )
shader_param/noise = ExtResource( 2 )
               [gd_resource type="ShaderMaterial" load_steps=2 format=2]

[ext_resource path="res://Shaders/Ray_3.shader" type="Shader" id=1]

[resource]
shader = ExtResource( 1 )
shader_param/strength = 2.0
shader_param/threshold = 0.4
shader_param/speed_blink = 5.0
shader_param/speed_move = 40.0
shader_param/ray_color = Color( 0.1, 0.8, 0.160156, 1 )
            [gd_resource type="NoiseTexture" load_steps=2 format=2]

[sub_resource type="OpenSimplexNoise" id=1]
octaves = 1
period = 256.0

[resource]
height = 64
noise = SubResource( 1 )
               [gd_scene load_steps=6 format=2]

[ext_resource path="res://scripts/Ball.gd" type="Script" id=1]
[ext_resource path="res://Textures/Point.png" type="Texture" id=2]
[ext_resource path="res://Prefabs/Ray.tscn" type="PackedScene" id=3]
[ext_resource path="res://Textures/Arrow/arrow_6.png" type="Texture" id=4]

[sub_resource type="CircleShape2D" id=1]
radius = 31.0781

[node name="Ball" type="KinematicBody2D"]
scale = Vector2( 0.5, 0.5 )
script = ExtResource( 1 )
RayInstance = ExtResource( 3 )

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 0.49, 0.49 )
z_index = 1
texture = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Arrow" type="Sprite" parent="."]
scale = Vector2( 0.5, 0.5 )
z_index = 2
texture = ExtResource( 4 )
offset = Vector2( 60, 0 )
      [gd_scene load_steps=2 format=2]

[ext_resource path="res://scripts/Camera.gd" type="Script" id=1]

[node name="Camera2D" type="Camera2D"]
position = Vector2( 512.78, 300.888 )
current = true
smoothing_enabled = true
script = ExtResource( 1 )
             [gd_scene load_steps=4 format=2]

[ext_resource path="res://scripts/Ray.gd" type="Script" id=1]
[ext_resource path="res://Materials/Ray.tres" type="Material" id=2]
[ext_resource path="res://Textures/Ray.png" type="Texture" id=3]

[node name="Ray" type="Node2D"]
script = ExtResource( 1 )

[node name="Line2d" type="Line2D" parent="."]
material = ExtResource( 2 )
points = PoolVector2Array( 0, 0, 0, 100 )
width = 8.0
default_color = Color( 0.4, 0.501961, 1, 1 )
texture = ExtResource( 3 )
texture_mode = 2
      [gd_scene load_steps=4 format=2]

[ext_resource path="res://scripts/Ray.gd" type="Script" id=1]
[ext_resource path="res://Materials/Ray_3.tres" type="Material" id=2]
[ext_resource path="res://Textures/Ray.dds" type="Texture" id=3]

[node name="Ray" type="Node2D"]
script = ExtResource( 1 )

[node name="Line2d" type="Line2D" parent="."]
material = ExtResource( 2 )
points = PoolVector2Array( 34, 29, 50, 26, 17, 99, 42, 154, 88, 111, 147, 108, 129, 75, 149, 59, 116, 36, 77, 19 )
width = 14.0
default_color = Color( 0.4, 0.501961, 1, 1 )
texture = ExtResource( 3 )
texture_mode = 2
          [gd_scene load_steps=4 format=2]

[ext_resource path="res://Textures/Target.png" type="Texture" id=1]
[ext_resource path="res://scripts/Target.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 64.0919, 63.5852 )

[node name="Target" type="Node2D"]

[node name="Area2D" type="Area2D" parent="."]
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
use_parent_material = true
texture = ExtResource( 1 )
[connection signal="body_entered" from="Area2D" to="Area2D" method="_on_Area2D_body_entered"]
     [gd_scene load_steps=2 format=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 40.6514, 15.5109 )

[node name="Wall" type="Node2D"]
position = Vector2( -37.6109, 14.8325 )

[node name="Polygon2D" type="Polygon2D" parent="."]
color = Color( 0.196078, 0.2, 0.207843, 1 )
antialiased = true
polygon = PoolVector2Array( 0.235931, 0.542519, 0.235931, -29.0825, 81.1758, -29.019, 81.1733, 0.856873 )

[node name="StaticBody2D" type="StaticBody2D" parent="Polygon2D"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Polygon2D/StaticBody2D"]
position = Vector2( 40.7893, -13.9129 )
shape = SubResource( 1 )
        [gd_scene load_steps=5 format=2]

[ext_resource path="res://Prefabs/Ball.tscn" type="PackedScene" id=1]
[ext_resource path="res://Prefabs/Wall.tscn" type="PackedScene" id=2]
[ext_resource path="res://Prefabs/Target.tscn" type="PackedScene" id=3]
[ext_resource path="res://Prefabs/Camera2D.tscn" type="PackedScene" id=4]

[node name="Scene Root" type="Node2D"]

[node name="Ball" parent="." instance=ExtResource( 1 )]
position = Vector2( 199.984, 564.033 )
speed = 450
power_increment = 500

[node name="Wall" type="Node" parent="."]

[node name="Wall" parent="Wall" instance=ExtResource( 2 )]
position = Vector2( 103.504, 703.38 )
scale = Vector2( 6.72, 1.4 )

[node name="Wall2" parent="Wall" instance=ExtResource( 2 )]
position = Vector2( 181.316, 482.385 )
scale = Vector2( 6.72, 1.4 )

[node name="Wall3" parent="Wall" instance=ExtResource( 2 )]
position = Vector2( 64.7665, 160.697 )
rotation = 1.5656
scale = Vector2( 6.72, 1.4 )

[node name="Wall4" parent="Wall" instance=ExtResource( 2 )]
position = Vector2( 404.775, 451.393 )
rotation = 2.1972
scale = Vector2( 3.34785, 1.4 )

[node name="Wall5" parent="Wall" instance=ExtResource( 2 )]
position = Vector2( 56.0555, 183.218 )
rotation = -0.00172798
scale = Vector2( 3.72042, 1.4 )

[node name="Wall6" parent="Wall" instance=ExtResource( 2 )]
position = Vector2( 283.054, 173.693 )
rotation = -1.19999
scale = Vector2( 6.72, 1.4 )

[node name="Wall7" parent="Wall" instance=ExtResource( 2 )]
position = Vector2( 527.759, -24.6793 )
rotation = 1.19155
scale = Vector2( 6.72, 1.4 )

[node name="Wall8" parent="Wall" instance=ExtResource( 2 )]
position = Vector2( 440.206, -332.688 )
rotation = 0.0209626
scale = Vector2( 6.72, 1.4 )

[node name="Wall9" parent="Wall" instance=ExtResource( 2 )]
position = Vector2( 948.108, -354.551 )
rotation = 1.35075
scale = Vector2( 6.72, 1.4 )

[node name="Wall10" parent="Wall" instance=ExtResource( 2 )]
position = Vector2( 1068.38, 158.46 )
rotation = 1.81895
scale = Vector2( 6.3832, 1.37585 )

[node name="Wall11" parent="Wall" instance=ExtResource( 2 )]
position = Vector2( 976.791, 631.583 )
rotation = 3.04306
scale = Vector2( 4.18028, 1.4 )

[node name="Target" parent="." instance=ExtResource( 3 )]
position = Vector2( 546.792, 574.056 )
scale = Vector2( 0.7, 0.7 )

[node name="Camera2D" parent="." instance=ExtResource( 4 )]
position = Vector2( 645.61, 362.448 )
z_index = 100
smoothing_enabled = false
target_path = NodePath("../Ball")
is_target = true

[node name="UI" type="Control" parent="Camera2D"]
anchor_right = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ProgressBar" type="ProgressBar" parent="Camera2D/UI"]
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = -630.357
margin_top = 296.178
margin_right = -380.357
margin_bottom = 343.178
max_value = 30000.0
__meta__ = {
"_edit_use_anchors_": false
}
             [gd_scene load_steps=6 format=2]

[ext_resource path="res://Prefabs/Ball.tscn" type="PackedScene" id=1]
[ext_resource path="res://Prefabs/Wall.tscn" type="PackedScene" id=2]
[ext_resource path="res://Prefabs/Target.tscn" type="PackedScene" id=3]
[ext_resource path="res://Prefabs/Camera2D.tscn" type="PackedScene" id=4]
[ext_resource path="res://Prefabs/Ray_3.tscn" type="PackedScene" id=5]

[node name="Scene Root" type="Node2D"]

[node name="Ball" parent="." instance=ExtResource( 1 )]
position = Vector2( 169, 248 )
RayInstance = ExtResource( 5 )
speed = 450
power_increment = 500

[node name="Wall" type="Node" parent="."]

[node name="Wall" parent="Wall" instance=ExtResource( 2 )]
position = Vector2( 98, 707 )
scale = Vector2( 7.28, 1.4 )

[node name="Wall2" parent="Wall" instance=ExtResource( 2 )]
position = Vector2( 98, 160 )
rotation = 1.5708
scale = Vector2( 6.72, 1.4 )

[node name="Wall3" parent="Wall" instance=ExtResource( 2 )]
position = Vector2( 103.504, 201.195 )
scale = Vector2( 6.72, 1.4 )

[node name="Wall4" parent="Wall" instance=ExtResource( 2 )]
position = Vector2( 253, 160 )
rotation = 1.5708
scale = Vector2( 2.44, 1.4 )

[node name="Wall8" parent="Wall" instance=ExtResource( 2 )]
position = Vector2( 649, 160 )
rotation = 1.5708
scale = Vector2( 6.72, 1.4 )

[node name="Wall5" parent="Wall" instance=ExtResource( 2 )]
position = Vector2( 97.8654, 491.162 )
scale = Vector2( 3.8, 1.4 )

[node name="Wall6" parent="Wall" instance=ExtResource( 2 )]
position = Vector2( 426.467, 492.362 )
rotation = -1.5708
scale = Vector2( 2.44, 1.4 )

[node name="Target" parent="." instance=ExtResource( 3 )]
visible = false
position = Vector2( 204, 584 )
scale = Vector2( 0.7, 0.7 )

[node name="Camera2D" parent="." instance=ExtResource( 4 )]
position = Vector2( 399, 433 )
z_index = 100
smoothing_enabled = false
target_path = NodePath("../Ball")

[node name="UI" type="Control" parent="Camera2D"]
anchor_right = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ProgressBar" type="ProgressBar" parent="Camera2D/UI"]
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = -630.357
margin_top = 296.178
margin_right = -380.357
margin_bottom = 343.178
max_value = 30000.0
__meta__ = {
"_edit_use_anchors_": false
}
               [gd_scene load_steps=2 format=2]

[sub_resource type="GDScript" id=1]
script/source = "extends CenterContainer

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _input(event):
	if event is InputEventKey and event.pressed and not event.is_echo():
		if event.scancode == KEY_ESCAPE:
			get_tree().quit()


func _on_Start_pressed():
	# warning-ignore:return_value_discarded
	get_tree().change_scene(\"res://Scenes/level_1.tscn\")


func _on_Credit_pressed():
	# warning-ignore:return_value_discarded
	get_tree().change_scene(\"res://Scenes/Demo.tscn\")


func _on_Exit_pressed():
	get_tree().quit()
"

[node name="Control" type="CenterContainer"]
anchor_right = 1.0
anchor_bottom = 1.0
margin_top = -0.8909
margin_bottom = -0.890869
script = SubResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Panel" type="PanelContainer" parent="."]
margin_left = 538.0
margin_top = 264.0
margin_right = 741.0
margin_bottom = 456.0

[node name="VBoxContainer" type="VBoxContainer" parent="Panel"]
margin_left = 7.0
margin_top = 7.0
margin_right = 196.0
margin_bottom = 185.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="MarginContainer" type="MarginContainer" parent="Panel/VBoxContainer"]
margin_right = 189.0
margin_bottom = 71.0
custom_constants/margin_right = 20
custom_constants/margin_top = 20
custom_constants/margin_left = 20
custom_constants/margin_bottom = 20

[node name="Label" type="Label" parent="Panel/VBoxContainer/MarginContainer"]
margin_left = 20.0
margin_top = 20.0
margin_right = 169.0
margin_bottom = 51.0
text = "Ball Throw                
Demo"
align = 1
uppercase = true

[node name="Start" type="Button" parent="Panel/VBoxContainer"]
margin_top = 75.0
margin_right = 189.0
margin_bottom = 105.0
rect_min_size = Vector2( 80, 30 )
text = "Start"

[node name="Credit" type="Button" parent="Panel/VBoxContainer"]
margin_top = 109.0
margin_right = 189.0
margin_bottom = 139.0
rect_min_size = Vector2( 80, 30 )
text = "Credit"

[node name="Separator" type="Panel" parent="Panel/VBoxContainer"]
margin_top = 143.0
margin_right = 189.0
margin_bottom = 144.0
rect_min_size = Vector2( 0, 1 )

[node name="Quit" type="Button" parent="Panel/VBoxContainer"]
margin_top = 148.0
margin_right = 189.0
margin_bottom = 178.0
rect_min_size = Vector2( 80, 30 )
text = "Quit"
[connection signal="pressed" from="Panel/VBoxContainer/Start" to="." method="_on_Start_pressed"]
[connection signal="pressed" from="Panel/VBoxContainer/Credit" to="." method="_on_Credit_pressed"]
[connection signal="pressed" from="Panel/VBoxContainer/Quit" to="." method="_on_Exit_pressed"]
  shader_type canvas_item;

uniform float strength = 4.0;
uniform float threshold = 0.99;
uniform float k_speed = 1.3;
uniform vec4 ray_color : hint_color = vec4(1.0, 0.1, 1.0, 1.0);
uniform sampler2D noise;

void fragment() {
	COLOR = texture(TEXTURE,UV);
	float noise_value = texture( noise, vec2(fract(TIME), UV.x) ).r;
	float dist_to_mid = abs(UV.y - 0.5) * 2.0;
	COLOR.rgb = ray_color.rgb;
	float a = strength * noise_value * (1.0 - dist_to_mid) * (1.0 - dist_to_mid);
	COLOR.a = mix(COLOR.a, a, threshold);
}shader_type canvas_item;

uniform float strength = 1.0;
uniform float threshold = 0.5;
uniform float speed_blink = 5.0;
uniform float speed_move = 40.0;
uniform vec4 ray_color : hint_color = vec4(1.0);

void fragment() {
	float noise_value = (sin(speed_blink * TIME + UV.x * speed_move) + 1.0) / 2.0;
	float dist_to_mid = abs(UV.y - 0.5) * 2.0;
	
	COLOR.rgb = ray_color.rgb;
	float new_a = strength * noise_value * (1.0 - dist_to_mid) * (1.0 - dist_to_mid);
	COLOR.a = mix(texture(TEXTURE,UV).a, new_a, threshold);
//	COLOR.a = noise_value;
}  GDST              9  PNG �PNG

   IHDR         �x��   sRGB ���  �IDATx���1r#����*�Y��ʔ1�l#�{"�)۔���������  �3=��*�Uk�f�`���n�ooo d�e�o  ��  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   �  �@  	  $   ЯK ����0��|{{��k�n^ }h1��Y�� 0�[p?�T�3���� 0�{q?����{^k�yxx��_p�SU�����������v `B�U?��u�5��[U���K�UU_���s��V.; ���ۨ'�!v�������օל�T.; 0����G/ࣞ���~g������ 	 ����>���3�^g`0������?��ݮ^^^�۷oC_O�� �	� �n�?��s" >U������?v&D � }�O�\���3���&���;�����驞����#wxG ����>�0���!��ù������'� L������}��v���~��v��r�����# `B���+c@lĥ�����o�{"�S L�� 8tE�����2�`�; Й������˘�W�p��ɝ � �ԕ!pq߳�g й�!p�n�w
��n���� 	 X�V!@�^^^&��"�=� aBs]�uYp�%A��2���)�	0��@� �J�y��}7��@7��A�]�*;��I͹p�n�:����T�	Hf 6`����vX��.����� �!�D�:�]?������7�� l̈�.������1w `BK�8��� g�838����o��]�N@; �aS	x�[��e'�� l��ۅ'f@3� `B���ۧ�q �� 3���?�=���ɮO#�� &g &ti`����%���d'�9	 �И�v?�dX��$�� �	,ރ����B���'� L���t[",�}�& `B�.����{ukH;"�� L�[�݅���o�e�]U�W�ou�֮C���u螷|y�W;�"H+v ����;s��	蓝 �& ���C�����?g=iK0% 3�2:����.�bD S 0�+C`�݀�nW�?>�cGL�%@�����5��ً�s\|||������ ,�����W��A��D �r ��-v/�}�~9�Vv �#��Gs=�p�0;�J @'�8XlAw�'�- t��8���X��Z :�k�r`��� :5�H`���(������= й�k�,����5S%z# `z[�/Ё�^3{"� V����Q�]�N����} �"�-�v���kfO,O ��ܻ�O�.�:� � X�{t� �D � ���;S/�v�CpH ���\Л/�v�C�' `�F,����X@� �M����r�.���  l��xg�] �'�	 ؐ��.�E�" � �,M�``�D@& s�.��G����# `�.,�M/�������E �F�Y̛_<��`D@ ��^|||�c� +!2 ذG�L��`�D��	 ��t�1����m �qK�8��] \��l`�1 }�$ �f� c���5�#  ĵ� Sp�-"`[ P5���!"`; ���N�c VLl�  ��<p`�D��	 sf�nv0�=��& ��f� �l�X/ ��,�M���6�N 8��`
c��^"`} p��1�{ �%�E @��uU��uD�z<�]��9���������z��n��ϟ?���¬է�9x߽֞������Ա��v�]����o��~�ɇ]�C[��v �cs� ����	 v�if�{ d �ES��"`!� @�9����w�<??ח/_�}��;v �!M�����0�S�w �{`
�,�5�k&5 0��,ڿ%p�� pj�z�8Lq z�t'�  �#i'@  ��Z| )R"@  ��, ��k� PU�O-M> ���;k��v �S| �  �S�| ��V#@  �#"`u  �p!VG  @   #\xG��  �`��WG  ���f3L����+ ��ʛ�0���* ���f�_�K�-�* �4��e�l}�W	 ���������X޽���J  ��R�UկK@�3�+|���\OOO��>%�*; �����۷zyy��+m�W	 �w����g �\k��L�� �0�@Z��4u�W� ��3 .�����gt~xݵ|�i�� ��3 h���ou0}�W	 �6���g Ј�  kr����Z|Y���_�; ��&��c�ε��5وO�4�;` B���ߪ���O,�l�� 84����V_�e��" �Cs���������� ��b���?�e���  �>l�;���� �9�`��w��9���	 `��������Ew+�� �̢�l�������  ����������� !.<�Ϲ�����m ���������W��� �}����!�� l܅Ż�ӿ��m0��K @��O�c����m 6l��������>��'  Sӧ���f�g �Q.�5}����^� 4b��ӿ��u2�� ؘ�����O���;g�� �ep�����3�3	 ؐ[���\��y��8����% `#F���<����M ����<��<ß�c���X�T�E|����ϟ������}���,��� ��ȅ��"��=� ���;S/�מ�[��c�sH �
ݳ�O��{�_ßc V�ޅ|J�����g� ��m!��߿�^3{��� V�����������3��` V���|����߉�^3{�? t�ǅ����=�f������7 ��W-��������?c���<��l�{�_���5 t���_u��?�1���# ����_��B~�ֿ�{�?� Ё{����[�\\�i���V t�S����E�ޞ��= ,���_���:{�o�A�?��I�0���<��̧��]ȭ+m�L� ����_��S������" ��)���߹_�$ ���U7�ߧ�-��gj &���_u�bn!o�� ˸8��� 0�����+ß� ̣��_u�bN�?�	 h���_e1���|Lh`��Q�\�;f1���\ Lh`��[r�WY�{e�3'G 0���żW�?s� �����:�73�b�'ß%�� g�*�y���e�o h���ۅ�ßf l���7ß%9��0��,�3�iN ��L��_e1_��Os� `C�M�T�?3� 0Ֆ��|a���wZ �bS�*�y��Z �R��7ip�� +3b�W���j���J �jL=��,�3�iI @�~�b�sH @�F�*ß�	 �L��_e_��n7�1��� �b�W�1^^^�˗/w}ßS�����.�~�^__���+�~���9��u�V��߿߼`�s� ��C���_e�^��U���?�u���; 0�K; W2�7�į�{��g �  n�U�5: ��h�j�/2�K ��n���~�{�N@��.@����7Az-e 0�1���q�Я�Xo�� ��V���ε���7 ��~.��Ͽ�VUU�{���o�ކ3�?�]�_;�2�9� L���]��n׈�̭��?g	 �Д�g3���7A2� �	� ~3��9:�k����6kx�Qe �+�C��Ϟ  �L���sL  @ �  �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   �    H  @   ��8�9�H���    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/arrow_6.png-2e002a0c6ca59395faab1b20f3c6af53.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/Arrow/arrow_6.png"
dest_files=[ "res://.import/arrow_6.png-2e002a0c6ca59395faab1b20f3c6af53.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDST�   �           F  PNG �PNG

   IHDR   �   �   �>a�   sRGB ���  �IDATx��_�oGu�?��L�E���5���m�m��Z	��Tk+B�[����`)m��W��ZA,VZ�R�BPS%4XM�HnnPHSnՐ�7����3{͚�ff����3�gfϟ����f���wB���S8{��U��;�x+p�����@�_9ǲ���s�;�������C�����_�Cx>�1��Q͘���!�F&POyў�����3����]����J�<�pQ	`�BgT'�? ���ȋ���2��<�	�����?!r�0I�d��D�(h��1����� �R�x���鬙i�`&#���~� �`�D8v�=��\Ĩn>@���*W�%��`�^d��-����\��q����w�����MD.I����C� s�5�V޳��xb���"@�{ٛ!��>�@�DQ_��i�1� �4���������p�D8RX�^�6����7�뉓�� ��{��� ��2��[�
�&��f3%	�� ��wH�y��Q��s�Q�ij{�y'�f0x�%�E���s����{'�g�C����ǈ\������������)Z��e?#p;������ =�/�������W������e��փI��:w��Dx��ۑn��K�'	6�*c!�|�ǧ��D��~d)��`�!��\�9R'^�nG���9.ٯN��)u��w��d�8<����V؋�����-"��sC���D��w^�=�ƲA[��ya<+`� �`�C4��u��	�zx3���8=L9	
�!�*_^�ө�;���:FY	xYy6v���.y�	�����K�C��ޓ�����I��c"��aؼy�|�l�U��� ���4���]�I"� >������`g0����D~���Z/|h
kөQsf;Z�5��Kg�`Y�:/˴��]-�N ����F Oqm꣊[�
�#&@u�}�p1��-3�U��Z�ޅ�	0 �D^�Z�H�禭s��P�ڮ�乛n�5�AE���0-�������R�!"�������V�A'6*�׀�Dt��b��kjb���1� �#�04��G�;��U;V��Q��jT�J�ok���I���FI0D���>�ܷ�\>�eR��i�r+��`�|uҼ������A�e��]�y�e=%9�Ãn��=�w���zZ��*x���&���rd��0ԡ�Q:�b��@ 2� Q�Lr�k������C���}U��D�#����~�N��b�k�-�?'<�4\ƞ0]B�|x�7 ��
�A�-ޏ0��/�y��|k�%['�F�����ю��u�z[q��oEY�Y�7�h�ݖO��)��"=?04��Q�Z ������߁z�����h��v�2���e��������������*K0�����ml ��k ��D����� }� -B�un�T� BdA]�SR�B��nn#��Ͼ�畁�&��!r�2���x,���������@_E K�D0'�����V��N�x���!-���朢�z�����A/�|��� �u��wM�/��v+�(���Wi�_w���͐׈�l��z�[m�o���}���A�)^oR.觭�� rRNM䏄�����w�հ fZ[�K0�X����%�y�&��@A�Ά������=��F\��F����*�~;��+�>p�1E�r�帕�5.�`�������P&_��m�ָ�&>ַ���~5�$G��R�q�s�B\/�y-p�~��,@�࿈\^k�l�6��#ݖk4!�`�|,�w%-���jh�y.,@aKз����t�O���9����{Ȳ�|�\�i�L��M�6�U^��]���S]q�m���b\��΋~b������H�F?)E[��.�7�l-{� g"ܲ�S���/�P:o� +�#A���4躡$��E��F�$����%�N�qdQ�>�93�[���R�1������}���z��ͶոL�%!E�-���]�ʔ��r��.�r#�����q��Z.�tLo�h��B��.�u����@�eWX�YxJ��QZÒ��,Af4B�Y���4]Ai~��i�Rã���7��y���K�|�uX�Uyx�}$��x$x���[;S�{�@i����%�c��1��J<p���hh�V&ִ�Pa��
R�ݱ!	-�Y��iM���@^.�n�����NcY��D�c1��L���c��Y"'��rbI�xz�N�+�CD��.-D5v5/�Pg��N&7,nAj`jk��[�p�E�t1��0�����0]r"�g1^�pS1���@�୍�5�-��pAy]V�:v���%�A� I�[���~���F�Uڏ\淎Â?��8b�.�˸HG�p��k�>w� r��B��O������0��R� ,�ZZ�4N.4�7��/���m`k��9��+"��y�³M��$��-�Lp^�^��W�P��d�M~Ȗ@+!iM�R�-���fv)��=����8V��S.8�A�}ٜvGĐ�E@\�}p
�cU�����������9 A�84��ݵ�g폎�h�
h��G(�i�^�3�
Z�����m�?��L��:�X�.��K=!}�����&���W%8-��Ahc�TQ�|�bO�����vYƦ���OY�Z�T�|�X�X_V`�]@�S1r�n�HcN3�`�<4�:|xo��ٮ3��N[�|I��[j"l!��(�%��S5��5�n"���+n`# �p����Ҕ��B����F� &���0M�0��
�rѹ~[�U�c�<��p%DA܆�mLg~8e�E��, ��-�b"֡��.ϱ��t	+���ǚ���V����69����O�{)�X�"r���� ;n c} ���T[
�$�?��yE$EK�-��˜��=iH�7~�c�L�$AfB	�$�\d��x� %�a��=�^��E�Ql��B���@]Wi?6X=7`���Uۋp��t{��O�c,��ۚE�	P��UZZ�P^g���|S��/D�$L�>�� ��kh�:3Ϳ�ֺ�:ѶIK��� ���˾<���|�k�X����Y����V�Q�) P2���i�f������2ԛ?�X��Z��D@M@���k��X�e���,�3Z�pM�7�{ٯ��<���'���Yc6�&��F�^^L@t*[l�~y�����?C�A�� �m^�ه1t��/6�07P�{M(� �C�T&]�x��~_֓�L�-d;��r�rX�sfCN�vA�_Xqm�i����M���]� ��!�
?�Bd�)IS<���-�V�{è 	K:	R�Od��.�wFUf�������h|����zm��]K����-� _���9���j_�@�2�;�2X�@��bw0P��nm��U��>����J0-��9uAJ� ?kw�����p��.�Z�,iN�f�|�ڏ��w8�@�r�	2�}�+�!�6��`������Q%���Ҥh!��-Ĳ-m�^�r�7� m�*96���ȓJ~�CDŵ�Pt��������h�2i��4�}�L�,�m�\i��<=&��'���:�~�UZkxz>ϖ *��B.�}��_�5X �z$� \j+ ����iUO�oZ���i!�'���(���ܚg�,�E�ĨkjY����mQ��5;?Zy=ru]!J�Xh�i	�-�jW/��_���7�8�J�Luf�K@j��
�(<+ �Fz����_����*AA�ˤ}}K���l��ݦ�u��#C�p�U�jǒG4�h�C'-+г���=D�|�p��7
���:�k�y���%
0ن�PT�{�_���ٗ�U���K1�A����~i��gM�� *���o�+���Jo�`�~I6��j�꺪L���?�a8 aÊ_
ބ#���Ȟ���mY��U0����S^l��7�&X;�q�p���:�w"��Ip'w�]��w� .Jσ���/u����O�/���9\ؿf�9A��%���v��:�j���b7]���1�<��1w��Q9����5Wx���7��MC��k�F�A�	��k]�gۭ����2=k���}� <{ <��ѓ�D���s�(�ҝ3u[�,����$���{����j�eP�P�,��D�#K]q�=��`|3��CL�H�!�낌���I���4h�����f�{�+2iyh���<t���&�*Y)<Vp���c�V4�X�|���赛�0ksX45[����]�0)������ L�o
B�z�޲
��Fk2�!+�kwI�x<Ҫa��i�j�
h��Q����ن�Ͼ���/��1�ܚ��oKxC�>���#�_��֭Q���C��O�t�RB�$���vq6�����r?bL�Θ����5௨w�po�Nd�����9`q󝸖+s]�4	��f~yc��܍���g�Z@���k��Zk\�\��q������6��������xA�Pl�J�mwP�(�2�8@��'X� Z�G��1�F� ʕ��c��j~��h"Tm�c-�<!�|D����h�����\��!r��/�*3���SK�e�!�Jh�
�	���݄��.��/[�X�\��&4�B	��C�U,��i|�/H��(��_z�#қA�:��º`�5	�󓜶��ڏor���o	b�^�c�K�����/�w܁��U��:r>"�,����Z9�:�|x]a�5�	��b�"�$�l��(�
zZ�	3ւ�@܀|WP�-��WV@��t�г�"�K ˳��V{�[s�����7�� >�n2�s=X���4
���U됫��>�M(V��#L�t[	|g1�	Lw��\�F	ٕ��Kg�IX,���L?%�hfJSk~pՅr����5��E}Gk�Bo���AI��/���PZF�(i���&�������Km�����(�+�o0�h� �g�����2H��!򪮅� �DZ�y]�~���ԃ"A*ȯiGݏT������ �a��D���ZH��T�hǭ?��J�S��A��,��mi�զ^���o��~�\_��ujz�hy	�m��G�뢏9}O.�~���B�U���S��}��ȷ~�������o�䷶�x��%�R�#V�ZZ�Gq-�x.������G,���Y�b��(�>��S�y? !ɴPo������?��,B�$�e[�v/�k�o����䀥)�`-2X���Uj@�hi�l�̬��B�P����TKR�c�B��ʬɣ�Z�� M�:��	Sm���������/������²�� � ިc���V�����F�"r.�f��2�������������f?�h�v-�Eh��;��k�yi�o�-I��m���_	x<�+�AnJuk�yE_IY�'�4�U�i��bwOV�^`>)>�,V�ƘDCA�=��,Uo��Z�y��I�ʫa��ʝL���L� >a	bi��*&�LP��	v���&\��̇�~�u]0��c�\�5�y���$����'*����Y�K��,̩�o�
ӫ���%��#��>�\@=c-�Ed,Y���pt�B��<�\o�.��

�"o���b�����H�a��+�[�[�b��k#(X6~X�� J��O�i)�ԟ��$�C�8�1�aK�ǿ\v�%>ﳰ� O8��D�s�R�d�Z�#x�A��U�{��|$�Y���cq�JhH�s�&�� �H7P����[�h=�'p_��mܐ��d��wi<QdH+�H�~��[zL	t���]���^ ����P��|m�ϡF8M��#�p�2����m��F����j����*	�$�v�VD%�Y�Nʼe,���8��#��98G��B�:�
���f��K&fw�Z6loU�r����0�i�2���K�.	�<G�M�ߨ��"�3�Iv��翆�l �
�!�`LC�5,	���w�x����F���Wn�� ��*��Z�ݳ  ��uG���L��{���,B�9�B�[�'�u��Nc�X`�Lk@��\��Ƌ��T���+4����x�$�w)N� f�"BP�{`��d�"T��� X��]D�� 	�|[V�"��<��vK�/�M�&�!�^}��^�g�Ut"�q�)�2Qz�7�F?"m=����Ð��&zu�ve��q:�F��"�t��t��X�&��5 ��)D~����ө�o�]A�g���v�Z@��j#�c��"��L�g���[[ %���ӆ��媿�c����.�I�k��� =�Y��6��v & �� �|.�"h�s���w" "�j+��ү"�a����)���0��
$p��vjE��p̣ans�.�ir����{ ��ݯ�Z�W��S�O�;G���2n�;��>������Va�xV������N[�V�>V��X���^Z ]�O4��~�o^� �S�K�s^b������@��{����$P�%aW1_���f���x�Nm��c�}���,�d���e����/N�x��!P�fA�m�u!Lm�є�e��u^�V��R[="Lq����V�_�C�(� �;Ħ���K^e���+�kܖ��f�:N�f���Z����=L,�|���G��5%��ݮiN��Rl��L}����/�5A�9imZnA��b߯7�'���z�o���z ��Lߢ�XC�K�ߨ���s>B��&()��&B7���}�ٛB|��w�KA�|;����5��lW1ML!T�/�s����S�-"3ٷ"�p[ql[���C4�C ��?��k	 Ď!�0���M�oh}5���y@ ��zn`)��k�k��~F��n� 0��p)�r�x�c�=���.����$0B�Yi� EY��c�� �p��(��� �%L����B����(������� d��������zk�� C$�g�&�E�m�j��i�{�r	�+�A���W@�yS|/�!�v$ ��3��"����$0˖F������2m���2]�JC�ez���;�z��p�	>
��K�q	2������Q ��{iK�-�ϴ�w�ݰ+�pH� 	�B�N��u�=�a�,l��/j@��i�Y]S��� � �������tH@�i6S߂���z�J׮A^�ө�;�-@��3z {�x �\>4��	�@�ѿ�� ��,?I��-��~{��>���r9.5vD���ev!�sL�Þ,@
�����g�|8���:�a9�y^�0 �r��������q��a_�Þ	 �s�|�n�pY�Qク��d��u;7�v)��Q��������v��#c�'�pH�Z�V������IQ�#B�F~I�)��vj�"Hn�m�/E��g�a���a`�%L���K��-"��N�)�lѴ�}���Z�ywO���� �q	P���i"�n�{�2��V{��C�X�5�υ�+����VO���� )����4'"�"�i�Ƙ~�v�F�Yg 4톥�s��~�� _އ����� )�n�
˰n>\�m�pOC0�U��6L?����*�`8.�S8v@���a����%�+<��ZdX��c���V�;��|�HH���A+�~x���\�o �4����������p1�O� ��;�#�4�!�F�e��#���M�d��~��O�+¹��c\L�Sx^@��'�CaZK�����_`ZL�ZT9�tN?<'�~�������a?7���e�?U˾ߡ擩    IEND�B`�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Point.png-32d65882a75f53c0a470e4238d29b194.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/Point.png"
dest_files=[ "res://.import/Point.png-32d65882a75f53c0a470e4238d29b194.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
    DDS |   
 �   �    @                                                            DXT5                    @                        ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU       ��<�  UU/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��U/I�$m ��� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��Ue� �mm�$u�0� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      ��j� ��U��      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      (��� �U���      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ��      M�(�U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� ����$$	 ���U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U�� g ж��$��u�U��   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU   �$I�$��<�UUU        ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��\�   U       ��\�   U       ��\�   U       ��\�   U       ��\�   U       ��\�   U       ��\�   U       ��\�   U       ��\�   U       ��\�   U       ��\�   U       ��\�   U       ��\�   U       ��\�   U       ��\�   U       ��\�   U�I��$	 ��q� ��U�I��$	 ��q� ��U�I��$	 ��q� ��U�I��$	 ��q� ��U�I��$	 ��q� ��U�I��$	 ��q� ��U�I��$	 ��q� ��U�I��$	 ��q� ��U�I��$	 ��q� ��U�I��$	 ��q� ��U�I��$	 ��q� ��U�I��$	 ��q� ��U�I��$	 ��q� ��U�I��$	 ��q� ��U�I��$	 ��q� ��U�I��$	 ��q� ��U��I    ��� �UU��I    ��� �UU��I    ��� �UU��I    ��� �UU��I    ��� �UU��I    ��� �UU��I    ��� �UU��I    ��� �UU��I    ��� �UU��I    ��� �UU��I    ��� �UU��I    ��� �UU��I    ��� �UU��I    ��� �UU��I    ��� �UU��I    ��� �UU�����I ��I�U�� �����I ��I�U�� �����I ��I�U�� �����I ��I�U�� �����I ��I�U�� �����I ��I�U�� �����I ��I�U�� �����I ��I�U�� �����I ��I�U�� �����I ��I�U�� �����I ��I�U�� �����I ��I�U�� �����I ��I�U�� �����I ��I�U�� �����I ��I�U�� �����I ��I�U��  NI"I   ����U��  NI"I   ����U��  NI"I   ����U��  NI"I   ����U��  NI"I   ����U��  NI"I   ����U��  NI"I   ����U��  NI"I   ����U��  NI"I   ����U��  NI"I   ����U��  NI"I   ����U��  NI"I   ����U��  NI"I   ����U��  NI"I   ����U��  NI"I   ����U��  NI"I   ����U��        ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ��             ����           ��             ��             ��             ��             ��             ��             ��             ����           ����   U       ����   U       ����   U       ����   U       ����   U       ����   U       ����   U       ����   U� @�I�$Y��� ��U� @�I�$Y��� ��U� @�I�$Y��� ��U� @�I�$Y��� ��U� @�I�$Y��� ��U� @�I�$Y��� ��U� @�I�$Y��� ��U� @�I�$Y��� ��U�IҶ� }���U�� �IҶ� }���U�� �IҶ� }���U�� �IҶ� }���U�� �IҶ� }���U�� �IҶ� }���U�� �IҶ� }���U�� �IҶ� }���U��        ����           ����           ����           ����           ����           ����           ����           ����           ��             ��             ��             ��             ��             ��             ��             ����           ����           ����           ����           ����           ����           ����           ����           ����           ��             ��             ��             ��      �� ۖ$����  �U�� ۖ$����  �U�� ۖ$����  �U�� ۖ$����  �U �I"I   ����U�   �I"I   ����U�   �I"I   ����U�   �I"I   ����U�         ��             ��             ��             ��      ��m� �$��Q�   U��m� �$��Q�   U�I �m���4�U   �I �m���4�U   R I ��$��8� UU .* �    �������12      ��������GDST�   �           ,  PNG �PNG

   IHDR   �   �   �>a�   sRGB ���  �IDATx���1NA�Բ��32B�@���g tFfyז�p�T�����H3�%��� e �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ������ޠ / \W�H�P��uU=�G(��~I�PN�m{O�PN���-=B9]�������������zH�PN��%�AA]ۖޠ / \O/ Z���ޠ���#�AA]��
�:����;Y��)�AA]^ 4/ \�e�%�ǲ��G(�kY>�#��c��N�PN���+=B9]������~�#��U5�#�c p~�sz ȼ p g p g p g p g p g p g p g p g p g p g p g p g p g p g p g p g p g p g p g p g p g p g p g p ���2 ��S!    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Ray.png-23f607744b467f6741f353bcdd8b777d.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/Ray.png"
dest_files=[ "res://.import/Ray.png-23f607744b467f6741f353bcdd8b777d.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          GDST�   �           �(  PNG �PNG

   IHDR   �   �   �>a�   sRGB ���    IDATx��}is\�y�sιK��� !�;Ap��bQ�W��LMMŖ�X�5Ij�c������Lb��;���r�Ė,J��E�e�"%���4z��9�᜻4�  H �*Q�lv��9�~ޗ���
��  b��!bcS>~���E�o`ҭ������ ��"1�8Dȣ5���� $���&�)�Ӽ��;�:��Xp0B�����`�?�< �"Sn�n�f�.�f���@j �v���Z�My �
��C��m~��"n��A�P!��jA���֟uS�L����5%�o��!47�  ����{�������� �z�~����]��)k+�����	 D�[�~/�?���%��E,�#p��g�m��� �B@p�S�n����ݦ,&B2B��1�� �"�<�������@�ƣ?�E�
���� XA�1\(@�Ms_"�v��"v�N�E� Q3@q�j����� 8��(?j�\@D��#�D�B{�iz� etS)�PD��C�� "��Ϲ�j^���}xS�?jb��V���f}[
����/F5�x�m���B7t�����&�5��Z���h " ���!U�&��)����ɗއ�X�K6�{�˱�4�]'���c������W�����P�p������ B�@	��2��2����˷�C�^���<�B���$��ow�o'����`�,h��]���Sg���Q�"߄dx-%}�Ҧ��p;.���g�%�`N���K	�j��Cm�` �8D,��1�_u%�%VY�_v`�l0M�΃�q�3���LOVa  �`�X��/b�s�Wp�	̄�e8���a3 �c�Վtb6�@oQ&RD���؍wBL�rK�_�a���3�>�cO���ׯ`z��(¦,���r~_5�K��m0]�"Aj�I0��)	�YQ;̾�H���<�	�w��E�?��)��W13Y�QA�u ˋ��z%�(4K��>d"��������Js`=I��� qgS��N>9�i"�jޢ��9��|�(�0B�0L  -����*L�F5�v�����޹�k�-<�?�(�`��5A�'j�t�O�c��O�Ir�'^|Q��=~�� BE�\�� ��,K���G .d ��h�6Ю��+���ߢUo*�0L�<	J�~�6º��]��'�$� w���+Md+X��{�$��~�'�"��'FI �_P�ԊV�Мmf$p}h:�"AE��$(�.�0�;�Z!�!̛�O	�Q;�_ue�7�b��7R�E��M���s�8��@I�V�?d(�h5�	�$h�6�̟~V��@i��#���W>�4����@|��\9|Q# W��ɗo߁S.�΃x�=~�~~ia�aB(�_D��: �/RǍ�=�\�~w�I�?��(�H0$I��m����Y?uzx���YV��i��M��Dٽ�/�3��c���K���?�|�XԺ���I�y������������1���;h��*(M0PFih Mf������3����N����?��a~���z������N��7�P�����u4G����M�ix�ڿ�>-I 8W$(��#��������2+5���'P�%j������3�mG��ot?�=��&�ǈ �k�����U���c� V��,=G��$@JL����O��gR8%�Ss��û>�Ûj�j<��A�`V����n��ȣ'p���f����w$�nǕN5T�O,� �����;�>ڃ�EH��j%8f�AM�F��X�$�;J���z��|�K��, �/�w;|��"j�Tp�_!XnKX�Rc��SC&�m����&Z�9$��p�O?�EF8j?�B�.M�A�Gᬏ`�Km��K7Q,�9�K|��l��w�%�^�K#5������>�� ����h�m����"��0V��#��{l3o�S�K��� `�A7Tǧ`96�>z��6�Π��k�Z��`!aTV!7R?A��k�.��.*�xE�Vq~���������2������篎�4A�d�$A�#��˨+�m�+"@�]�������A�\G��	ɓ�˱2h�I���4
GJ ��x�s���!H�c�G�܋eU�ś�_��y�m{��8�Sj�	f���:%BH�� e��jW' �y�y$���`��&0٠:�������"2ѥһ߹�|��9� �=B�E������۠�e�	  ��4�jQf��2*W&d2J ���E��8	~U�y�e"�`����uH���#�v�=	��?�@ѱa�l�	́���9sW>_��������Ast�����0m�D����T.�I �B�a����`q��)	t]C��ׯWa�H�n!�Q�Pĭ0MhŝP�|ǆ��N��,>�B�~����1�eD�0�A�ڒ} � @JBI����҉!L]�I]���
8��>��hB����[�>�d\�$ĺ�	x�副g������Ɂ���!9s���/��}Z�H�h�.���� d!�N�u�P:�v��<	(�^003Y�Q0q������yB @���0*� �`ED[c�o��DV I0������r���>z_j��Ơ�P���j�,b��ʃ% �!��h2a���P	���=I`�f�f`}��(�&꿪�0*�ęO�� ��3+o܆_z���/��y���2Ծ��I�����L���"����	<��0j0Į��T>9�ɷ�瑀Pij=I��4�P>��(x( ��~]5IN~Gu7�1�f�������1�Z��;�:�{��	�F��:��<���E �+cH5�&�z� �[�@7u?{wn~J�|��4
���sH�0�AR՛��z~���rn>��c#=}�v��Ɗ���ͣ��7��}Д6���� yVDjjj!�r/  5��躆���G		="
ԯUa�@u��"j�2cHЗ3�"Qέ�8��x�x��- >��c#8|����-����o�A�޾�`��b�� yp�PS�2�#eT��us$�Ԡi�$���W�@u&��X�u��Zm�k3��f��}N�����\� ����v���A/+�����Wt�Y(�@͒IY��9>��K��d�^$���G d>	�T.M�|j $�V�*�Լ,��|U�?p|�NƕykA����{������*�8��*5��! �E��Y:��2��IiЕ6Γ�1��sI�� Sog$�;Q��\��׮[awz����AO��^a��^˻_�f� tE�9c@9��$�g�	�8��7	� @	��e������*ab�P����n�s?�{|��������}�l��A�t9xc��۵% ���2�'6�ɏ�I@	��'O/J���I�G�i9YD+L'�����8m�ȃo�dlt��o��~���\�q�VT	�U�fkO  ���ɒ/!p��reB��$�O�A �x�4�ݺ �I ������ �TM��	���K�k��>�^�	k	�/��h�[���f�~K�c�0��Ǝ~d} �C���Š�u���IP�M����"��%A�'!��L���A,;yb٢6������3�0���������������)��H8�~ �1;a���΢�&Ipe~ژ"5�b$P=S�&P>)I�9I�ht�K�^]�n�����/g�<qxy�����7�@t��v[j�Eʹ�+� 9I:��Oa�i�	 ���N�ޭ; $	(!j�����	8�@5
���>-�$��8ߋ6L�����<>�K?��"�w��H��1e����XJ�-!)	���}��ʥ	P"2 3��Yp.p�Sgp�}I]��{)	*W&�H���b�{�"i3Gڷ�7����}�����gE��E�euV*� �9�	
�`�i!�|]B����I��H�����TB*�,�A�0wE{�����
|g��Z1����t�X�๟��rd�@	!D��%��s|��I�8�J`�!���w!�������AYI�ch��D�@���#�=�\Bq�����A&��`�MY��j?/� �)�:+j2c�QX�K�^V�A�(�"A�I �	.O�$�U))�f�;s�������o��l�~ۅ�*�_6�÷�����մ�	�D:| 8�F�T #A^4R<�$	����ZO;|;�$�9y�|B)b������������rE+Ir#ˆ!@������IM����$A�6�)	�(�O�\�����T��@&yz��$����ۯ����$������_�|��k����5�^X����(884KG@���/�⣿�]��[�����|�?<��?y���(��!�׏���O�����mw��o��A0K��YA���������	 "I G�u�S�e��j��;=��$�L=����$ 5Gtӗ��y��:�}G�?꾥;��3u��.�f���w ivLp�l l�� ���1|�VH՚�t�Ho����;z`���x~$;��.m�:���	���$OG� �}����.xꏟ�ş�2%!���ኺ��e�������_.������M�M��ik���+� i)��`5�i#Aѱ0�t���gq��u<��`L�Q�C6���>�=�����ߐ'�hT�m?����! �K �[��'�������9$�cK&?� x��q�x>JCe�Q 
#��]��o#�lԥQ��C0Au}���珡Q���h�Uo�Yk�Uo�m�A��G��������,@�����^{ngj��R���"�As��P߲1	�4���0�[i#��N��'��Y�:�tSw'p�7��?z�1�a��G���~ �4�a�?�_�sX6sh�����"���K{�<�e��~w��n��	��污�.;�M���o�œ_<�{��`���x�7 ��|�\�f�~;���l>�0�
jq�ƒO��j��,x�m��E�Kh~P��i0
&��P]´K6���?���
j���4�u\PJT5Q �{O�k��Asպ��lL0Gx���(u�x�0��(�U&�9G����=;�c�N����� !�u:����i�;�b�~0�m_�l~��mT����ڨʩ���a9����U�n`��w}�9����[����i����q���T�[5M�J�B�0�^
~���S�����ϕM s�n��I���� V�J�9���B� !F���3�P�����S0�)�]��p��!�	x����s[�I�~dC ���ƿsS�V˷qY���șc�uh.���0c^�E�X@�Z�~�;<�����Z�c�,�0
fJ��f:�<���Y��a�x�f%�����=��C��=�����\����|�"f+5�{�<���Q���@�V��J����`�;�!V�<����n�Ѷ� �Eׂ���->�ѳ'�s�n\x��Bχ�z�s�]9��2�w���s�
vɖͩeG-�Ps�������g<��#l�^�a��n���ꖮ��[�K����q���� CD����|t��-��mh���D5%Ai��h:�6O����H�\�� qkcnD��Kn&O�E��훰+׺]Jm��scرoW�Q!���\� ��Q�`P�@\�-�~�I\��%4g��	 `���a�9*W�
y�	�PK���'ٚ������,���;������:���A��cՉ*~��8���P,��rM�Uvp���-Ȝv�l �(�>{In����j&_��$�o��K~o��|z�����xKeCd�i�)k
g�9��*� �n*�$�-	 �K������l���i
M�@��uә<|V9��������CU�_�mw�~�8���1B(̂�N��V����Ϣ65��_��'P8\3e�0
�8�h�q�B���j����[��
�l�Z1��=;����%�t�.<��"�a�^>I~�J6f&���W~��>���~�Z=�,Jx  �/���o 5Wa���}֣�?��~�ET���� �o��:� X|���+�m���<Q
��&� ^���4A�F��~,�	�h���qgC*h~����� ɓ2��\:�����'Na����0\|?���������hZ��g<�����>L&E�	޹��4:h�����@��o`�R�.4� -�u�+�c.��d[:~� �/���>�o��}�u����V�l���� �W�
*�R��n��F��G�=�Ze���0��Y7���q8cjR���
Uj^+s���d�2�NݩWn�ߖ��=y[wm�[?~cE�o���閍�6��F�5�ƆQ�x'%���,�L���:�<#I�{>�X�<�eyZ[��'� ��L�+ړ/˓��a��#;����(�z��I��{�����Q��M&�o� �f禜D��]@�l����w�`�:��$A�P)�X��e+��G ��F�N�̒<|[��_| �O��3K+ȋ�����L	#]SΝ[P�t@2�8?�@��>3�3Ϝ]���8c���"9�ᛃ�E �-X��(��3�ҭ������@/�*o��;�?�6�6.�r (c/g�"�(��AL_���P$P��k+<ۛɤ��K�)	xC����	�j����O��M�H�?��<�s+�|�u�Q���V��T��#rɼ���D���$�L���aT/*M����#�l��G?���.�������`��G�~�l�Jӻ9��9��xo��:�
�����jŊ��(��"�dz�f����XB���u���J<{��:<�U$ �$�]���ɰ�!kO����~n����o��.�X�����"�o���t���hպdf3x$R�p��=,J�jg�9�H��$��2Y�#�B����	֞ jg�d��0����S����(^|~�����-�P��-k S�%(#�!W���Qy{	M��`6�T=��1�6	�Ġ\|rh���>�s�9|*�7����p
>0���B���o��H:�����F�-��B F��t�m?�V����>�i����B��'P8��4����kJ rx*�W�Qy�V�(���m݂�^{cE�o��Ay]K�[6��d��Jj2�2�O|�T�EH05�G�=�F����P�j��E@����e9��ք <�[!�Y/]_}�6����'��?�w~cTN�dT:~��r�s���&'��:<���z��,��&8���y$ ���3Wr!�'3�K9�+��K �%2��d�\���?u~y�M�s�<E�J���d�!5�tkz��L�I ���Q0�w����ܶݜO��K�����.��Տ*x�����w������:�Y.����b��Cs��6y�6U�B�N|�y$P6<) �3SU�y��$���\�CK?���Ր�C�|���N���\��Ϝ��#[p��_@���借�훏X� �aJUQH&�����Ȍab�+�y�~J�V�	�� 	.M��@@�cmW��� I3G+D��f��nI�˽���s��~:�a� ����_Tr����"�3��� �YJLOTRxh��	�v�3�ݿO�PVǊX��t�i��� ���O(�����S���L�>�K�+BI�́T"- �����$8}�,��6�V���Q$HBD�<pf�� ׷�M���~�ɟ��Ϟ���A\���+�.ʅ�j�Ú���R�L�n�\�%��w{��HIP���I�HP�>�9�!d퀬�K>(��Y_�P�
�ʋ|g��C+��C)��m��ұVݷ9{ϊ��x]� i+���H���+%�9�!����Ijy�_y�	�+�F�l�Z��|{���������(
;�5o��&�#�h��z�$��K��ݔ��dژ�Yc��%�rn0p?8�-�<\  CIDAT��GV� ɭذ&W��u�o��7���"͉�~ۃ�ɓo��M.T��f�������!�O U1�~���N�?��A�ՖicY<�� ��'Q<: �h��b��U%@R���:�^��˷`%�8pJ)��}��|%��K�Ծ�����E�S�L���P���;�v�'A���Wp����@���^�@�"�ڋ��"����m\Ӯ�"��������<%�b
~i��2�;.v|cƠL�vک�]�B��K$��B&���H '��v�n�a���T�1{e�	�6�xv���8eIW�V��r�������pK���ӷ�~~����S�o��òq����n�2٬��%�Z����߾��:��$�ܝ©󋓠vy��� �H�^K��'���B�Wne#�{�?��?��<Fv�Փ�6���e�dr��E�!��P�e�1�b��=�f�e�H�H�zh7Z�z���IGe��C�-]@�/�X j�*ԓ6�������R��s�/��og;v����/����T3�l�^�vAIH���*c�B��{daLݙ���*��e��k�(Q�d�l�Q�}�P"�h{�V���s�w�����z�O����x��B���C.X�h�'��$0�P��tz�w3$��0
&� �ԝ	���c}��$�:	��x�t�@�x�&��ȟO�}�Hن3���}�����HZ�cM��7*�9I�|��ut3�%	 $ꀪ��Q�rw'?��$�]�H5 }�^!��/�
 j�8aß7��`A��*�+�WI�o�4�/�����U���f�#sK��5�`�G���{!�*��:����8��O �?�7�B*����Ğo�@�F��#� i�6�����9*8Tn��߄���(`i T6�@�ҡ� �/��M�������y ���]�G��TC_ϮO ۖ@,�`]���ܓ(:6��?��}z���n�LO�W�kV�G����� ����2�څ`˟���>�~� ����q���=����`���M��Q�g�3Z�SĞ���x�J�P�
 X|�4����G4
cȔh���� �� ��ExSm�&������M�.�<���$�HPBrR�X��E���H�����5I+�0B ��ϯ��s+Կ>ҵi#ݮ�q<��$Q��Q;�^61�������9h��I@Ž[wRMЉ��)$}�}���<���x  ��S(�֊����h:x�����_L��c��.���_ڇv~�I��v��N:���99�]���lg���Y/!}�ڤ 6<�����BƶB 
þ����\�_�_|=�Oyh����P�a�Q��ޛ���M��R�>��@޹$}>Ͼ^Es�f0�Q�7�px�`i��'?q�4[-��1Ek+���v�[
�&h(�J@���O~�Cc��{d�� ����}�����/�m���(����Q�������2|:����>�s%1��&~n�9��MA� T$Ag� ��hu� M�������Ԡ�c`���f�H�~���W��6XQ�'�����+�1��fk��\�=����~���e��X��X� o��&�No ���O� ��&º�l�q̃f!r#�����&E8�A�"
��R�D�d�F%�7�R�5u(�� ?ݜ>��~�p��IC�z�tRЀX�zD��KF�U�X��`a݇9\Hn�ƜE���b��eY��K�&��}��4�U:��M�sy�J�T��� ��m���j{�C��#w�E�@�8�,5t���ם6����]b7J��*N��rp~��2�&�w�U�&��d+hj�E�i%Q��IQg��Lݨ��G�R��B��+(f�-�r��,7��m�6�!�/Yd���|���.����։]<D;�`*��moRv�n��ND��1����Nuם�ݰ��ߒ��nl��(<���m��1�A��{܍w"����o�c)<�;a��x;B�5Byɳ q��M���E� ᴇ`Ƈ���<����	��Zg���    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Target.png-300729f56e33411ed029993aa0cf19c0.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/Target.png"
dest_files=[ "res://.import/Target.png-300729f56e33411ed029993aa0cf19c0.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDSC   8   
   P   �     ������������τ�   ���ڶ���   ��������   �����Ӷ�   ��������   ����������Ӷ   ����������Ӷ   ����Ҷ��   ��������������¶   ��������������������   �����������������������¶���   ������ն   ������������   ���������������Ŷ���   ���Ŷ���   ���������������Ŷ���   ����׶��   ������������Ӷ��   ������������������������ض��   �������ض���   �������Ķ���   ���������Ҷ�   ����¶��   ����������������Ҷ��   �������ض���   ����Ӷ��   ���Ӷ���   �����Ӷ�   �����Ҷ�   ���������������Ŷ���   ��϶   ��϶   �������Ӷ���   ���������Ӷ�   �����׶�   ���������¶�   ��������Ҷ��   ���������ڶ�   ��������   ������������ض��   �������������ٶ�   ���������������Ӷ���   ���ݶ���   �ٶ�   ���Ӷ���   �����޶�   ��������ݶ��   �����Ӷ�   �����ڶ�   ����ζ��   �������϶���   ���۶���   ���������Ŷ�   ��������¶��   �����������Ҷ���   ���Ӷ���   �         A    `�F                 
   left_click                                                                             +   	   7   
   8      ?      F      M      N      W      _      `      g      p      y      z      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )      *     +   	  ,   
  -     .     /     0     1     2     3     4     5     6   )  7   4  8   A  9   B  :   U  ;   V  <   Z  =   a  >   l  ?   m  @   w  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   3Y2�  YY5;�  V�  W�  YY8P�  Q;�  Y8P�  Q;�  Y8P�  Q;�  V�  �  Y8P�  Q5;�	  V�  �  YY;�
  V�  �  Y;�  �  PQY;�  V�  �  YY;�  V�  �  PQY;�  V�  LMYY0�  P�  QV�  ;�  �  PQ�  �  ;�  �  T�  PQ�  �  &�  T�  P�  QV�  �
  �4  P�
  �  R�	  Q�  �  �  �  �  T�  �  T�  PQ�  �  '�  V�  �  T�  PQ�  �  �  �  �  T�  P�  Q�  �  T�  P�  Q�  �  T�  P�  Q�  �  �  �  �  �  PQ�  ;�  V�  �  T�   PQT�!  P�  R�  R�  T�"  Q�  �  T�  P�  Q�  �#  PQT�$  P�  Q�  �  �  &�  �
  �  V�  �%  P�  Q�  (V�  �  T�&  PQYYYYYYYYY0�%  P�  QV�  ;�'  V�  �  �  ;�(  �)  P�  �  Q�  �  T�*  PQT�+  P�  Q�  �  L�  T�,  PQ�  M�  �  �  �
  �3  P�  R�
  P�'  �  QT�-  PQQ�  �  &�(  V�  �  T�.  P�  Q�  �  �  T�/  P�(  T�0  Q�  �  &�  T�,  PQ�  V�  ;�1  �  T�,  PQ�	  �  �2  P�  L�1  MR�  L�1  �  MQYYYY0�2  P�3  V�  R�+  V�  QV�  ;�  V�  �  T�*  PQ<�  �  �  T�4  P�  QYYY0�  PQV�  *P�  T�,  PQ�  QV�  ;�  �  T�5  PQ�  �#  PQT�6  P�  Q�  �  T�7  PQY`     GDSC   "   
   1   %     �����ׄ򶶶�   ���������׶�   ����������������ض��   ����������׶   ����������޶   ��������¶��   ������Ҷ   ������������Զ��   ������������τ�   �������Ӷ���   ���������������Ŷ���   ����׶��   �������ض���   ���������׶�   ���Ŷ���   ����   ����������Ķ   ����Ӷ��   �����������������������¶���   ���������������¶���   ����¶��   ���������¶�   ��������������������ض��   �����������ζ���   �����������ⶶ��   �������Ӷ���   �������������������Ҷ���   ���������Ҷ�   ��������������������ض��   ������������϶��   ����������������Ҷ��   �������������������Ӷ���   ��������ض��   ���۶���                    ?   d               ui_home    
   down_wheel    �������?      up_wheel  ffffff�?                                           #      ,   	   5   
   6      C      D      E      L      S      X      Y      d      e      f      g      h      w      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +     ,     -     .     /     0   #  1   3Y2�  YY;�  V�  �  PRQSY;�  V�  �  SYY8P�  Q;�  Y8P�  Q;�  �  Y8P�  Q;�  �  YY5;�  V�  �	  P�  Q<�  YYY0�
  P�  QV�  &�  �  V�  �  �  SY�  ;�  P�  T�  �  Q�  �  �  �  �  ;�  P�  �  T�  PQQ�  �  �  �  �  �  S�  &�  V�  W�  �  T�  �  T�  YYY0�  P�  V�  QV�  &�  4�  �  T�  �  V�  �  PQT�  PQS�  &�  T�  PQV�  �  �  T�  S�  �  �  S�  (V�  �  �  S�  '�  4�  �  V�  �  PQT�  PQS�  �  P�  �  T�  QS�  �  �  T�  S�  �  &�  4�  �  T�  P�  QV�  �  PQT�  PQ�  �  &�  T�   P�  QV�  T�!  �  �  &�  T�   P�  QV�  T�!  �	  Y`  GDSC         ,   �      ���ӄ�   ��϶   ���Ӷ���   ���ӄ�   ����������Ķ   �����϶�   ���ӄҶ�   ���������Ӷ�   ���۶���   �ٶ�   ����Ķ��   �����Ŷ�   �����Ҷ�   ���������Ŷ�   �����Ӷ�   ���Ӷ���                                                                 	      
                      !      "      #      $      5      <      C      J      K      P      V      W      X      \      _      `      i      s      y       }   !   ~   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   3Y2�  YY;�  V�  Y;�  V�  YYY0�  PQV�  �  W�  YYYYYYYY0�  P�  V�  R�	  V�  R�
  V�  QV�  ;�  �  PQ�  �  T�  P�  Q�  �  T�  P�	  Q�  �  �  W�  �  �  T�  �  YY�  �  �
  �  .YY0�  P�  V�  QV�  ;�  V�  W�  <�  �  �  T�  �  �  �  PQYY0�  P�  V�  QV�  ;�  V�  W�  <�  �  �  T�  LM�  YYY0�	  P�	  V�  QV�  ;�  V�  W�  <�  �  �  �  T�  L�  T�  T�  PQ�  M�	  YY`          GDSC            3      ���ׄ�   �����϶�   �������ׄ�������������Ҷ   ���϶���   ���ڶ���   ����������ڶ   	   End Game!         level completed                                                  	   	   
   
                                                               !      '      ,      1      3YYYYYYYYY0�  PQV�  -YYYYYYYYY0�  P�  QV�  &�  4�  V�  �D  PQ�  �  P�  QY`         [remap]

path="res://scripts/Ball.gdc"
         [remap]

path="res://scripts/Camera.gdc"
       [remap]

path="res://scripts/Ray.gdc"
          [remap]

path="res://scripts/Target.gdc"
       �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes�                    class         Ball      language      GDScript      path      res://scripts/Ball.gd         base      KinematicBody2D             class      
   MainCamera        language      GDScript      path      res://scripts/Camera.gd       base      Camera2D            class         Ray       language      GDScript      path      res://scripts/Ray.gd      base      Node2D     _global_script_class_iconsL               Ball             Ray           
   MainCamera            application/config/name      	   BallThrow      application/run/main_scene          res://Scenes/menu.tscn     application/config/icon         res://icon.png     display/window/size/width            display/window/size/height      �     editor_plugins/enabled             input/left_click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device     ����   alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         input/right_click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device     ����   alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         input/up_wheel�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         input/down_wheel�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script      *   rendering/quality/driver/fallback_to_gles2         %   rendering/vram_compression/import_etc         %   rendering/quality/shadows/filter_mode          0   rendering/batching/lights/scissor_area_threshold          )   rendering/environment/default_environment          res://default_env.tres             