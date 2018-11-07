{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 89.0, -739.0, 1024.0, 600.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 176.0, 65.0, 54.0, 22.0 ],
					"text" : "ml.zerox"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 591.0, 124.0, 74.0, 22.0 ],
					"text" : "ml.adaboost"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 494.0, 124.0, 63.0, 22.0 ],
					"text" : "ml.mindist"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 370.0, 124.0, 43.0, 22.0 ],
					"text" : "ml.dtw"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 258.0, 124.0, 51.0, 22.0 ],
					"text" : "ml.hmm"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 166.0, 124.0, 54.0, 22.0 ],
					"text" : "ml.linreg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 82.0, 124.0, 58.0, 22.0 ],
					"text" : "ml.logreg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 789.0, 65.0, 67.0, 22.0 ],
					"text" : "ml.minmax"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 690.0, 65.0, 51.0, 22.0 ],
					"text" : "ml.peak"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 591.0, 65.0, 52.0, 22.0 ],
					"text" : "ml.dtree"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 494.0, 65.0, 51.0, 22.0 ],
					"text" : "ml.gmm"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 370.0, 65.0, 79.0, 22.0 ],
					"text" : "ml.randforest"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 258.0, 65.0, 67.0, 22.0 ],
					"text" : "ml.softmax"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 82.0, 65.0, 46.0, 22.0 ],
					"text" : "ml.svm"
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [ 			{
				"name" : "ml.svm.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ml.softmax.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ml.randforest.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ml.gmm.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ml.dtree.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ml.peak.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ml.minmax.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ml.logreg.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ml.linreg.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ml.hmm.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ml.dtw.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ml.mindist.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ml.adaboost.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ml.zerox.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
