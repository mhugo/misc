#!/bin/sh
~/src/misc/gen_title.sh "Terrain with multiple raster layers" titles/title_multitex.mp4
~/src/misc/gen_title.sh "Feature identification" titles/title_identify.mp4
~/src/misc/gen_title.sh "Adaptive levels of details" titles/title_lod.mp4
~/src/misc/gen_title.sh "Display points with bar graphs" titles/title_point_layers.mp4
~/src/misc/gen_title.sh "Customizable user actions" titles/title_user_actions.mp4
~/src/misc/gen_title.sh "Textured polygons from PostGIS" titles/title_textured_tin.mp4
~/src/misc/gen_title.sh "Thematic analysis" titles/title_analysis.mp4
mencoder titles/title_textured_tin.mp4 feat_textured_tin3.mp4 titles/title_point_layers.mp4 feat_points_layer2.mp4 titles/title_identify.mp4  feat_identify_point2.mp4 titles/title_user_actions.mp4 feat_user_action2.mp4 titles/title_lod.mp4 feat_lod2.mp4 titles/title_multitex.mp4 feat_multitex2.mp4 titles/title_analysis.mp4 feat_analysis2.mp4 -o output.mp4 -ovc x264
mencoder titles/title_textured_tin.mp4 feat_textured_tin3.mp4 -o cardano_textured_tin.mp4 -ovc x264
mencoder titles/title_point_layers.mp4 feat_points_layer2.mp4 -o cardano_points_layer.mp4 -ovc x264
mencoder titles/title_identify.mp4 feat_identify_point2.mp4 -o cardano_identification.mp4 -ovc x264
mencoder titles/title_user_actions.mp4 feat_user_action2.mp4 -o cardano_user_actions.mp4 -ovc x264
mencoder titles/title_lod.mp4 feat_lod2.mp4 -o cardano_lod.mp4 -ovc x264
mencoder titles/title_multitex.mp4 feat_multitex2.mp4 -o cardano_multitextures.mp4 -ovc x264
mencoder titles/title_analysis.mp4 feat_analysis2.mp4 -o cardano_analysis.mp4 -ovc x264
