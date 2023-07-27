//Maya ASCII 2023 scene
//Name: jianzhu3.ma
//Last modified: Wed, Jul 05, 2023 03:32:11 PM
//Codeset: 936
requires maya "2023";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiSkyDomeLight"
		 -nodeType "aiImage" -nodeType "aiStandardSurface" -nodeType "aiNormalMap" -nodeType "aiRampRgb"
		 -nodeType "aiViewRegion" "mtoa" "5.2.0";
requires "stereoCamera" "10.0";
requires "OpenEXRLoader" "2020";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202208031415-1dee56799d";
fileInfo "osv" "Windows 10 Education v2009 (Build: 19042)";
fileInfo "UUID" "3F3BE1F4-49A4-13B8-6092-9D8ABD7D4066";
createNode transform -s -n "persp";
	rename -uid "3801FA0E-4EDB-FE87-A359-E69007BF0AD2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -48.609261139119653 -7.7747003004924338 106.66524358599307 ;
	setAttr ".r" -type "double3" 26.061647270394499 -23.799999999998978 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CA63C25A-4F52-A3F4-6CE9-82BA44DD31FD";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 133.98839833707208;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "F1B690D7-4569-A677-EDD9-D288283C2924";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5177EB67-431B-DF74-7229-979B5F55A56F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "5DBA68E7-4291-CAC8-89F8-4EAF41A8E4C5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "BEE22422-4FA9-F348-A940-94A0E124240A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "8CA206E5-464E-EC54-CDFD-0E8BFCC3CD7E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "75C3BF5D-4EB6-B80D-C52E-6BA693A68E35";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "group";
	rename -uid "1401D80F-4C31-6FD9-D4AE-98A8C36DD62F";
	setAttr ".rp" -type "double3" -29.505028459027699 26.50294906047408 -3.1590380040212511 ;
	setAttr ".sp" -type "double3" -29.505028459027699 26.50294906047408 -3.1590380040212511 ;
createNode transform -n "pCube1";
	rename -uid "9D23DFA9-43E3-27DB-F077-54BAC389828A";
	setAttr ".t" -type "double3" 0 33.433126896638761 0 ;
	setAttr ".s" -type "double3" 17.483332221005881 55.467401411456869 15.040062651597829 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "73CE4C45-49DE-9036-6EE7-7F81AFC1403A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "aiSkyDomeLight1";
	rename -uid "D307E87D-48D5-3F4D-2C23-87BA21CB9641";
createNode aiSkyDomeLight -n "aiSkyDomeLightShape1" -p "aiSkyDomeLight1";
	rename -uid "B4072C34-40EC-93C8-0BF9-F4AFA4111B9B";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure"} ;
createNode transform -n "pCube2";
	rename -uid "79001779-4467-B28B-C4CC-66B07FABBFFB";
	setAttr ".t" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681186 ;
	setAttr ".s" -type "double3" 4.2395957176827279 1.4474318958188166 18.370745199787539 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "66B97A25-4272-DFB5-8058-43A2C6F25972";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group1";
	rename -uid "7235699C-496A-92C9-0658-CCBFB585B7C5";
	setAttr ".t" -type "double3" 0 -7.830785398068727 0 ;
	setAttr ".rp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
createNode transform -n "pasted__pCube2" -p "group1";
	rename -uid "07128638-4594-F8CE-9BA8-018D5EEC6DA5";
	setAttr ".t" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681186 ;
	setAttr ".s" -type "double3" 4.2395957176827279 1.4474318958188166 18.370745199787539 ;
createNode mesh -n "pasted__pCubeShape2" -p "|group1|pasted__pCube2";
	rename -uid "21AE045C-4A0E-C513-ADB0-DBB94ABB2A78";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group2";
	rename -uid "03E2988B-40AB-3A28-AB61-4F88A2A2E15C";
	setAttr ".t" -type "double3" 1.4191016364846045 3.8360442062270295 0 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 1.5682533404184733 1 1 ;
	setAttr ".rp" -type "double3" -4.3807282544002746 40.727571892304901 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -4.3807282544002746 40.727571892304901 -0.84366868034681097 ;
createNode transform -n "pasted__group1" -p "group2";
	rename -uid "A92FEA6A-431D-058D-0F58-81BA692099AE";
	setAttr ".t" -type "double3" 0 -7.830785398068727 0 ;
	setAttr ".rp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
createNode transform -n "group3";
	rename -uid "07927249-4AF4-BD77-0EC7-F2AF773E754C";
	setAttr ".rp" -type "double3" -2.9616266179156696 44.563616098531931 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -2.9616266179156696 44.563616098531931 -0.84366868034681097 ;
createNode transform -n "pasted__group2" -p "group3";
	rename -uid "99E59023-426A-DB28-1BFA-29AD84A377EC";
	setAttr ".t" -type "double3" 1.4191016364846045 3.8360442062270295 0 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 1.5682533404184733 1 1 ;
	setAttr ".rp" -type "double3" -4.3807282544002746 40.727571892304901 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -4.3807282544002746 40.727571892304901 -0.84366868034681097 ;
createNode transform -n "pasted__pasted__group1" -p "pasted__group2";
	rename -uid "8C0C1C07-45E5-3E01-1247-82BBD103D9BE";
	setAttr ".t" -type "double3" 0 -7.830785398068727 0 ;
	setAttr ".rp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
createNode transform -n "pasted__pasted__pasted__pCube2" -p "pasted__pasted__group1";
	rename -uid "F535EDE0-4DF3-46E0-D26C-C788B920DAD1";
	setAttr ".t" -type "double3" -4.3807282544002746 48.696172449551682 -0.84366868034681186 ;
	setAttr ".s" -type "double3" 4.2395957176827279 1.0972919570811821 18.370745199787539 ;
createNode mesh -n "pasted__pasted__pasted__pCubeShape2" -p "pasted__pasted__pasted__pCube2";
	rename -uid "BB289D8E-4288-734C-5913-B080521738F0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group4";
	rename -uid "66860DF2-456C-6142-C0E0-EA8104FB1146";
	setAttr ".t" -type "double3" -3.1392066170698989 0 0 ;
	setAttr ".rp" -type "double3" -2.823811458737616 44.563616098531931 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -2.823811458737616 44.563616098531931 -0.84366868034681097 ;
createNode transform -n "pasted__group3" -p "group4";
	rename -uid "79A13867-4FC2-EF89-7135-8BB4A40F9607";
	setAttr ".rp" -type "double3" -2.9616266179156696 44.563616098531931 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -2.9616266179156696 44.563616098531931 -0.84366868034681097 ;
createNode transform -n "pasted__pasted__group2" -p "|group4|pasted__group3";
	rename -uid "330A47CA-4EAB-DB85-BCAC-BBB622E0FB10";
	setAttr ".t" -type "double3" 1.4191016364846045 3.8360442062270295 0 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 1.5682533404184733 1 1 ;
	setAttr ".rp" -type "double3" -4.3807282544002746 40.727571892304901 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -4.3807282544002746 40.727571892304901 -0.84366868034681097 ;
createNode transform -n "pasted__pasted__pasted__group1" -p "|group4|pasted__group3|pasted__pasted__group2";
	rename -uid "21CA4470-4CA1-4148-4326-F78F64916B2F";
	setAttr ".t" -type "double3" 0 -7.830785398068727 0 ;
	setAttr ".rp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
createNode transform -n "pasted__pasted__pasted__pasted__pCube2" -p "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1";
	rename -uid "B3BE04D3-4120-F527-A00A-348BF35760E9";
	setAttr ".t" -type "double3" -4.3807282544002746 48.696172449551682 -0.84366868034681186 ;
	setAttr ".s" -type "double3" 4.2395957176827279 1.0972919570811821 18.370745199787539 ;
createNode mesh -n "pasted__pasted__pasted__pasted__pCubeShape2" -p "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2";
	rename -uid "678DF46D-4E76-8EA0-FD59-078B2FB18D68";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group5";
	rename -uid "E4E97EE1-4589-3C6B-D281-4CA0CC681C67";
	setAttr ".t" -type "double3" 7.9848478632705495 0 0 ;
	setAttr ".rp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
createNode transform -n "pasted__pCube2" -p "group5";
	rename -uid "ECCDC335-4F66-1D8C-A6FD-DDBB5930FCCB";
	setAttr ".t" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681186 ;
	setAttr ".s" -type "double3" 4.2395957176827279 1.4474318958188166 18.370745199787539 ;
createNode mesh -n "pasted__pCubeShape2" -p "|group5|pasted__pCube2";
	rename -uid "2DCCD0D1-4C5E-0D9D-1728-2DB5D794AD54";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group6";
	rename -uid "69F469FB-460D-64B3-3178-998A79978735";
	setAttr ".t" -type "double3" 7.9887299397250358 0 0 ;
	setAttr ".rp" -type "double3" -2.823811458737616 44.563616098531931 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -2.823811458737616 44.563616098531931 -0.84366868034681097 ;
createNode transform -n "pasted__group3" -p "group6";
	rename -uid "85AF272B-42F4-1E81-8843-D6B6DAA90F79";
	setAttr ".rp" -type "double3" -2.9616266179156696 44.563616098531931 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -2.9616266179156696 44.563616098531931 -0.84366868034681097 ;
createNode transform -n "pasted__pasted__group2" -p "|group6|pasted__group3";
	rename -uid "FFA1F119-4F81-093A-A868-649F6ECD8CDB";
	setAttr ".t" -type "double3" 1.4191016364846045 3.8360442062270295 0 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 1.5682533404184733 1 1 ;
	setAttr ".rp" -type "double3" -4.3807282544002746 40.727571892304901 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -4.3807282544002746 40.727571892304901 -0.84366868034681097 ;
createNode transform -n "pasted__pasted__pasted__group1" -p "|group6|pasted__group3|pasted__pasted__group2";
	rename -uid "9A289693-46CF-C954-1DEC-35BE91F0D04F";
	setAttr ".t" -type "double3" 0 -7.830785398068727 0 ;
	setAttr ".rp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
createNode transform -n "pasted__pasted__pasted__pasted__pCube2" -p "|group6|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1";
	rename -uid "01332189-4B9B-6513-5BE6-CEB4F4F8548C";
	setAttr ".t" -type "double3" -4.3807282544002746 48.696172449551682 -0.84366868034681186 ;
	setAttr ".s" -type "double3" 4.2395957176827279 1.0972919570811821 18.370745199787539 ;
createNode mesh -n "pasted__pasted__pasted__pasted__pCubeShape2" -p "|group6|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2";
	rename -uid "F414BEE2-4A63-3CC1-6466-51934C3A0564";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group7";
	rename -uid "FA4D4E90-4715-F4BF-17F3-598109EA8418";
	setAttr ".t" -type "double3" 7.9767092556796584 0 0 ;
	setAttr ".rp" -type "double3" -4.3807282544002746 40.727571892304901 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -4.3807282544002746 40.727571892304901 -0.84366868034681097 ;
createNode transform -n "pasted__group1" -p "group7";
	rename -uid "3976822B-49AC-D0F3-9D98-9F9A069E9603";
	setAttr ".t" -type "double3" 0 -7.830785398068727 0 ;
	setAttr ".rp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
createNode transform -n "pasted__pasted__pCube2" -p "|group7|pasted__group1";
	rename -uid "CFB91D98-4AB7-E0A7-5581-029AB9AA6452";
	setAttr ".t" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681186 ;
	setAttr ".s" -type "double3" 4.2395957176827279 1.4474318958188166 18.370745199787539 ;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "|group7|pasted__group1|pasted__pasted__pCube2";
	rename -uid "B700721A-4C33-D22C-EDFB-99B5192A985F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group8";
	rename -uid "41AB7635-46FC-B224-4127-35B18A2659EF";
	setAttr ".rp" -type "double3" -4.3807282544002746 40.727571892304901 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -4.3807282544002746 40.727571892304901 -0.84366868034681097 ;
createNode transform -n "pasted__group1" -p "group8";
	rename -uid "9CA8AF91-4E56-16EE-03CD-53AA5D63D258";
	setAttr ".t" -type "double3" 0 -7.830785398068727 0 ;
	setAttr ".rp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
createNode transform -n "group9";
	rename -uid "47D8B831-4A60-38A1-D936-6BB6063F88D2";
	setAttr ".t" -type "double3" 4.861394240626276 1.85023528703951 0 ;
	setAttr ".s" -type "double3" 1 0.43570199025107992 1 ;
	setAttr ".rp" -type "double3" -2.823811458737616 44.563616098531931 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -2.823811458737616 44.563616098531931 -0.84366868034681097 ;
createNode transform -n "pasted__group3" -p "group9";
	rename -uid "5CD96871-4FA1-749B-8C75-6C8D8CA9CFD7";
	setAttr ".rp" -type "double3" -2.9616266179156696 44.563616098531931 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -2.9616266179156696 44.563616098531931 -0.84366868034681097 ;
createNode transform -n "pasted__pasted__group2" -p "|group9|pasted__group3";
	rename -uid "1605DC65-4142-75B7-6A46-279EEDEA911E";
	setAttr ".t" -type "double3" 1.4191016364846045 3.8360442062270295 0 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 1.5682533404184733 1 1 ;
	setAttr ".rp" -type "double3" -4.3807282544002746 40.727571892304901 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -4.3807282544002746 40.727571892304901 -0.84366868034681097 ;
createNode transform -n "pasted__pasted__pasted__group1" -p "|group9|pasted__group3|pasted__pasted__group2";
	rename -uid "1CBAC730-498C-CDA5-B3D8-63B9D1F81BB5";
	setAttr ".t" -type "double3" 0 -7.830785398068727 0 ;
	setAttr ".rp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
createNode transform -n "group10";
	rename -uid "985EA3C3-49B7-9F4B-26A2-D3802A273BCA";
	setAttr ".t" -type "double3" 0 -2.9333815346531011 0 ;
	setAttr ".s" -type "double3" 0.59233802600557828 1 1 ;
	setAttr ".rp" -type "double3" 3.6041196088702745 48.558357290373628 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" 3.6041196088702745 48.558357290373628 -0.84366868034681097 ;
createNode transform -n "pasted__group5" -p "group10";
	rename -uid "2D688194-4E6A-1102-9DBD-A9AA55FAC2AD";
	setAttr ".t" -type "double3" 7.9848478632705495 0 0 ;
	setAttr ".rp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
createNode transform -n "pasted__pasted__pCube2" -p "pasted__group5";
	rename -uid "1A375051-4641-AC44-0A69-D58E02403B76";
	setAttr ".t" -type "double3" -4.3807282544002719 48.616153116301362 -0.84366868034681186 ;
	setAttr ".s" -type "double3" 4.2395957176827279 1.4474318958188166 18.370745199787539 ;
createNode mesh -n "pasted__pasted__pCubeShape2" -p "|group10|pasted__group5|pasted__pasted__pCube2";
	rename -uid "6D589684-413C-79F2-D12D-C69602878575";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group11";
	rename -uid "8234ED3B-4A45-EACB-DF74-849D11F2B0F2";
	setAttr ".rp" -type "double3" 2.03758278188866 46.413851385571441 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" 2.03758278188866 46.413851385571441 -0.84366868034681097 ;
createNode transform -n "pasted__group9" -p "group11";
	rename -uid "F4F01C0D-4B07-2A82-F5CD-E48201AA368F";
	setAttr ".t" -type "double3" 4.861394240626276 1.85023528703951 0 ;
	setAttr ".s" -type "double3" 1 0.43570199025107992 1 ;
	setAttr ".rp" -type "double3" -2.823811458737616 44.563616098531931 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -2.823811458737616 44.563616098531931 -0.84366868034681097 ;
createNode transform -n "pasted__pasted__group3" -p "pasted__group9";
	rename -uid "079A24B9-47CE-80ED-65CB-6DB5ECC854ED";
	setAttr ".rp" -type "double3" -2.9616266179156696 44.563616098531931 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -2.9616266179156696 44.563616098531931 -0.84366868034681097 ;
createNode transform -n "pasted__pasted__pasted__group2" -p "pasted__pasted__group3";
	rename -uid "85704785-4F31-A1B8-847B-30ADE871C506";
	setAttr ".t" -type "double3" 1.4191016364846045 3.8360442062270295 0 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 1.5682533404184733 1 1 ;
	setAttr ".rp" -type "double3" -4.3807282544002746 40.727571892304901 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -4.3807282544002746 40.727571892304901 -0.84366868034681097 ;
createNode transform -n "pasted__pasted__pasted__pasted__group1" -p "pasted__pasted__pasted__group2";
	rename -uid "3C06F2C1-4A51-5326-C593-FBA9AAE1164A";
	setAttr ".t" -type "double3" 0 -7.830785398068727 0 ;
	setAttr ".rp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
	setAttr ".sp" -type "double3" -4.3807282544002746 48.558357290373628 -0.84366868034681097 ;
createNode transform -n "pasted__pasted__pasted__pasted__pasted__pCube2" -p "pasted__pasted__pasted__pasted__group1";
	rename -uid "8B19FB0E-40AD-3599-840C-359AA754D046";
	setAttr ".t" -type "double3" -4.3807282544002746 48.696172449551682 -0.84366868034681186 ;
	setAttr ".s" -type "double3" 4.2395957176827279 1.0972919570811821 18.370745199787539 ;
createNode mesh -n "pasted__pasted__pasted__pasted__pasted__pCubeShape2" -p "pasted__pasted__pasted__pasted__pasted__pCube2";
	rename -uid "1610D09C-47E0-764A-E6B4-3E8B6FC51860";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube3";
	rename -uid "120884BA-4285-66B4-4775-3788E50BF699";
	setAttr ".t" -type "double3" -6.1579682906953161 58.992471231799094 2.4804372724345125 ;
	setAttr ".s" -type "double3" 2.9647510873951926 1.2287373783196975 11.591895474839784 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "5CAA62E2-4CE5-46EB-E460-B0AE4196B43C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group12";
	rename -uid "219B96D9-4A26-62B7-0BF1-1A9F50F1DDFE";
	setAttr ".t" -type "double3" 0 -1.5182383463868732 0.91930999855969553 ;
	setAttr ".s" -type "double3" 0.87471747987297976 0.72278803703036465 0.87471747987297976 ;
	setAttr ".rp" -type "double3" -6.1579682906953161 58.992471231799094 2.4804372724345125 ;
	setAttr ".sp" -type "double3" -6.1579682906953161 58.992471231799094 2.4804372724345125 ;
createNode transform -n "pasted__pCube3" -p "group12";
	rename -uid "F43CED05-433C-AC7C-3B1A-BEBFEF2E35F5";
	setAttr ".t" -type "double3" -6.157968290695317 58.992471231799094 2.2445677564161062 ;
	setAttr ".s" -type "double3" 2.9647510873951926 1.2287373783196975 11.591895474839784 ;
createNode mesh -n "pasted__pCubeShape3" -p "|group12|pasted__pCube3";
	rename -uid "C9FCFF3C-4C85-FDA4-00C0-52BBE65B2629";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pCube4" -p "group12";
	rename -uid "0EF8FB40-4EEC-BB1F-B9E6-AE8281889036";
	setAttr ".t" -type "double3" -6.1015581099724505 58.992471231799094 2.1075102247169117 ;
	setAttr ".s" -type "double3" 2.9647510873951926 1.2287373783196975 11.591895474839784 ;
createNode mesh -n "pasted__pCubeShape4" -p "pasted__pCube4";
	rename -uid "7D3AC835-4B81-B669-4532-D7A9B61AF2D2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group13";
	rename -uid "75DE2CB3-450F-5D8D-B081-398D678FB96B";
	setAttr ".t" -type "double3" 0 -1.3211900890031387 0.26480666680538256 ;
	setAttr ".s" -type "double3" 0.85692463848810163 0.85692463848810163 0.85692463848810163 ;
	setAttr ".rp" -type "double3" -6.1579682906953161 57.474232885412221 3.399747270994208 ;
	setAttr ".sp" -type "double3" -6.1579682906953161 57.474232885412221 3.399747270994208 ;
createNode transform -n "pasted__group12" -p "group13";
	rename -uid "67546A5A-4FAB-BDBF-687B-5DB5A50BB10E";
	setAttr ".t" -type "double3" 0 -1.5182383463868732 0.91930999855969553 ;
	setAttr ".s" -type "double3" 0.87471747987297976 0.72278803703036465 0.87471747987297976 ;
	setAttr ".rp" -type "double3" -6.1579682906953161 58.992471231799094 2.4804372724345125 ;
	setAttr ".sp" -type "double3" -6.1579682906953161 58.992471231799094 2.4804372724345125 ;
createNode transform -n "pasted__pasted__pCube3" -p "|group13|pasted__group12";
	rename -uid "D62E4A8B-4F51-63A3-4DF6-AC8A5EFA034E";
	setAttr ".t" -type "double3" -6.1579682906953161 58.992471231799051 2.7506451310895681 ;
	setAttr ".s" -type "double3" 2.9647510873951926 1.2287373783196975 11.591895474839784 ;
createNode mesh -n "pasted__pasted__pCubeShape3" -p "|group13|pasted__group12|pasted__pasted__pCube3";
	rename -uid "50BA058A-4D31-E11B-1201-C9A180DD35E0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pasted__pCube4" -p "|group13|pasted__group12";
	rename -uid "65761378-40E1-809D-A1BC-D28D970142B6";
	setAttr ".t" -type "double3" -6.0921396539759982 58.992471231799051 2.5907039582683393 ;
	setAttr ".s" -type "double3" 2.9647510873951926 1.2287373783196975 11.591895474839784 ;
createNode mesh -n "pasted__pasted__pCubeShape4" -p "pasted__pasted__pCube4";
	rename -uid "9D530BA6-4B14-3B91-B356-D098A433207E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group14";
	rename -uid "6E801184-4628-54C7-F5B2-B0AAFBD36090";
	setAttr ".t" -type "double3" 0 -1.2180965077718113 0.75897666928085794 ;
	setAttr ".s" -type "double3" 0.85972125602305594 0.85972125602305594 0.85972125602305594 ;
	setAttr ".rp" -type "double3" -6.1579682906953153 56.153042796409082 3.6645539377995906 ;
	setAttr ".sp" -type "double3" -6.1579682906953153 56.153042796409082 3.6645539377995906 ;
createNode transform -n "pasted__group13" -p "group14";
	rename -uid "D4A29DF6-4998-EDEE-5E85-599CB91ECE79";
	setAttr ".t" -type "double3" 0 -1.3211900890031387 0.26480666680538256 ;
	setAttr ".s" -type "double3" 0.85692463848810163 0.85692463848810163 0.85692463848810163 ;
	setAttr ".rp" -type "double3" -6.1579682906953161 57.474232885412221 3.399747270994208 ;
	setAttr ".sp" -type "double3" -6.1579682906953161 57.474232885412221 3.399747270994208 ;
createNode transform -n "pasted__pasted__group12" -p "|group14|pasted__group13";
	rename -uid "65FC6735-4B7F-DE2B-7EF6-BFA328D0A13D";
	setAttr ".t" -type "double3" 0 -1.5182383463868732 0.91930999855969553 ;
	setAttr ".s" -type "double3" 0.87471747987297976 0.72278803703036465 0.87471747987297976 ;
	setAttr ".rp" -type "double3" -6.1579682906953161 58.992471231799094 2.4804372724345125 ;
	setAttr ".sp" -type "double3" -6.1579682906953161 58.992471231799094 2.4804372724345125 ;
createNode transform -n "pasted__pasted__pasted__pCube3" -p "|group14|pasted__group13|pasted__pasted__group12";
	rename -uid "4ED91E0A-4714-E074-3FF9-9BA92590DDDA";
	setAttr ".t" -type "double3" -6.1579682906953161 58.992471231799094 2.674047967846001 ;
	setAttr ".s" -type "double3" 2.9647510873951926 1.2287373783196975 11.591895474839784 ;
createNode mesh -n "pasted__pasted__pasted__pCubeShape3" -p "|group14|pasted__group13|pasted__pasted__group12|pasted__pasted__pasted__pCube3";
	rename -uid "FCDC0BD3-4E44-B6D2-FABA-81BAD7065B68";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pasted__pasted__pCube4" -p "|group14|pasted__group13|pasted__pasted__group12";
	rename -uid "6F5EC2FA-4F9A-F7D5-CB2F-329089D612BE";
	setAttr ".t" -type "double3" -6.0813985464228155 58.992471231799094 2.4880095609778339 ;
	setAttr ".s" -type "double3" 2.9647510873951926 1.2287373783196975 11.591895474839784 ;
createNode mesh -n "pasted__pasted__pasted__pCubeShape4" -p "pasted__pasted__pasted__pCube4";
	rename -uid "7FB71FFE-4A71-D5AE-5FF2-B0B7C9ADFA75";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group15";
	rename -uid "720E2901-4959-ED6E-5CB3-7FA8F3169A4D";
	setAttr ".t" -type "double3" 12.254931558829698 0 0 ;
	setAttr ".rp" -type "double3" -6.1579682906953161 57.107320590719169 2.4839016462855126 ;
	setAttr ".sp" -type "double3" -6.1579682906953161 57.107320590719169 2.4839016462855126 ;
createNode transform -n "pasted__pCube3" -p "group15";
	rename -uid "F122CF7A-4F7E-66B9-1593-44888CEE894B";
	setAttr ".t" -type "double3" -6.1579682906953161 58.992471231799094 2.4804372724345125 ;
	setAttr ".s" -type "double3" 2.9647510873951926 1.2287373783196975 11.591895474839784 ;
createNode mesh -n "pasted__pCubeShape3" -p "|group15|pasted__pCube3";
	rename -uid "9AF14E8F-4EA7-85A9-E9B0-76AD36E153E5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group12" -p "group15";
	rename -uid "72F802E8-4086-A931-7CF6-CFBFECE00E13";
	setAttr ".t" -type "double3" 0 -1.5182383463868732 0.91930999855969553 ;
	setAttr ".s" -type "double3" 0.87471747987297976 0.72278803703036465 0.87471747987297976 ;
	setAttr ".rp" -type "double3" -6.1579682906953161 58.992471231799094 2.4804372724345125 ;
	setAttr ".sp" -type "double3" -6.1579682906953161 58.992471231799094 2.4804372724345125 ;
createNode transform -n "pasted__pasted__pCube3" -p "|group15|pasted__group12";
	rename -uid "BB535FEB-4CFE-C0B2-5D68-DDBAF9CE0826";
	setAttr ".t" -type "double3" -6.157968290695317 58.992471231799094 2.2445677564161062 ;
	setAttr ".s" -type "double3" 2.9647510873951926 1.2287373783196975 11.591895474839784 ;
createNode mesh -n "pasted__pasted__pCubeShape3" -p "|group15|pasted__group12|pasted__pasted__pCube3";
	rename -uid "B1043376-4E07-30B6-4113-EBA0C0C8CD95";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group13" -p "group15";
	rename -uid "3D06C0F8-441E-9D51-236D-C2B4B3C9E45C";
	setAttr ".t" -type "double3" 0 -1.3211900890031387 0.26480666680538256 ;
	setAttr ".s" -type "double3" 0.85692463848810163 0.85692463848810163 0.85692463848810163 ;
	setAttr ".rp" -type "double3" -6.1579682906953161 57.474232885412221 3.399747270994208 ;
	setAttr ".sp" -type "double3" -6.1579682906953161 57.474232885412221 3.399747270994208 ;
createNode transform -n "pasted__pasted__group12" -p "|group15|pasted__group13";
	rename -uid "7212CA85-45D0-2935-A89F-398869311D37";
	setAttr ".t" -type "double3" 0 -1.5182383463868732 0.91930999855969553 ;
	setAttr ".s" -type "double3" 0.87471747987297976 0.72278803703036465 0.87471747987297976 ;
	setAttr ".rp" -type "double3" -6.1579682906953161 58.992471231799094 2.4804372724345125 ;
	setAttr ".sp" -type "double3" -6.1579682906953161 58.992471231799094 2.4804372724345125 ;
createNode transform -n "pasted__pasted__pasted__pCube3" -p "|group15|pasted__group13|pasted__pasted__group12";
	rename -uid "2B5378DE-40D6-3925-C57E-F5B2F4829DA5";
	setAttr ".t" -type "double3" -6.1579682906953161 58.992471231799051 2.7506451310895681 ;
	setAttr ".s" -type "double3" 2.9647510873951926 1.2287373783196975 11.591895474839784 ;
createNode mesh -n "pasted__pasted__pasted__pCubeShape3" -p "|group15|pasted__group13|pasted__pasted__group12|pasted__pasted__pasted__pCube3";
	rename -uid "607B01A9-4661-16AA-3AC1-00ABB11C3480";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group14" -p "group15";
	rename -uid "5BCDC0ED-4201-3721-A319-A78DCE1E69DB";
	setAttr ".t" -type "double3" 0 -1.2180965077718113 0.75897666928085794 ;
	setAttr ".s" -type "double3" 0.85972125602305594 0.85972125602305594 0.85972125602305594 ;
	setAttr ".rp" -type "double3" -6.1579682906953153 56.153042796409082 3.6645539377995906 ;
	setAttr ".sp" -type "double3" -6.1579682906953153 56.153042796409082 3.6645539377995906 ;
createNode transform -n "pasted__pasted__group13" -p "pasted__group14";
	rename -uid "B9F2F81F-4F4E-BE29-5DCC-2D82EEB435F0";
	setAttr ".t" -type "double3" 0 -1.3211900890031387 0.26480666680538256 ;
	setAttr ".s" -type "double3" 0.85692463848810163 0.85692463848810163 0.85692463848810163 ;
	setAttr ".rp" -type "double3" -6.1579682906953161 57.474232885412221 3.399747270994208 ;
	setAttr ".sp" -type "double3" -6.1579682906953161 57.474232885412221 3.399747270994208 ;
createNode transform -n "pasted__pasted__pasted__group12" -p "pasted__pasted__group13";
	rename -uid "15E55C0E-4C1A-FD0D-C5AC-E19CE4C923BF";
	setAttr ".t" -type "double3" 0 -1.5182383463868732 0.91930999855969553 ;
	setAttr ".s" -type "double3" 0.87471747987297976 0.72278803703036465 0.87471747987297976 ;
	setAttr ".rp" -type "double3" -6.1579682906953161 58.992471231799094 2.4804372724345125 ;
	setAttr ".sp" -type "double3" -6.1579682906953161 58.992471231799094 2.4804372724345125 ;
createNode transform -n "pasted__pasted__pasted__pasted__pCube3" -p "pasted__pasted__pasted__group12";
	rename -uid "DDD86E90-410A-F9FD-A208-0CBAD686A65F";
	setAttr ".t" -type "double3" -6.1579682906953161 58.992471231799094 2.674047967846001 ;
	setAttr ".s" -type "double3" 2.9647510873951926 1.2287373783196975 11.591895474839784 ;
createNode mesh -n "pasted__pasted__pasted__pasted__pCubeShape3" -p "pasted__pasted__pasted__pasted__pCube3";
	rename -uid "533CDF77-4F70-9901-071C-82B6BCB0877E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube4";
	rename -uid "6AD74FA3-482C-D1EB-B5F5-06BD2BAB0895";
	setAttr ".t" -type "double3" -6.108625319574231 58.992471231799094 2.360550653708982 ;
	setAttr ".s" -type "double3" 2.9647510873951926 1.2287373783196975 11.591895474839784 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "F97EBC0B-49D6-D533-55DD-E7AD99A5CB4A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "45759ED7-474E-4771-0E67-ADBC724D26D6";
	setAttr -s 13 ".lnk";
	setAttr -s 13 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7BB3B966-44A5-C778-6F6B-599CAFE400D6";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "61E46650-4F61-9BC1-FF45-59A8E546023C";
createNode displayLayerManager -n "layerManager";
	rename -uid "3F544074-419A-92F8-6F76-51BF48054404";
createNode displayLayer -n "defaultLayer";
	rename -uid "E5B80231-4A71-366E-4872-40B8B83DB6AD";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "6563D88C-4454-4FB4-1F26-4CAA969377F2";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F5AA389F-495D-F8E6-00FE-F0960D6AAF83";
	setAttr ".g" yes;
createNode materialInfo -n "pasted__materialInfo12";
	rename -uid "93240F3B-4342-4F64-EE38-2C894E78958B";
createNode shadingEngine -n "pasted__Plastic_244SG";
	rename -uid "6C7F7856-419E-12F6-6C62-898609AF99E6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode aiStandardSurface -n "pasted__Plastic_244";
	rename -uid "98C433D0-43B1-9E6B-7409-5B91D8BD7D8E";
	setAttr ".base_color" -type "float3" 0.025559999 0.029999999 0.029999999 ;
	setAttr ".transmission_depth" 1;
createNode aiRampRgb -n "pasted__Plastic_09_Small_Scratches_aiRampRgb6";
	rename -uid "9D8E9D32-4BD6-9FB7-5856-F2B5FA9CC9CD";
	setAttr ".type" 0;
	setAttr -s 2 ".aiRamp";
	setAttr ".aiRamp[0].aiRampp" 0.74347823858261108;
	setAttr ".aiRamp[0].aiRampcv" -type "float3" 1 1 1 ;
	setAttr ".aiRamp[0].aiRampi" 1;
	setAttr ".aiRamp[1].aiRampp" 0.8739129900932312;
	setAttr ".aiRamp[1].aiRampcv" -type "float3" 0.35499999 0.35499999 0.35499999 ;
	setAttr ".aiRamp[1].aiRampi" 1;
createNode aiImage -n "pasted__Plastic_09_Small_Scratches_aiImage24";
	rename -uid "1CB18352-4A94-EFA9-70DD-E8B6B70B0841";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_06_plastic_rough.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__Plastic_09_Small_Scratches_place2dTexture24";
	rename -uid "EF567A76-4915-DFA0-BD26-608849F6B02C";
	setAttr ".re" -type "float2" 2 2 ;
createNode aiNormalMap -n "pasted__Plastic_09_Small_Scratches_aiNormalMap10";
	rename -uid "548661D0-4A55-B511-908F-99ACCF552358";
	setAttr ".invert_y" yes;
createNode aiImage -n "pasted__Plastic_09_Small_Scratches_aiImage23";
	rename -uid "8122037D-4443-F15C-45B9-6FA38E3650A9";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_06_plastic_normal.jpg";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "pasted__Plastic_09_Small_Scratches_place2dTexture23";
	rename -uid "77815964-4B03-B933-7D92-6FB24B3CC2BC";
	setAttr ".re" -type "float2" 2 2 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "0B3FD2E4-4BAD-7F11-792C-8885258380BA";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "5.2.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "DBDFF985-4800-CF81-AE5C-E480AE670FF4";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "F77EF00C-418C-409D-E6E8-D7BDD7D2A986";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "1ABDE25A-4056-5D99-6313-00B159A6D37C";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode polyCube -n "polyCube1";
	rename -uid "9A765FC2-4C51-0B03-4AB8-2CB97CA76450";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube2";
	rename -uid "5D25CF08-4842-DC13-5B78-58993D24F053";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__polyCube2";
	rename -uid "8F7C50AA-49D9-DA89-0C24-E38583752C1D";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__polyCube2";
	rename -uid "826DBAB9-41B1-011A-0847-B1BE0118C108";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__polyCube2";
	rename -uid "016CE015-4584-4FAD-4C02-E7B86EA5AA2D";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__polyCube3";
	rename -uid "2CC51949-49F5-6229-ECF2-8DBFB4FDA853";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__polyCube3";
	rename -uid "835D446C-4ED1-F710-3F5C-7F9D07F5FC92";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__polyCube2";
	rename -uid "74C30EC3-4231-3E98-C006-1A83CDBE8EB2";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__polyCube4";
	rename -uid "0377022E-47C9-2AA6-766B-64911BA6CB9A";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__pasted__polyCube4";
	rename -uid "B5EC0B7F-4084-9EEA-FF94-969893B32B58";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube3";
	rename -uid "41CD4CC9-47AE-AD26-598B-15A3DFCB9F62";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__polyCube4";
	rename -uid "83FB4CBB-4BC2-F7F7-6F4F-608B814927D3";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__polyCube5";
	rename -uid "9205FC6E-42E9-39E8-5E24-0090A7E7FDE9";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__polyCube5";
	rename -uid "562BE873-45F7-31B6-8CE3-9B9CC65A93E9";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__polyCube5";
	rename -uid "4893F893-4404-6C38-5AB3-A887014FF721";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__polyCube6";
	rename -uid "A89FD8D1-4F3B-AF74-3854-B1BFCE917B0F";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__polyCube6";
	rename -uid "EBADDA21-46B4-197C-302B-E3817C2CB8E6";
	setAttr ".cuv" 4;
createNode polyCube -n "pasted__pasted__pasted__pasted__polyCube5";
	rename -uid "4DFE2509-45F1-1329-F1A4-6ABB1A131702";
	setAttr ".cuv" 4;
createNode aiStandardSurface -n "Plastic_081";
	rename -uid "233680A3-41C1-D74D-92B3-B0A8F0B8C3AE";
	setAttr ".base_color" -type "float3" 0.88 0.070399985 0.070399985 ;
	setAttr ".transmission_depth" 1;
createNode remapColor -n "remapColor6";
	rename -uid "2BE3D4A4-4534-FF57-2FFF-52B1336E97B1";
	setAttr ".imn" 0.23059867322444916;
	setAttr ".imx" 0.28824833035469055;
	setAttr -s 2 ".r[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".g[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".b[0:1]"  0 0 1 1 1 1;
createNode aiImage -n "aiImage17";
	rename -uid "1D228E6E-4BBD-B668-FFF2-F8B562FD7B9D";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_01_plastic_Rough.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture17";
	rename -uid "9A33400F-4824-E584-9E1F-03AAA8626F07";
createNode aiNormalMap -n "aiNormalMap7";
	rename -uid "E097A24E-4911-6009-7585-139BDB6E8D10";
createNode aiImage -n "aiImage18";
	rename -uid "14AE47BD-46A8-E7F3-C576-EC861044BB80";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_01_plastic_Normal.jpg";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "place2dTexture18";
	rename -uid "F618061C-474B-B902-DD5B-01BA7B5D05B5";
createNode shadingEngine -n "Plastic_081SG";
	rename -uid "6E54B35A-45D0-2475-D8D1-B5A513537912";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "97CD788F-4D7C-E5EA-8503-C5AE50701EEE";
createNode aiStandardSurface -n "Plastic_082";
	rename -uid "C69DDA03-4A91-40A9-7344-98AF49E2B145";
	setAttr ".base_color" -type "float3" 0.88 0.070399985 0.070399985 ;
	setAttr ".transmission_depth" 1;
createNode remapColor -n "Plastic_08_Red_remapColor6";
	rename -uid "01D52BEA-444F-8194-4D65-D3A41F0E70A4";
	setAttr ".imn" 0.23059867322444916;
	setAttr ".imx" 0.28824833035469055;
	setAttr -s 2 ".r[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".g[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".b[0:1]"  0 0 1 1 1 1;
createNode aiImage -n "Plastic_08_Red_aiImage17";
	rename -uid "7BD02411-4B6F-515C-97BD-4CBFD3997048";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_01_plastic_Rough.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Plastic_08_Red_place2dTexture17";
	rename -uid "209C9D05-4E96-8AD8-DEDF-C19AE6426A02";
createNode aiNormalMap -n "Plastic_08_Red_aiNormalMap7";
	rename -uid "3D267F6D-40A1-EE53-9390-FCBF10A1AF27";
createNode aiImage -n "Plastic_08_Red_aiImage18";
	rename -uid "055FD8FC-4F00-A02B-CA85-FFAA8A69948B";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_01_plastic_Normal.jpg";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "Plastic_08_Red_place2dTexture18";
	rename -uid "9E4B8D16-417F-3C3A-7FBC-2A8C5CF4EFC5";
createNode shadingEngine -n "Plastic_082SG";
	rename -uid "981414A0-415D-ED4A-6B3D-FDB355232752";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "86D23C17-46DC-5B3D-0508-7EB2A8D6CCCB";
createNode aiStandardSurface -n "Plastic_083";
	rename -uid "772CFCBB-4CED-B4E4-29B7-BB998B0BA620";
	setAttr ".base_color" -type "float3" 0.88 0.070399985 0.070399985 ;
	setAttr ".transmission_depth" 1;
createNode remapColor -n "Plastic_08_Red_remapColor7";
	rename -uid "77937CDD-40D9-B146-1EA9-2E880385FBB2";
	setAttr ".imn" 0.23059867322444916;
	setAttr ".imx" 0.28824833035469055;
	setAttr -s 2 ".r[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".g[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".b[0:1]"  0 0 1 1 1 1;
createNode aiImage -n "Plastic_08_Red_aiImage19";
	rename -uid "9F154EA9-4841-BD57-1FA0-0DA8CACEE997";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_01_plastic_Rough.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Plastic_08_Red_place2dTexture19";
	rename -uid "F4008B61-4678-C569-470F-4CB17C351802";
createNode aiNormalMap -n "Plastic_08_Red_aiNormalMap8";
	rename -uid "841B7D6E-42A8-E557-32A5-1B9501C33534";
createNode aiImage -n "Plastic_08_Red_aiImage20";
	rename -uid "C68E2222-4ADE-278D-67DD-42B2371B792F";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_01_plastic_Normal.jpg";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "Plastic_08_Red_place2dTexture20";
	rename -uid "5D11E8CE-4B9C-9F23-A8A4-21A82733FB44";
createNode shadingEngine -n "Plastic_083SG";
	rename -uid "ECB65D9C-45E5-9C56-6A56-7EB88278E337";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "12B6CF08-4DA5-6A15-ECA6-5294F3D0CED8";
createNode aiStandardSurface -n "Plastic_071";
	rename -uid "FE7A0E93-4072-94B0-E713-8EB544857C60";
	setAttr ".transmission_depth" 1;
createNode aiRampRgb -n "aiRampRgb3";
	rename -uid "9493CC1A-40A8-0E89-D9C4-F78E5F35D805";
	setAttr ".type" 0;
	setAttr -s 2 ".aiRamp";
	setAttr ".aiRamp[0].aiRampp" 0.23913043737411499;
	setAttr ".aiRamp[0].aiRampcv" -type "float3" 1 1 1 ;
	setAttr ".aiRamp[0].aiRampi" 1;
	setAttr ".aiRamp[1].aiRampp" 0.30869564414024353;
	setAttr ".aiRamp[1].aiRampcv" -type "float3" 0.186 0.186 0.186 ;
	setAttr ".aiRamp[1].aiRampi" 1;
createNode aiImage -n "aiImage20";
	rename -uid "F0E34CA3-4E8B-4BE7-DBA5-B7AC2C510E67";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_05_plastic_rough.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture19";
	rename -uid "4280BEEE-4F00-79D9-04FE-5A850451948C";
	setAttr ".re" -type "float2" 2 2 ;
createNode aiNormalMap -n "aiNormalMap8";
	rename -uid "7597F294-4384-ECBC-B071-CE9A84FB2F5B";
	setAttr ".strength" 0.20000000298023224;
createNode aiImage -n "aiImage19";
	rename -uid "2273E184-43A4-5710-D611-50B3B5066376";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_05_plastic_normal.png";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "place2dTexture20";
	rename -uid "3C9FB86D-45B3-55C2-E4BB-D191F8F11882";
	setAttr ".re" -type "float2" 2 2 ;
createNode aiRampRgb -n "aiRampRgb4";
	rename -uid "C9D90068-49A6-9C09-10DA-529E5D3D3681";
	setAttr ".type" 0;
	setAttr -s 2 ".aiRamp";
	setAttr ".aiRamp[0].aiRampp" 0.895652174949646;
	setAttr ".aiRamp[0].aiRampcv" -type "float3" 0.53847998 0.63499999 0.61734325 ;
	setAttr ".aiRamp[0].aiRampi" 1;
	setAttr ".aiRamp[1].aiRampp" 0.83043479919433594;
	setAttr ".aiRamp[1].aiRampcv" -type "float3" 1 1 1 ;
	setAttr ".aiRamp[1].aiRampi" 1;
createNode shadingEngine -n "Plastic_071SG";
	rename -uid "666875E3-4DBE-3862-5DA3-CBAEB0C2F104";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "F470EBB2-4A28-E209-21EF-819C7754DB04";
createNode aiStandardSurface -n "Plastic_111";
	rename -uid "5A0A0A4A-4886-5915-D270-EB81B07F5756";
	setAttr ".specular_roughness" 0.40000000596046448;
	setAttr ".transmission_depth" 1;
createNode aiNormalMap -n "aiNormalMap10";
	rename -uid "EB2827F4-466A-7A43-F07E-B399E4BF32F7";
	setAttr ".strength" 0.20000000298023224;
createNode aiImage -n "aiImage24";
	rename -uid "C5431A9A-4163-6BF1-DA32-1487372C1AE8";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_02_plastic_normal.jpg";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "place2dTexture24";
	rename -uid "E46FD899-41E1-0BFF-13EE-F194ECF1E64E";
	setAttr ".re" -type "float2" 2 2 ;
createNode aiRampRgb -n "aiRampRgb9";
	rename -uid "C5E16E0A-43D3-244E-EC72-79AB4B886279";
	setAttr -s 2 ".aiRamp";
	setAttr ".aiRamp[0].aiRampp" 0.0043478258885443211;
	setAttr ".aiRamp[0].aiRampcv" -type "float3" 0.00089598849 0.18440716 0.89600003 ;
	setAttr ".aiRamp[0].aiRampi" 1;
	setAttr ".aiRamp[1].aiRampp" 1;
	setAttr ".aiRamp[1].aiRampcv" -type "float3" 0.20175999 0.77600002 0.30074939 ;
	setAttr ".aiRamp[1].aiRampi" 1;
createNode shadingEngine -n "Plastic_111SG";
	rename -uid "7C2AAB28-496C-B1A5-2309-258BD2AA2676";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "75B8A354-4618-DF9C-D360-13B18F218FB1";
createNode aiStandardSurface -n "Plastic_112";
	rename -uid "5F39E5CB-46B4-8BAD-2FFC-E39D510C29CF";
	setAttr ".transmission_depth" 1;
createNode aiRampRgb -n "Plastic_07_Grey_aiRampRgb3";
	rename -uid "A3DFD865-4B7D-2ADF-8174-3DA5E7FDECA1";
	setAttr ".type" 0;
	setAttr -s 2 ".aiRamp";
	setAttr ".aiRamp[0].aiRampp" 0.23913043737411499;
	setAttr ".aiRamp[0].aiRampcv" -type "float3" 1 1 1 ;
	setAttr ".aiRamp[0].aiRampi" 1;
	setAttr ".aiRamp[1].aiRampp" 0.30869564414024353;
	setAttr ".aiRamp[1].aiRampcv" -type "float3" 0.186 0.186 0.186 ;
	setAttr ".aiRamp[1].aiRampi" 1;
createNode aiImage -n "Plastic_07_Grey_aiImage20";
	rename -uid "248190CD-475B-5A2A-2FC3-DA9C4F9CE93E";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_05_plastic_rough.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Plastic_07_Grey_place2dTexture19";
	rename -uid "9C9D0617-4917-E80B-C083-16A283EE8D24";
	setAttr ".re" -type "float2" 2 2 ;
createNode aiNormalMap -n "Plastic_07_Grey_aiNormalMap8";
	rename -uid "A1B36E09-47CB-F101-226D-45BB8FA929A9";
	setAttr ".strength" 0.20000000298023224;
createNode aiImage -n "Plastic_07_Grey_aiImage19";
	rename -uid "74C4AFEA-4C94-D299-1B0E-16B37E05C188";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_05_plastic_normal.png";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "Plastic_07_Grey_place2dTexture20";
	rename -uid "B854890A-485F-49F9-6A85-50A00BB14044";
	setAttr ".re" -type "float2" 2 2 ;
createNode aiRampRgb -n "Plastic_07_Grey_aiRampRgb4";
	rename -uid "94E70C65-4510-0EE3-5A59-28A5D0D580BE";
	setAttr ".type" 0;
	setAttr -s 2 ".aiRamp";
	setAttr ".aiRamp[0].aiRampp" 0.895652174949646;
	setAttr ".aiRamp[0].aiRampcv" -type "float3" 0.53847998 0.63499999 0.61734325 ;
	setAttr ".aiRamp[0].aiRampi" 1;
	setAttr ".aiRamp[1].aiRampp" 0.83043479919433594;
	setAttr ".aiRamp[1].aiRampcv" -type "float3" 1 1 1 ;
	setAttr ".aiRamp[1].aiRampi" 1;
createNode shadingEngine -n "Plastic_112SG";
	rename -uid "E0C361A9-4B90-6651-0E03-BDB4B893432C";
	setAttr ".ihi" 0;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "D57733F2-4A55-56C0-6515-D08ABC56DE00";
createNode aiStandardSurface -n "Plastic_113";
	rename -uid "FB219D2F-410A-74CE-942C-44BA3693960E";
	setAttr ".transmission_depth" 1;
createNode aiRampRgb -n "Plastic_07_Grey_aiRampRgb5";
	rename -uid "624A6F8D-4E12-D4B9-F687-FA89B0D17319";
	setAttr ".type" 0;
	setAttr -s 2 ".aiRamp";
	setAttr ".aiRamp[0].aiRampp" 0.23913043737411499;
	setAttr ".aiRamp[0].aiRampcv" -type "float3" 1 1 1 ;
	setAttr ".aiRamp[0].aiRampi" 1;
	setAttr ".aiRamp[1].aiRampp" 0.30869564414024353;
	setAttr ".aiRamp[1].aiRampcv" -type "float3" 0.186 0.186 0.186 ;
	setAttr ".aiRamp[1].aiRampi" 1;
createNode aiImage -n "Plastic_07_Grey_aiImage22";
	rename -uid "173452F9-4C78-D1D3-8A83-C8A8E60E8507";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_05_plastic_rough.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Plastic_07_Grey_place2dTexture21";
	rename -uid "375184B6-418C-3B06-D026-EE96D57C79D1";
	setAttr ".re" -type "float2" 2 2 ;
createNode aiNormalMap -n "Plastic_07_Grey_aiNormalMap9";
	rename -uid "94F83EF3-49CC-F2D6-5CF8-BA98AA3F40D6";
	setAttr ".strength" 0.20000000298023224;
createNode aiImage -n "Plastic_07_Grey_aiImage21";
	rename -uid "76C1C40E-495B-7494-0EAA-98B1CFCFD6B2";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_05_plastic_normal.png";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "Plastic_07_Grey_place2dTexture22";
	rename -uid "2480E67E-4E64-44A3-E131-DB9048D47B11";
	setAttr ".re" -type "float2" 2 2 ;
createNode aiRampRgb -n "Plastic_07_Grey_aiRampRgb6";
	rename -uid "EABBF7BF-4A4E-2CF0-7583-0691560E9823";
	setAttr ".type" 0;
	setAttr -s 2 ".aiRamp";
	setAttr ".aiRamp[0].aiRampp" 0.895652174949646;
	setAttr ".aiRamp[0].aiRampcv" -type "float3" 0.53847998 0.63499999 0.61734325 ;
	setAttr ".aiRamp[0].aiRampi" 1;
	setAttr ".aiRamp[1].aiRampp" 0.83043479919433594;
	setAttr ".aiRamp[1].aiRampcv" -type "float3" 1 1 1 ;
	setAttr ".aiRamp[1].aiRampi" 1;
createNode shadingEngine -n "Plastic_113SG";
	rename -uid "BABC618F-4BD8-3E97-74D0-3FBFF01E7C97";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "9E6293B2-430D-5B77-EA0C-0ABDFD58BC45";
createNode aiStandardSurface -n "Plastic_114";
	rename -uid "1526B18A-4217-D529-B4AB-4D86F8E7692A";
	setAttr ".transmission_depth" 1;
createNode aiRampRgb -n "Plastic_07_Grey_aiRampRgb7";
	rename -uid "15CF4941-4BFC-62F0-CCF2-BBB2B1305047";
	setAttr ".type" 0;
	setAttr -s 2 ".aiRamp";
	setAttr ".aiRamp[0].aiRampp" 0.23913043737411499;
	setAttr ".aiRamp[0].aiRampcv" -type "float3" 1 1 1 ;
	setAttr ".aiRamp[0].aiRampi" 1;
	setAttr ".aiRamp[1].aiRampp" 0.30869564414024353;
	setAttr ".aiRamp[1].aiRampcv" -type "float3" 0.186 0.186 0.186 ;
	setAttr ".aiRamp[1].aiRampi" 1;
createNode aiImage -n "Plastic_07_Grey_aiImage24";
	rename -uid "4CFDC04A-4260-7990-AFDA-979E07A7BE44";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_05_plastic_rough.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Plastic_07_Grey_place2dTexture23";
	rename -uid "7C096F58-47BC-B9F5-341F-BE93E45011D1";
	setAttr ".re" -type "float2" 2 2 ;
createNode aiNormalMap -n "Plastic_07_Grey_aiNormalMap10";
	rename -uid "E38ABE81-4C2C-EA1A-78FA-2191B1C8FEC9";
	setAttr ".strength" 0.20000000298023224;
createNode aiImage -n "Plastic_07_Grey_aiImage23";
	rename -uid "3B266229-4C4C-AE34-621F-FAB93C3339E2";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_05_plastic_normal.png";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "Plastic_07_Grey_place2dTexture24";
	rename -uid "0DBA7539-4A49-6DD3-1CB5-F4A8AC90E7F2";
	setAttr ".re" -type "float2" 2 2 ;
createNode aiRampRgb -n "Plastic_07_Grey_aiRampRgb8";
	rename -uid "31DDE2A2-4C8A-7563-BCD2-AA92F17DB07D";
	setAttr ".type" 0;
	setAttr -s 2 ".aiRamp";
	setAttr ".aiRamp[0].aiRampp" 0.895652174949646;
	setAttr ".aiRamp[0].aiRampcv" -type "float3" 0.53847998 0.63499999 0.61734325 ;
	setAttr ".aiRamp[0].aiRampi" 1;
	setAttr ".aiRamp[1].aiRampp" 0.83043479919433594;
	setAttr ".aiRamp[1].aiRampcv" -type "float3" 1 1 1 ;
	setAttr ".aiRamp[1].aiRampi" 1;
createNode shadingEngine -n "Plastic_114SG";
	rename -uid "24F04B68-4A8D-2E3A-927D-7DA23F4B4CE7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "8008911F-425D-7CD2-73EE-F1903E0897E7";
createNode aiStandardSurface -n "Plastic_115";
	rename -uid "F70BF458-48D9-FD1E-4112-57834EB6BD73";
	setAttr ".transmission_depth" 1;
createNode aiRampRgb -n "Plastic_07_Grey_aiRampRgb9";
	rename -uid "AA072FAB-472C-9E36-CDAA-4484DDE61612";
	setAttr ".type" 0;
	setAttr -s 2 ".aiRamp";
	setAttr ".aiRamp[0].aiRampp" 0.23913043737411499;
	setAttr ".aiRamp[0].aiRampcv" -type "float3" 1 1 1 ;
	setAttr ".aiRamp[0].aiRampi" 1;
	setAttr ".aiRamp[1].aiRampp" 0.30869564414024353;
	setAttr ".aiRamp[1].aiRampcv" -type "float3" 0.186 0.186 0.186 ;
	setAttr ".aiRamp[1].aiRampi" 1;
createNode aiImage -n "Plastic_07_Grey_aiImage26";
	rename -uid "2A052DA5-4655-4B90-5687-838978AA5C8E";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_05_plastic_rough.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Plastic_07_Grey_place2dTexture25";
	rename -uid "33DB96D4-42A7-57DB-0267-009E0E705731";
	setAttr ".re" -type "float2" 2 2 ;
createNode aiNormalMap -n "Plastic_07_Grey_aiNormalMap11";
	rename -uid "10DACE85-471E-18CE-AD2F-0B8BE7B1E8CF";
	setAttr ".strength" 0.20000000298023224;
createNode aiImage -n "Plastic_07_Grey_aiImage25";
	rename -uid "7CEE362B-4A7A-C906-83FC-39B5A3D70249";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_05_plastic_normal.png";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "Plastic_07_Grey_place2dTexture26";
	rename -uid "D73A1571-40CF-0570-F6E9-748E8C56A8B6";
	setAttr ".re" -type "float2" 2 2 ;
createNode aiRampRgb -n "Plastic_07_Grey_aiRampRgb10";
	rename -uid "9DF5190D-45A0-972E-7B2A-AA93DDA6400A";
	setAttr ".type" 0;
	setAttr -s 2 ".aiRamp";
	setAttr ".aiRamp[0].aiRampp" 0.895652174949646;
	setAttr ".aiRamp[0].aiRampcv" -type "float3" 0.53847998 0.63499999 0.61734325 ;
	setAttr ".aiRamp[0].aiRampi" 1;
	setAttr ".aiRamp[1].aiRampp" 0.83043479919433594;
	setAttr ".aiRamp[1].aiRampcv" -type "float3" 1 1 1 ;
	setAttr ".aiRamp[1].aiRampi" 1;
createNode shadingEngine -n "Plastic_115SG";
	rename -uid "85F7A4DA-4843-5D24-611A-05BEB80AC529";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "15D805FA-4936-E80C-036B-708A4F06A26A";
createNode aiStandardSurface -n "Plastic_116";
	rename -uid "E67A0824-42C3-A2BF-49BB-76987817B093";
	setAttr ".transmission_depth" 1;
createNode aiRampRgb -n "Plastic_07_Grey_aiRampRgb11";
	rename -uid "C4B58FDD-488B-2F3C-9009-3A8CD0D1457D";
	setAttr ".type" 0;
	setAttr -s 2 ".aiRamp";
	setAttr ".aiRamp[0].aiRampp" 0.23913043737411499;
	setAttr ".aiRamp[0].aiRampcv" -type "float3" 1 1 1 ;
	setAttr ".aiRamp[0].aiRampi" 1;
	setAttr ".aiRamp[1].aiRampp" 0.30869564414024353;
	setAttr ".aiRamp[1].aiRampcv" -type "float3" 0.186 0.186 0.186 ;
	setAttr ".aiRamp[1].aiRampi" 1;
createNode aiImage -n "Plastic_07_Grey_aiImage28";
	rename -uid "AE7EBDD3-48BD-F2D0-5968-F3A39D3A06AA";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_05_plastic_rough.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Plastic_07_Grey_place2dTexture27";
	rename -uid "803BB0AC-45CD-DD2E-AE3E-D887E21FD23C";
	setAttr ".re" -type "float2" 2 2 ;
createNode aiNormalMap -n "Plastic_07_Grey_aiNormalMap12";
	rename -uid "B1143E59-48D8-EAEC-42AB-268F817D4C10";
	setAttr ".strength" 0.20000000298023224;
createNode aiImage -n "Plastic_07_Grey_aiImage27";
	rename -uid "1A02085A-4CF4-09D1-935D-29BC601ADF5E";
	setAttr ".filename" -type "string" "E:/maya Arnold Shader/Arnold Shader Suite for MAYA v2.0/03-PLASTICS/Del_05_plastic_normal.png";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "Plastic_07_Grey_place2dTexture28";
	rename -uid "9D7F9C65-420A-76E3-C1E6-6CB04821F299";
	setAttr ".re" -type "float2" 2 2 ;
createNode aiRampRgb -n "Plastic_07_Grey_aiRampRgb12";
	rename -uid "98944FE5-4D21-4C5A-C60F-CAB0F9B365CD";
	setAttr ".type" 0;
	setAttr -s 2 ".aiRamp";
	setAttr ".aiRamp[0].aiRampp" 0.895652174949646;
	setAttr ".aiRamp[0].aiRampcv" -type "float3" 0.53847998 0.63499999 0.61734325 ;
	setAttr ".aiRamp[0].aiRampi" 1;
	setAttr ".aiRamp[1].aiRampp" 0.83043479919433594;
	setAttr ".aiRamp[1].aiRampcv" -type "float3" 1 1 1 ;
	setAttr ".aiRamp[1].aiRampi" 1;
createNode shadingEngine -n "Plastic_116SG";
	rename -uid "E807782B-4EDD-C10F-9B0C-34B92F5A46BF";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
	rename -uid "35538E55-4E1B-9ACE-7D80-66954DA20E10";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "86751725-40B2-D114-A6ED-43AFFD44F9FC";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n"
		+ "            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n"
		+ "            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -rendererOverrideName \"arnoldViewOverride\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n"
		+ "            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1315\n            -height 647\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n"
		+ "            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n"
		+ "                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n"
		+ "                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -rendererOverrideName \\\"arnoldViewOverride\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1315\\n    -height 647\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -rendererOverrideName \\\"arnoldViewOverride\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1315\\n    -height 647\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D4537267-4D0C-4858-96A6-FCBAAC9360E3";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 100 -ast 0 -aet 100 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 13 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 16 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 49 ".u";
select -ne :defaultRenderingList1;
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 21 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyCube1.out" "pCubeShape1.i";
connectAttr "polyCube2.out" "pCubeShape2.i";
connectAttr "pasted__polyCube2.out" "|group1|pasted__pCube2|pasted__pCubeShape2.i"
		;
connectAttr "pasted__pasted__pasted__polyCube2.out" "pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "pasted__pasted__pasted__pasted__polyCube2.out" "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "pasted__polyCube3.out" "|group5|pasted__pCube2|pasted__pCubeShape2.i"
		;
connectAttr "pasted__pasted__pasted__pasted__polyCube3.out" "|group6|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "pasted__pasted__polyCube2.out" "|group7|pasted__group1|pasted__pasted__pCube2|pasted__pasted__pCubeShape2.i"
		;
connectAttr "pasted__pasted__polyCube4.out" "|group10|pasted__group5|pasted__pasted__pCube2|pasted__pasted__pCubeShape2.i"
		;
connectAttr "pasted__pasted__pasted__pasted__pasted__polyCube4.out" "pasted__pasted__pasted__pasted__pasted__pCubeShape2.i"
		;
connectAttr "polyCube3.out" "pCubeShape3.i";
connectAttr "pasted__polyCube4.out" "|group12|pasted__pCube3|pasted__pCubeShape3.i"
		;
connectAttr "pasted__pasted__polyCube5.out" "|group13|pasted__group12|pasted__pasted__pCube3|pasted__pasted__pCubeShape3.i"
		;
connectAttr "pasted__pasted__pasted__polyCube5.out" "|group14|pasted__group13|pasted__pasted__group12|pasted__pasted__pasted__pCube3|pasted__pasted__pasted__pCubeShape3.i"
		;
connectAttr "pasted__polyCube5.out" "|group15|pasted__pCube3|pasted__pCubeShape3.i"
		;
connectAttr "pasted__pasted__polyCube6.out" "|group15|pasted__group12|pasted__pasted__pCube3|pasted__pasted__pCubeShape3.i"
		;
connectAttr "pasted__pasted__pasted__polyCube6.out" "|group15|pasted__group13|pasted__pasted__group12|pasted__pasted__pasted__pCube3|pasted__pasted__pasted__pCubeShape3.i"
		;
connectAttr "pasted__pasted__pasted__pasted__polyCube5.out" "pasted__pasted__pasted__pasted__pCubeShape3.i"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__Plastic_244SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Plastic_081SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Plastic_082SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Plastic_083SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Plastic_071SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Plastic_111SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Plastic_112SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Plastic_113SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Plastic_114SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Plastic_115SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Plastic_116SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__Plastic_244SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Plastic_081SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Plastic_082SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Plastic_083SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Plastic_071SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Plastic_111SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Plastic_112SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Plastic_113SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Plastic_114SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Plastic_115SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Plastic_116SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pasted__Plastic_244SG.msg" "pasted__materialInfo12.sg";
connectAttr "pasted__Plastic_244.msg" "pasted__materialInfo12.m";
connectAttr "pasted__Plastic_244.msg" "pasted__materialInfo12.t" -na;
connectAttr "pasted__Plastic_244.out" "pasted__Plastic_244SG.ss";
connectAttr "pasted__Plastic_09_Small_Scratches_aiRampRgb6.outr" "pasted__Plastic_244.specular_roughness"
		;
connectAttr "pasted__Plastic_09_Small_Scratches_aiNormalMap10.out" "pasted__Plastic_244.n"
		;
connectAttr "pasted__Plastic_09_Small_Scratches_aiImage24.outr" "pasted__Plastic_09_Small_Scratches_aiRampRgb6.input"
		;
connectAttr ":defaultColorMgtGlobals.cme" "pasted__Plastic_09_Small_Scratches_aiImage24.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__Plastic_09_Small_Scratches_aiImage24.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__Plastic_09_Small_Scratches_aiImage24.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__Plastic_09_Small_Scratches_aiImage24.ws"
		;
connectAttr "pasted__Plastic_09_Small_Scratches_place2dTexture24.o" "pasted__Plastic_09_Small_Scratches_aiImage24.uvcoords"
		;
connectAttr "pasted__Plastic_09_Small_Scratches_aiImage23.out" "pasted__Plastic_09_Small_Scratches_aiNormalMap10.input"
		;
connectAttr ":defaultColorMgtGlobals.cme" "pasted__Plastic_09_Small_Scratches_aiImage23.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__Plastic_09_Small_Scratches_aiImage23.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__Plastic_09_Small_Scratches_aiImage23.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__Plastic_09_Small_Scratches_aiImage23.ws"
		;
connectAttr "pasted__Plastic_09_Small_Scratches_place2dTexture23.o" "pasted__Plastic_09_Small_Scratches_aiImage23.uvcoords"
		;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "remapColor6.ocr" "Plastic_081.specular_roughness";
connectAttr "aiNormalMap7.out" "Plastic_081.n";
connectAttr "aiImage17.out" "remapColor6.cl";
connectAttr ":defaultColorMgtGlobals.cme" "aiImage17.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "aiImage17.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "aiImage17.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "aiImage17.ws";
connectAttr "place2dTexture17.o" "aiImage17.uvcoords";
connectAttr "aiImage18.out" "aiNormalMap7.input";
connectAttr ":defaultColorMgtGlobals.cme" "aiImage18.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "aiImage18.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "aiImage18.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "aiImage18.ws";
connectAttr "place2dTexture18.o" "aiImage18.uvcoords";
connectAttr "Plastic_081.out" "Plastic_081SG.ss";
connectAttr "|group10|pasted__group5|pasted__pasted__pCube2|pasted__pasted__pCubeShape2.iog" "Plastic_081SG.dsm"
		 -na;
connectAttr "|group4|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|pasted__pasted__pasted__pasted__pCubeShape2.iog" "Plastic_081SG.dsm"
		 -na;
connectAttr "|group7|pasted__group1|pasted__pasted__pCube2|pasted__pasted__pCubeShape2.iog" "Plastic_081SG.dsm"
		 -na;
connectAttr "pasted__pasted__pasted__pCubeShape2.iog" "Plastic_081SG.dsm" -na;
connectAttr "|group6|pasted__group3|pasted__pasted__group2|pasted__pasted__pasted__group1|pasted__pasted__pasted__pasted__pCube2|pasted__pasted__pasted__pasted__pCubeShape2.iog" "Plastic_081SG.dsm"
		 -na;
connectAttr "pCubeShape2.iog" "Plastic_081SG.dsm" -na;
connectAttr "|group5|pasted__pCube2|pasted__pCubeShape2.iog" "Plastic_081SG.dsm"
		 -na;
connectAttr "Plastic_081SG.msg" "materialInfo1.sg";
connectAttr "Plastic_081.msg" "materialInfo1.m";
connectAttr "Plastic_081.msg" "materialInfo1.t" -na;
connectAttr "Plastic_08_Red_remapColor6.ocr" "Plastic_082.specular_roughness";
connectAttr "Plastic_08_Red_aiNormalMap7.out" "Plastic_082.n";
connectAttr "Plastic_08_Red_aiImage17.out" "Plastic_08_Red_remapColor6.cl";
connectAttr ":defaultColorMgtGlobals.cme" "Plastic_08_Red_aiImage17.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Plastic_08_Red_aiImage17.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Plastic_08_Red_aiImage17.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Plastic_08_Red_aiImage17.ws";
connectAttr "Plastic_08_Red_place2dTexture17.o" "Plastic_08_Red_aiImage17.uvcoords"
		;
connectAttr "Plastic_08_Red_aiImage18.out" "Plastic_08_Red_aiNormalMap7.input";
connectAttr ":defaultColorMgtGlobals.cme" "Plastic_08_Red_aiImage18.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Plastic_08_Red_aiImage18.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Plastic_08_Red_aiImage18.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Plastic_08_Red_aiImage18.ws";
connectAttr "Plastic_08_Red_place2dTexture18.o" "Plastic_08_Red_aiImage18.uvcoords"
		;
connectAttr "Plastic_082.out" "Plastic_082SG.ss";
connectAttr "|group1|pasted__pCube2|pasted__pCubeShape2.iog" "Plastic_082SG.dsm"
		 -na;
connectAttr "Plastic_082SG.msg" "materialInfo2.sg";
connectAttr "Plastic_082.msg" "materialInfo2.m";
connectAttr "Plastic_082.msg" "materialInfo2.t" -na;
connectAttr "Plastic_08_Red_remapColor7.ocr" "Plastic_083.specular_roughness";
connectAttr "Plastic_08_Red_aiNormalMap8.out" "Plastic_083.n";
connectAttr "Plastic_08_Red_aiImage19.out" "Plastic_08_Red_remapColor7.cl";
connectAttr ":defaultColorMgtGlobals.cme" "Plastic_08_Red_aiImage19.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Plastic_08_Red_aiImage19.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Plastic_08_Red_aiImage19.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Plastic_08_Red_aiImage19.ws";
connectAttr "Plastic_08_Red_place2dTexture19.o" "Plastic_08_Red_aiImage19.uvcoords"
		;
connectAttr "Plastic_08_Red_aiImage20.out" "Plastic_08_Red_aiNormalMap8.input";
connectAttr ":defaultColorMgtGlobals.cme" "Plastic_08_Red_aiImage20.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Plastic_08_Red_aiImage20.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Plastic_08_Red_aiImage20.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Plastic_08_Red_aiImage20.ws";
connectAttr "Plastic_08_Red_place2dTexture20.o" "Plastic_08_Red_aiImage20.uvcoords"
		;
connectAttr "Plastic_083.out" "Plastic_083SG.ss";
connectAttr "pasted__pasted__pasted__pasted__pasted__pCubeShape2.iog" "Plastic_083SG.dsm"
		 -na;
connectAttr "Plastic_083SG.msg" "materialInfo3.sg";
connectAttr "Plastic_083.msg" "materialInfo3.m";
connectAttr "Plastic_083.msg" "materialInfo3.t" -na;
connectAttr "aiRampRgb3.outr" "Plastic_071.specular_roughness";
connectAttr "aiNormalMap8.out" "Plastic_071.n";
connectAttr "aiRampRgb4.out" "Plastic_071.base_color";
connectAttr "aiImage20.outr" "aiRampRgb3.input";
connectAttr ":defaultColorMgtGlobals.cme" "aiImage20.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "aiImage20.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "aiImage20.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "aiImage20.ws";
connectAttr "place2dTexture19.o" "aiImage20.uvcoords";
connectAttr "aiImage19.out" "aiNormalMap8.input";
connectAttr ":defaultColorMgtGlobals.cme" "aiImage19.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "aiImage19.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "aiImage19.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "aiImage19.ws";
connectAttr "place2dTexture20.o" "aiImage19.uvcoords";
connectAttr "aiImage20.outg" "aiRampRgb4.input";
connectAttr "Plastic_071.out" "Plastic_071SG.ss";
connectAttr "Plastic_071SG.msg" "materialInfo4.sg";
connectAttr "Plastic_071.msg" "materialInfo4.m";
connectAttr "Plastic_071.msg" "materialInfo4.t" -na;
connectAttr "aiNormalMap10.out" "Plastic_111.n";
connectAttr "aiRampRgb9.out" "Plastic_111.base_color";
connectAttr "aiImage24.out" "aiNormalMap10.input";
connectAttr ":defaultColorMgtGlobals.cme" "aiImage24.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "aiImage24.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "aiImage24.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "aiImage24.ws";
connectAttr "place2dTexture24.o" "aiImage24.uvcoords";
connectAttr "Plastic_111.out" "Plastic_111SG.ss";
connectAttr "Plastic_111SG.msg" "materialInfo5.sg";
connectAttr "Plastic_111.msg" "materialInfo5.m";
connectAttr "Plastic_111.msg" "materialInfo5.t" -na;
connectAttr "Plastic_07_Grey_aiRampRgb3.outr" "Plastic_112.specular_roughness";
connectAttr "Plastic_07_Grey_aiNormalMap8.out" "Plastic_112.n";
connectAttr "Plastic_07_Grey_aiRampRgb4.out" "Plastic_112.base_color";
connectAttr "Plastic_07_Grey_aiImage20.outr" "Plastic_07_Grey_aiRampRgb3.input";
connectAttr ":defaultColorMgtGlobals.cme" "Plastic_07_Grey_aiImage20.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Plastic_07_Grey_aiImage20.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Plastic_07_Grey_aiImage20.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Plastic_07_Grey_aiImage20.ws";
connectAttr "Plastic_07_Grey_place2dTexture19.o" "Plastic_07_Grey_aiImage20.uvcoords"
		;
connectAttr "Plastic_07_Grey_aiImage19.out" "Plastic_07_Grey_aiNormalMap8.input"
		;
connectAttr ":defaultColorMgtGlobals.cme" "Plastic_07_Grey_aiImage19.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Plastic_07_Grey_aiImage19.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Plastic_07_Grey_aiImage19.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Plastic_07_Grey_aiImage19.ws";
connectAttr "Plastic_07_Grey_place2dTexture20.o" "Plastic_07_Grey_aiImage19.uvcoords"
		;
connectAttr "Plastic_07_Grey_aiImage20.outg" "Plastic_07_Grey_aiRampRgb4.input";
connectAttr "Plastic_112.out" "Plastic_112SG.ss";
connectAttr "pasted__pasted__pasted__pCubeShape4.iog" "Plastic_112SG.dsm" -na;
connectAttr "pCubeShape4.iog" "Plastic_112SG.dsm" -na;
connectAttr "pasted__pasted__pCubeShape4.iog" "Plastic_112SG.dsm" -na;
connectAttr "pasted__pCubeShape4.iog" "Plastic_112SG.dsm" -na;
connectAttr "pasted__pasted__pasted__pasted__pCubeShape3.iog" "Plastic_112SG.dsm"
		 -na;
connectAttr "|group15|pasted__group13|pasted__pasted__group12|pasted__pasted__pasted__pCube3|pasted__pasted__pasted__pCubeShape3.iog" "Plastic_112SG.dsm"
		 -na;
connectAttr "|group15|pasted__group12|pasted__pasted__pCube3|pasted__pasted__pCubeShape3.iog" "Plastic_112SG.dsm"
		 -na;
connectAttr "|group15|pasted__pCube3|pasted__pCubeShape3.iog" "Plastic_112SG.dsm"
		 -na;
connectAttr "Plastic_112SG.msg" "materialInfo6.sg";
connectAttr "Plastic_112.msg" "materialInfo6.m";
connectAttr "Plastic_112.msg" "materialInfo6.t" -na;
connectAttr "Plastic_07_Grey_aiRampRgb5.outr" "Plastic_113.specular_roughness";
connectAttr "Plastic_07_Grey_aiNormalMap9.out" "Plastic_113.n";
connectAttr "Plastic_07_Grey_aiRampRgb6.out" "Plastic_113.base_color";
connectAttr "Plastic_07_Grey_aiImage22.outr" "Plastic_07_Grey_aiRampRgb5.input";
connectAttr ":defaultColorMgtGlobals.cme" "Plastic_07_Grey_aiImage22.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Plastic_07_Grey_aiImage22.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Plastic_07_Grey_aiImage22.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Plastic_07_Grey_aiImage22.ws";
connectAttr "Plastic_07_Grey_place2dTexture21.o" "Plastic_07_Grey_aiImage22.uvcoords"
		;
connectAttr "Plastic_07_Grey_aiImage21.out" "Plastic_07_Grey_aiNormalMap9.input"
		;
connectAttr ":defaultColorMgtGlobals.cme" "Plastic_07_Grey_aiImage21.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Plastic_07_Grey_aiImage21.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Plastic_07_Grey_aiImage21.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Plastic_07_Grey_aiImage21.ws";
connectAttr "Plastic_07_Grey_place2dTexture22.o" "Plastic_07_Grey_aiImage21.uvcoords"
		;
connectAttr "Plastic_07_Grey_aiImage22.outg" "Plastic_07_Grey_aiRampRgb6.input";
connectAttr "Plastic_113.out" "Plastic_113SG.ss";
connectAttr "Plastic_113SG.msg" "materialInfo7.sg";
connectAttr "Plastic_113.msg" "materialInfo7.m";
connectAttr "Plastic_113.msg" "materialInfo7.t" -na;
connectAttr "Plastic_07_Grey_aiRampRgb7.outr" "Plastic_114.specular_roughness";
connectAttr "Plastic_07_Grey_aiNormalMap10.out" "Plastic_114.n";
connectAttr "Plastic_07_Grey_aiRampRgb8.out" "Plastic_114.base_color";
connectAttr "Plastic_07_Grey_aiImage24.outr" "Plastic_07_Grey_aiRampRgb7.input";
connectAttr ":defaultColorMgtGlobals.cme" "Plastic_07_Grey_aiImage24.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Plastic_07_Grey_aiImage24.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Plastic_07_Grey_aiImage24.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Plastic_07_Grey_aiImage24.ws";
connectAttr "Plastic_07_Grey_place2dTexture23.o" "Plastic_07_Grey_aiImage24.uvcoords"
		;
connectAttr "Plastic_07_Grey_aiImage23.out" "Plastic_07_Grey_aiNormalMap10.input"
		;
connectAttr ":defaultColorMgtGlobals.cme" "Plastic_07_Grey_aiImage23.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Plastic_07_Grey_aiImage23.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Plastic_07_Grey_aiImage23.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Plastic_07_Grey_aiImage23.ws";
connectAttr "Plastic_07_Grey_place2dTexture24.o" "Plastic_07_Grey_aiImage23.uvcoords"
		;
connectAttr "Plastic_07_Grey_aiImage24.outg" "Plastic_07_Grey_aiRampRgb8.input";
connectAttr "Plastic_114.out" "Plastic_114SG.ss";
connectAttr "Plastic_114SG.msg" "materialInfo8.sg";
connectAttr "Plastic_114.msg" "materialInfo8.m";
connectAttr "Plastic_114.msg" "materialInfo8.t" -na;
connectAttr "Plastic_07_Grey_aiRampRgb9.outr" "Plastic_115.specular_roughness";
connectAttr "Plastic_07_Grey_aiNormalMap11.out" "Plastic_115.n";
connectAttr "Plastic_07_Grey_aiRampRgb10.out" "Plastic_115.base_color";
connectAttr "Plastic_07_Grey_aiImage26.outr" "Plastic_07_Grey_aiRampRgb9.input";
connectAttr ":defaultColorMgtGlobals.cme" "Plastic_07_Grey_aiImage26.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Plastic_07_Grey_aiImage26.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Plastic_07_Grey_aiImage26.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Plastic_07_Grey_aiImage26.ws";
connectAttr "Plastic_07_Grey_place2dTexture25.o" "Plastic_07_Grey_aiImage26.uvcoords"
		;
connectAttr "Plastic_07_Grey_aiImage25.out" "Plastic_07_Grey_aiNormalMap11.input"
		;
connectAttr ":defaultColorMgtGlobals.cme" "Plastic_07_Grey_aiImage25.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Plastic_07_Grey_aiImage25.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Plastic_07_Grey_aiImage25.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Plastic_07_Grey_aiImage25.ws";
connectAttr "Plastic_07_Grey_place2dTexture26.o" "Plastic_07_Grey_aiImage25.uvcoords"
		;
connectAttr "Plastic_07_Grey_aiImage26.outg" "Plastic_07_Grey_aiRampRgb10.input"
		;
connectAttr "Plastic_115.out" "Plastic_115SG.ss";
connectAttr "Plastic_115SG.msg" "materialInfo9.sg";
connectAttr "Plastic_115.msg" "materialInfo9.m";
connectAttr "Plastic_115.msg" "materialInfo9.t" -na;
connectAttr "Plastic_07_Grey_aiRampRgb11.outr" "Plastic_116.specular_roughness";
connectAttr "Plastic_07_Grey_aiNormalMap12.out" "Plastic_116.n";
connectAttr "Plastic_07_Grey_aiRampRgb12.out" "Plastic_116.base_color";
connectAttr "Plastic_07_Grey_aiImage28.outr" "Plastic_07_Grey_aiRampRgb11.input"
		;
connectAttr ":defaultColorMgtGlobals.cme" "Plastic_07_Grey_aiImage28.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Plastic_07_Grey_aiImage28.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Plastic_07_Grey_aiImage28.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Plastic_07_Grey_aiImage28.ws";
connectAttr "Plastic_07_Grey_place2dTexture27.o" "Plastic_07_Grey_aiImage28.uvcoords"
		;
connectAttr "Plastic_07_Grey_aiImage27.out" "Plastic_07_Grey_aiNormalMap12.input"
		;
connectAttr ":defaultColorMgtGlobals.cme" "Plastic_07_Grey_aiImage27.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Plastic_07_Grey_aiImage27.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Plastic_07_Grey_aiImage27.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Plastic_07_Grey_aiImage27.ws";
connectAttr "Plastic_07_Grey_place2dTexture28.o" "Plastic_07_Grey_aiImage27.uvcoords"
		;
connectAttr "Plastic_07_Grey_aiImage28.outg" "Plastic_07_Grey_aiRampRgb12.input"
		;
connectAttr "Plastic_116.out" "Plastic_116SG.ss";
connectAttr "|group14|pasted__group13|pasted__pasted__group12|pasted__pasted__pasted__pCube3|pasted__pasted__pasted__pCubeShape3.iog" "Plastic_116SG.dsm"
		 -na;
connectAttr "|group13|pasted__group12|pasted__pasted__pCube3|pasted__pasted__pCubeShape3.iog" "Plastic_116SG.dsm"
		 -na;
connectAttr "|group12|pasted__pCube3|pasted__pCubeShape3.iog" "Plastic_116SG.dsm"
		 -na;
connectAttr "pCubeShape3.iog" "Plastic_116SG.dsm" -na;
connectAttr "Plastic_116SG.msg" "materialInfo10.sg";
connectAttr "Plastic_116.msg" "materialInfo10.m";
connectAttr "Plastic_116.msg" "materialInfo10.t" -na;
connectAttr "pasted__Plastic_244SG.pa" ":renderPartition.st" -na;
connectAttr "Plastic_081SG.pa" ":renderPartition.st" -na;
connectAttr "Plastic_082SG.pa" ":renderPartition.st" -na;
connectAttr "Plastic_083SG.pa" ":renderPartition.st" -na;
connectAttr "Plastic_071SG.pa" ":renderPartition.st" -na;
connectAttr "Plastic_111SG.pa" ":renderPartition.st" -na;
connectAttr "Plastic_112SG.pa" ":renderPartition.st" -na;
connectAttr "Plastic_113SG.pa" ":renderPartition.st" -na;
connectAttr "Plastic_114SG.pa" ":renderPartition.st" -na;
connectAttr "Plastic_115SG.pa" ":renderPartition.st" -na;
connectAttr "Plastic_116SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__Plastic_244.msg" ":defaultShaderList1.s" -na;
connectAttr "Plastic_081.msg" ":defaultShaderList1.s" -na;
connectAttr "Plastic_082.msg" ":defaultShaderList1.s" -na;
connectAttr "Plastic_083.msg" ":defaultShaderList1.s" -na;
connectAttr "Plastic_071.msg" ":defaultShaderList1.s" -na;
connectAttr "Plastic_111.msg" ":defaultShaderList1.s" -na;
connectAttr "Plastic_112.msg" ":defaultShaderList1.s" -na;
connectAttr "Plastic_113.msg" ":defaultShaderList1.s" -na;
connectAttr "Plastic_114.msg" ":defaultShaderList1.s" -na;
connectAttr "Plastic_115.msg" ":defaultShaderList1.s" -na;
connectAttr "Plastic_116.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__Plastic_09_Small_Scratches_place2dTexture24.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "pasted__Plastic_09_Small_Scratches_place2dTexture23.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "pasted__Plastic_09_Small_Scratches_aiNormalMap10.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "pasted__Plastic_09_Small_Scratches_aiRampRgb6.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "remapColor6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture17.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture18.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "aiNormalMap7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Plastic_08_Red_remapColor6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Plastic_08_Red_place2dTexture17.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Plastic_08_Red_place2dTexture18.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Plastic_08_Red_aiNormalMap7.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "Plastic_08_Red_remapColor7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Plastic_08_Red_place2dTexture19.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Plastic_08_Red_place2dTexture20.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Plastic_08_Red_aiNormalMap8.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "place2dTexture19.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture20.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "aiNormalMap8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "aiRampRgb4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "aiRampRgb3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture24.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "aiNormalMap10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "aiRampRgb9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Plastic_07_Grey_place2dTexture19.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Plastic_07_Grey_place2dTexture20.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Plastic_07_Grey_aiNormalMap8.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "Plastic_07_Grey_aiRampRgb4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Plastic_07_Grey_aiRampRgb3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Plastic_07_Grey_place2dTexture21.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Plastic_07_Grey_place2dTexture22.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Plastic_07_Grey_aiNormalMap9.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "Plastic_07_Grey_aiRampRgb6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Plastic_07_Grey_aiRampRgb5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Plastic_07_Grey_place2dTexture23.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Plastic_07_Grey_place2dTexture24.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Plastic_07_Grey_aiNormalMap10.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "Plastic_07_Grey_aiRampRgb8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Plastic_07_Grey_aiRampRgb7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Plastic_07_Grey_place2dTexture25.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Plastic_07_Grey_place2dTexture26.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Plastic_07_Grey_aiNormalMap11.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "Plastic_07_Grey_aiRampRgb10.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "Plastic_07_Grey_aiRampRgb9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Plastic_07_Grey_place2dTexture27.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Plastic_07_Grey_place2dTexture28.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Plastic_07_Grey_aiNormalMap12.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "Plastic_07_Grey_aiRampRgb12.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "Plastic_07_Grey_aiRampRgb11.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "aiSkyDomeLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pasted__Plastic_09_Small_Scratches_aiImage24.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "pasted__Plastic_09_Small_Scratches_aiImage23.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "aiImage17.msg" ":defaultTextureList1.tx" -na;
connectAttr "aiImage18.msg" ":defaultTextureList1.tx" -na;
connectAttr "Plastic_08_Red_aiImage17.msg" ":defaultTextureList1.tx" -na;
connectAttr "Plastic_08_Red_aiImage18.msg" ":defaultTextureList1.tx" -na;
connectAttr "Plastic_08_Red_aiImage19.msg" ":defaultTextureList1.tx" -na;
connectAttr "Plastic_08_Red_aiImage20.msg" ":defaultTextureList1.tx" -na;
connectAttr "aiImage20.msg" ":defaultTextureList1.tx" -na;
connectAttr "aiImage19.msg" ":defaultTextureList1.tx" -na;
connectAttr "aiImage24.msg" ":defaultTextureList1.tx" -na;
connectAttr "Plastic_07_Grey_aiImage20.msg" ":defaultTextureList1.tx" -na;
connectAttr "Plastic_07_Grey_aiImage19.msg" ":defaultTextureList1.tx" -na;
connectAttr "Plastic_07_Grey_aiImage22.msg" ":defaultTextureList1.tx" -na;
connectAttr "Plastic_07_Grey_aiImage21.msg" ":defaultTextureList1.tx" -na;
connectAttr "Plastic_07_Grey_aiImage24.msg" ":defaultTextureList1.tx" -na;
connectAttr "Plastic_07_Grey_aiImage23.msg" ":defaultTextureList1.tx" -na;
connectAttr "Plastic_07_Grey_aiImage26.msg" ":defaultTextureList1.tx" -na;
connectAttr "Plastic_07_Grey_aiImage25.msg" ":defaultTextureList1.tx" -na;
connectAttr "Plastic_07_Grey_aiImage28.msg" ":defaultTextureList1.tx" -na;
connectAttr "Plastic_07_Grey_aiImage27.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "aiSkyDomeLight1.iog" ":defaultLightSet.dsm" -na;
// End of jianzhu3.ma
