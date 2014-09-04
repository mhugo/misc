#!/bin/sh
~/src/misc/gen_title.sh "Terrain with multiple raster layers" titles/title_multitex.mp4
~/src/misc/gen_title.sh "Feature identification" titles/title_identify.mp4
~/src/misc/gen_title.sh "Adaptive levels of details" titles/title_lod.mp4
~/src/misc/gen_title.sh "Display points with bar graphs" titles/title_point_layers.mp4
~/src/misc/gen_title.sh "Customizable user actions" titles/title_user_actions.mp4
~/src/misc/gen_title.sh "Textured polygons from PostGIS" titles/title_textured_tin.mp4
mencoder titles/title_textured_tin.mp4 feat_textured_tin.ogv titles/title_point_layers.mp4 feat_points_layer.ogv titles/title_identify.mp4  feat_identify_point.ogv titles/title_user_actions.mp4 feat_user_action.ogv titles/title_lod.mp4 feat_lod.ogv titles/title_multitex.mp4 feat_multitex.ogv -o output.mp4 -ovc x264
