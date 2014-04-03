{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 580.0, 223.0, 757.0, 364.0 ],
		"bglocked" : 0,
		"defrect" : [ 580.0, 223.0, 757.0, 364.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p peak",
					"patching_rect" : [ 190.0, 121.0, 47.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-10",
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getpeak_threshold",
									"patching_rect" : [ 466.0, 164.0, 109.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-9",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 332.0, 130.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-6",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s peak",
									"patching_rect" : [ 332.0, 215.0, 46.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-65",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Object-Specific Attributes",
									"patching_rect" : [ 365.0, 96.0, 151.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-50",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "peak_threshold $1",
									"patching_rect" : [ 332.0, 166.0, 109.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-42",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0 0.1 0.1 0.1 0.5 0.4 0.3 0.2 0.1 0.1 0.1 0.1 0.3 0.6 0.8 0.2 0.1 0.1 0.1 0.1 0.1",
									"patching_rect" : [ 64.0, 25.0, 417.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-7",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "help",
									"patching_rect" : [ 128.0, 63.0, 33.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-13",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r peak",
									"patching_rect" : [ 92.0, 192.0, 44.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-3",
									"numinlets" : 0,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print peak",
									"patching_rect" : [ 64.0, 349.0, 63.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-2",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ml.peak",
									"patching_rect" : [ 64.0, 224.0, 53.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-1",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p adaboost",
					"patching_rect" : [ 110.0, 122.0, 70.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-9",
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 629.0, 56.0, 1302.0, 762.0 ],
						"bglocked" : 0,
						"defrect" : [ 629.0, 56.0, 1302.0, 762.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "umenu",
									"types" : [  ],
									"items" : [ "DECISION_STUMP", ",", "RADIAL_BASIS_FUNCTION" ],
									"patching_rect" : [ 998.0, 348.0, 102.0, 20.0 ],
									"outlettype" : [ "int", "", "" ],
									"fontsize" : 12.0,
									"id" : "obj-18",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "weak_classifier $1",
									"patching_rect" : [ 998.0, 381.0, 109.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-19",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 830.0, 348.0, 50.0, 20.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-17",
									"minimum" : 1,
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "num_boosting_iterations $1",
									"patching_rect" : [ 830.0, 381.0, 158.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-2",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s adaboost",
									"patching_rect" : [ 689.0, 417.0, 69.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-78",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"types" : [  ],
									"items" : [ "MAX_POSITIVE_VALUE", ",", "MAX_VALUE" ],
									"patching_rect" : [ 689.0, 348.0, 102.0, 20.0 ],
									"outlettype" : [ "int", "", "" ],
									"fontsize" : 12.0,
									"id" : "obj-44",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Object-Specific Attributes",
									"patching_rect" : [ 811.0, 304.0, 154.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-14",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Object-Specific Messages",
									"patching_rect" : [ 811.0, 36.0, 151.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-50",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "conformpath slash boot",
									"patching_rect" : [ 234.0, 161.0, 135.0, 20.0 ],
									"outlettype" : [ "", "int" ],
									"fontsize" : 12.0,
									"id" : "obj-4",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 234.0, 115.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog",
									"patching_rect" : [ 234.0, 140.0, 69.0, 20.0 ],
									"outlettype" : [ "", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-10",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getprobs",
									"patching_rect" : [ 333.0, 371.0, 57.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-64",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Common Attributes",
									"patching_rect" : [ 177.0, 301.0, 111.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-63",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getscaling",
									"patching_rect" : [ 264.0, 371.0, 65.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-62",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 202.0, 338.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-59",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "probs $1",
									"patching_rect" : [ 202.0, 371.0, 57.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-58",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 133.0, 338.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-57",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "scaling $1",
									"patching_rect" : [ 133.0, 371.0, 65.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-55",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s adaboost",
									"patching_rect" : [ 51.0, 467.0, 69.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-53",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s adaboost",
									"patching_rect" : [ 44.0, 252.0, 69.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-52",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r adaboost",
									"patching_rect" : [ 48.0, 550.0, 67.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-51",
									"numinlets" : 0,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Common Messages",
									"patching_rect" : [ 178.0, 36.0, 117.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-49",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0 0 1",
									"patching_rect" : [ 401.0, 149.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-37",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 1 0",
									"patching_rect" : [ 376.0, 118.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-5",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expect 1",
									"patching_rect" : [ 449.0, 149.0, 67.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-39",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expect 2",
									"patching_rect" : [ 448.0, 118.0, 67.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-6",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/tmp/adaboost.txt",
									"patching_rect" : [ 124.0, 118.0, 103.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-36",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend map",
									"patching_rect" : [ 376.0, 189.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-28",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "help",
									"patching_rect" : [ 590.0, 189.0, 33.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-29",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend load",
									"patching_rect" : [ 233.0, 186.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-3",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend save",
									"patching_rect" : [ 124.0, 189.0, 83.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-30",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend add",
									"patching_rect" : [ 44.0, 189.0, 78.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-31",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "train",
									"patching_rect" : [ 553.0, 189.0, 34.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-32",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"patching_rect" : [ 514.0, 189.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-33",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getattributes",
									"patching_rect" : [ 51.0, 371.0, 77.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-34",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print info",
									"patching_rect" : [ 105.0, 628.0, 57.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-7",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print map",
									"patching_rect" : [ 48.0, 667.0, 77.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-9",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2 1 1 0",
									"patching_rect" : [ 44.0, 118.0, 47.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-11",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 0 0 1",
									"patching_rect" : [ 66.0, 149.0, 47.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-12",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ml.adaboost",
									"patching_rect" : [ 48.0, 587.0, 76.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 12.0,
									"id" : "obj-1",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "prediction_method $1",
									"patching_rect" : [ 689.0, 381.0, 126.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-15",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p template",
					"patching_rect" : [ 10.0, 9.0, 67.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-8",
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 138.0, 44.0, 1302.0, 762.0 ],
						"bglocked" : 0,
						"defrect" : [ 138.0, 44.0, 1302.0, 762.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s svm",
									"patching_rect" : [ 689.0, 417.0, 42.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-78",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"types" : [  ],
									"items" : [ "C-SVC", ",", "nu-SVC", ",", "one-class", "SVM", ",", "epsilon-SVR", ",", "nu-SVR" ],
									"patching_rect" : [ 689.0, 348.0, 102.0, 20.0 ],
									"outlettype" : [ "int", "", "" ],
									"fontsize" : 12.0,
									"id" : "obj-44",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Object-Specific Attributes",
									"patching_rect" : [ 811.0, 304.0, 154.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-14",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Object-Specific Messages",
									"patching_rect" : [ 811.0, 36.0, 151.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-50",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "conformpath slash boot",
									"patching_rect" : [ 219.0, 164.0, 135.0, 20.0 ],
									"outlettype" : [ "", "int" ],
									"fontsize" : 12.0,
									"id" : "obj-4",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 219.0, 118.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog",
									"patching_rect" : [ 219.0, 143.0, 69.0, 20.0 ],
									"outlettype" : [ "", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-10",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getprobs",
									"patching_rect" : [ 333.0, 371.0, 57.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-64",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Common Attributes",
									"patching_rect" : [ 177.0, 301.0, 111.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-63",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getscaling",
									"patching_rect" : [ 264.0, 371.0, 65.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-62",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 202.0, 338.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-59",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "probs $1",
									"patching_rect" : [ 202.0, 371.0, 57.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-58",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 133.0, 338.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-57",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "scaling $1",
									"patching_rect" : [ 133.0, 371.0, 65.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-55",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s svm",
									"patching_rect" : [ 51.0, 467.0, 42.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-53",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s svm",
									"patching_rect" : [ 44.0, 252.0, 42.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-52",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r svm",
									"patching_rect" : [ 48.0, 550.0, 40.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-51",
									"numinlets" : 0,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Common Messages",
									"patching_rect" : [ 178.0, 36.0, 117.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-49",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0 0 1",
									"patching_rect" : [ 401.0, 149.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-37",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 1 0",
									"patching_rect" : [ 376.0, 118.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-5",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expect 1",
									"patching_rect" : [ 449.0, 149.0, 67.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-39",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expect 2",
									"patching_rect" : [ 448.0, 118.0, 67.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-6",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/tmp/svm.txt",
									"patching_rect" : [ 124.0, 118.0, 75.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-36",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend map",
									"patching_rect" : [ 376.0, 189.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-28",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "help",
									"patching_rect" : [ 590.0, 189.0, 33.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-29",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend load",
									"patching_rect" : [ 218.0, 189.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-3",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend save",
									"patching_rect" : [ 124.0, 189.0, 83.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-30",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend add",
									"patching_rect" : [ 44.0, 189.0, 78.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-31",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "train",
									"patching_rect" : [ 553.0, 189.0, 34.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-32",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"patching_rect" : [ 514.0, 189.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-33",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getattributes",
									"patching_rect" : [ 51.0, 371.0, 77.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-34",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print info",
									"patching_rect" : [ 77.0, 630.0, 57.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-7",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print map",
									"patching_rect" : [ 48.0, 667.0, 77.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-9",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2 1 1 0",
									"patching_rect" : [ 44.0, 118.0, 47.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-11",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 0 0 1",
									"patching_rect" : [ 66.0, 149.0, 47.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-12",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "object",
									"patching_rect" : [ 48.0, 587.0, 43.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 12.0,
									"id" : "obj-1",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "type $1",
									"patching_rect" : [ 689.0, 381.0, 50.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-15",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p hmm",
					"patching_rect" : [ 572.0, 68.0, 47.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-7",
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 264.0, 55.0, 1057.0, 664.0 ],
						"bglocked" : 0,
						"defrect" : [ 264.0, 55.0, 1057.0, 664.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 547.0, 614.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-40",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 810.0, 501.0, 50.0, 20.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-38",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 659.0, 500.0, 50.0, 20.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-36",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 549.0, 504.0, 50.0, 20.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-26",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 549.0, 389.0, 50.0, 20.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-24",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s hmm",
									"patching_rect" : [ 547.0, 685.0, 46.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-67",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s hmm",
									"patching_rect" : [ 549.0, 566.0, 46.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-66",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "min_improvement $1",
									"patching_rect" : [ 547.0, 650.0, 123.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-45",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "num_random_training_iterations $1",
									"patching_rect" : [ 810.0, 531.0, 199.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-41",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "max_num_iterations $1",
									"patching_rect" : [ 659.0, 531.0, 135.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-35",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "delta $1",
									"patching_rect" : [ 549.0, 530.0, 53.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-23",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"types" : [  ],
									"items" : [ "ERGODIC", ",", "LEFTRIGHT" ],
									"patching_rect" : [ 798.0, 396.0, 102.0, 20.0 ],
									"outlettype" : [ "int", "", "" ],
									"fontsize" : 12.0,
									"id" : "obj-44",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "model_type $1",
									"patching_rect" : [ 798.0, 426.0, 89.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-19",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s hmm",
									"patching_rect" : [ 549.0, 453.0, 46.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-78",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 657.0, 396.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-13",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "num_symbols $1",
									"patching_rect" : [ 657.0, 426.0, 101.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-15",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "num_states $1",
									"patching_rect" : [ 549.0, 426.0, 89.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-17",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Object-specific Attributes",
									"patching_rect" : [ 701.0, 347.0, 158.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-12",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Object-specific Messages",
									"patching_rect" : [ 744.0, 16.0, 158.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-10",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "conformpath slash boot",
									"patching_rect" : [ 211.0, 140.0, 135.0, 20.0 ],
									"outlettype" : [ "", "int" ],
									"fontsize" : 12.0,
									"id" : "obj-2",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 211.0, 32.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog",
									"patching_rect" : [ 211.0, 119.0, 69.0, 20.0 ],
									"outlettype" : [ "", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-8",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/tmp/hmm.txt",
									"patching_rect" : [ 119.0, 174.0, 80.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-11",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Should give 2",
									"patching_rect" : [ 511.0, 44.0, 81.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-5",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Should give 1",
									"patching_rect" : [ 459.0, 20.0, 81.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-4",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "200 1000",
									"patching_rect" : [ 444.0, 47.0, 61.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-69",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "100 1000",
									"patching_rect" : [ 388.0, 21.0, 61.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-70",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "100 0",
									"patching_rect" : [ 400.0, 47.0, 41.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-71",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"patching_rect" : [ 354.0, 21.0, 32.5, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-72",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"patching_rect" : [ 55.0, 203.0, 34.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-60",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 735.0, 177.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-56",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "record $1",
									"patching_rect" : [ 735.0, 238.0, 61.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-50",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p temporal",
									"patching_rect" : [ 354.0, 174.0, 67.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-47",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 842.0, 263.0, 193.0, 359.0 ],
										"bglocked" : 0,
										"defrect" : [ 842.0, 263.0, 193.0, 359.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 45.0, 26.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-13",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 45.0, 301.0, 25.0, 25.0 ],
													"id" : "obj-12",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 100.",
													"patching_rect" : [ 59.0, 165.0, 41.0, 20.0 ],
													"outlettype" : [ "float" ],
													"fontsize" : 12.0,
													"id" : "obj-4",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack f f",
													"patching_rect" : [ 45.0, 228.0, 49.0, 20.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 12.0,
													"id" : "obj-3",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t f f",
													"patching_rect" : [ 45.0, 100.0, 32.5, 20.0 ],
													"outlettype" : [ "float", "float" ],
													"fontsize" : 12.0,
													"id" : "obj-2",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "line",
													"patching_rect" : [ 45.0, 69.0, 46.0, 20.0 ],
													"outlettype" : [ "", "", "" ],
													"fontsize" : 12.0,
													"id" : "obj-1",
													"numinlets" : 3,
													"fontname" : "Arial",
													"numoutlets" : 3
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2",
									"patching_rect" : [ 108.0, 126.0, 19.5, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-42",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"patching_rect" : [ 86.0, 126.0, 18.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-27",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "200 1000",
									"patching_rect" : [ 128.0, 48.0, 61.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-22",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "100 1000",
									"patching_rect" : [ 72.0, 22.0, 61.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-20",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "100 0",
									"patching_rect" : [ 84.0, 48.0, 41.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-18",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"patching_rect" : [ 38.0, 22.0, 32.5, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-16",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p temporal",
									"patching_rect" : [ 38.0, 174.0, 67.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-14",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 641.0, 229.0, 193.0, 359.0 ],
										"bglocked" : 0,
										"defrect" : [ 641.0, 229.0, 193.0, 359.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 45.0, 26.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-13",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 45.0, 301.0, 25.0, 25.0 ],
													"id" : "obj-12",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "$3 $1 $2",
													"patching_rect" : [ 45.0, 261.0, 57.0, 18.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 12.0,
													"id" : "obj-8",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 116.0, 68.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 100.",
													"patching_rect" : [ 59.0, 165.0, 41.0, 20.0 ],
													"outlettype" : [ "float" ],
													"fontsize" : 12.0,
													"id" : "obj-4",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack f f 1",
													"patching_rect" : [ 45.0, 228.0, 59.0, 20.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 12.0,
													"id" : "obj-3",
													"numinlets" : 3,
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t f f",
													"patching_rect" : [ 45.0, 100.0, 32.5, 20.0 ],
													"outlettype" : [ "float", "float" ],
													"fontsize" : 12.0,
													"id" : "obj-2",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "line",
													"patching_rect" : [ 45.0, 69.0, 46.0, 20.0 ],
													"outlettype" : [ "", "", "" ],
													"fontsize" : 12.0,
													"id" : "obj-1",
													"numinlets" : 3,
													"fontname" : "Arial",
													"numoutlets" : 3
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-3", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getprobs",
									"patching_rect" : [ 328.0, 415.0, 57.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-64",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Common Attributes",
									"patching_rect" : [ 172.0, 345.0, 111.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-63",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getscaling",
									"patching_rect" : [ 259.0, 415.0, 65.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-62",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 197.0, 382.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-59",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "probs $1",
									"patching_rect" : [ 197.0, 415.0, 57.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-58",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 128.0, 382.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-57",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "scaling $1",
									"patching_rect" : [ 128.0, 415.0, 65.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-55",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s hmm",
									"patching_rect" : [ 39.0, 511.0, 46.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-53",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s hmm",
									"patching_rect" : [ 39.0, 296.0, 46.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-52",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Common Messages",
									"patching_rect" : [ 172.0, 6.0, 117.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-49",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend map",
									"patching_rect" : [ 354.0, 233.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-28",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "help",
									"patching_rect" : [ 531.0, 236.0, 33.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-29",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend load",
									"patching_rect" : [ 211.0, 233.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-3",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend save",
									"patching_rect" : [ 119.0, 233.0, 83.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-30",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend add",
									"patching_rect" : [ 39.0, 233.0, 78.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-31",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "train",
									"patching_rect" : [ 494.0, 236.0, 34.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-32",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"patching_rect" : [ 455.0, 236.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-33",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getattributes",
									"patching_rect" : [ 39.0, 415.0, 77.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-34",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r hmm",
									"patching_rect" : [ 39.0, 560.0, 44.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-51",
									"numinlets" : 0,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print info",
									"patching_rect" : [ 73.0, 642.0, 57.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-7",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print map",
									"patching_rect" : [ 39.0, 677.0, 77.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-6",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ml.hmm",
									"patching_rect" : [ 39.0, 597.0, 53.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 12.0,
									"id" : "obj-1",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p logreg",
					"patching_rect" : [ 506.0, 69.0, 54.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-6",
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 786.0, 193.0, 905.0, 703.0 ],
						"bglocked" : 0,
						"defrect" : [ 786.0, 193.0, 905.0, 703.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s linreg",
									"patching_rect" : [ 531.0, 467.0, 49.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-25",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 531.0, 373.0, 50.0, 20.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-24",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 749.0, 373.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-21",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 652.0, 373.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-18",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "training_rate $1",
									"patching_rect" : [ 749.0, 404.0, 94.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-16",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "min_change $1",
									"patching_rect" : [ 652.0, 404.0, 93.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-14",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "max_iterations $1",
									"patching_rect" : [ 531.0, 404.0, 105.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-12",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Object-specific Attributes",
									"patching_rect" : [ 548.0, 304.0, 151.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-10",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "conformpath slash boot",
									"patching_rect" : [ 200.0, 151.0, 135.0, 20.0 ],
									"outlettype" : [ "", "int" ],
									"fontsize" : 12.0,
									"id" : "obj-5",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 200.0, 104.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog",
									"patching_rect" : [ 200.0, 130.0, 69.0, 20.0 ],
									"outlettype" : [ "", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-2",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expect 1.5",
									"patching_rect" : [ 435.0, 150.0, 66.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-8",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0.5 0.5",
									"patching_rect" : [ 386.0, 152.0, 47.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-4",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getprobs",
									"patching_rect" : [ 318.0, 356.0, 57.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-64",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Common Attributes",
									"patching_rect" : [ 162.0, 286.0, 111.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-63",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getscaling",
									"patching_rect" : [ 249.0, 356.0, 65.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-62",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 187.0, 323.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-59",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "probs $1",
									"patching_rect" : [ 187.0, 356.0, 57.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-58",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 118.0, 323.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-57",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "scaling $1",
									"patching_rect" : [ 118.0, 356.0, 65.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-55",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s logreg",
									"patching_rect" : [ 36.0, 452.0, 53.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-53",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s logreg",
									"patching_rect" : [ 29.0, 237.0, 53.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-52",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r logreg",
									"patching_rect" : [ 33.0, 535.0, 51.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-51",
									"numinlets" : 0,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Common Messages",
									"patching_rect" : [ 162.0, 62.0, 117.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-49",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0 1",
									"patching_rect" : [ 368.0, 128.0, 32.5, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-37",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 0",
									"patching_rect" : [ 343.0, 106.0, 32.5, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-38",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expect 1",
									"patching_rect" : [ 435.0, 123.0, 67.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-39",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expect 2",
									"patching_rect" : [ 435.0, 101.0, 67.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-40",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/tmp/logreg.txt",
									"patching_rect" : [ 109.0, 103.0, 87.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-36",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend map",
									"patching_rect" : [ 343.0, 177.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-28",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "help",
									"patching_rect" : [ 584.0, 177.0, 33.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-29",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend load",
									"patching_rect" : [ 200.0, 174.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-3",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend save",
									"patching_rect" : [ 109.0, 174.0, 83.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-30",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend add",
									"patching_rect" : [ 29.0, 174.0, 78.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-31",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "train",
									"patching_rect" : [ 547.0, 177.0, 34.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-32",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"patching_rect" : [ 508.0, 177.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-33",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getattributes",
									"patching_rect" : [ 36.0, 356.0, 77.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-34",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print info",
									"patching_rect" : [ 74.0, 613.0, 57.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-7",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print map",
									"patching_rect" : [ 33.0, 652.0, 77.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-6",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2 1 0",
									"patching_rect" : [ 29.0, 103.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-22",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 0 1",
									"patching_rect" : [ 51.0, 134.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-20",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ml.logreg",
									"patching_rect" : [ 33.0, 572.0, 60.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 12.0,
									"id" : "obj-1",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p linreg",
					"patching_rect" : [ 429.0, 69.0, 50.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-5",
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 706.0, 51.0, 882.0, 673.0 ],
						"bglocked" : 0,
						"defrect" : [ 706.0, 51.0, 882.0, 673.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s linreg",
									"patching_rect" : [ 516.0, 452.0, 49.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-25",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 516.0, 358.0, 50.0, 20.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-24",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 734.0, 358.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-21",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 637.0, 358.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-18",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "training_rate $1",
									"patching_rect" : [ 734.0, 389.0, 94.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-16",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "min_change $1",
									"patching_rect" : [ 637.0, 389.0, 93.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-14",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "max_iterations $1",
									"patching_rect" : [ 516.0, 389.0, 105.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-12",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Object-specific Attributes",
									"patching_rect" : [ 533.0, 289.0, 151.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-10",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "conformpath slash boot",
									"patching_rect" : [ 200.0, 148.0, 135.0, 20.0 ],
									"outlettype" : [ "", "int" ],
									"fontsize" : 12.0,
									"id" : "obj-5",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 200.0, 101.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog",
									"patching_rect" : [ 200.0, 127.0, 69.0, 20.0 ],
									"outlettype" : [ "", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-2",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expect 1.5",
									"patching_rect" : [ 429.0, 150.0, 66.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-8",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0.5 0.5",
									"patching_rect" : [ 380.0, 152.0, 47.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-4",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getprobs",
									"patching_rect" : [ 318.0, 356.0, 57.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-64",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Common Attributes",
									"patching_rect" : [ 162.0, 286.0, 111.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-63",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getscaling",
									"patching_rect" : [ 249.0, 356.0, 65.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-62",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 187.0, 323.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-59",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "probs $1",
									"patching_rect" : [ 187.0, 356.0, 57.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-58",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 118.0, 323.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-57",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "scaling $1",
									"patching_rect" : [ 118.0, 356.0, 65.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-55",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s linreg",
									"patching_rect" : [ 36.0, 452.0, 49.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-53",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s linreg",
									"patching_rect" : [ 29.0, 237.0, 49.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-52",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r linreg",
									"patching_rect" : [ 33.0, 535.0, 47.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-51",
									"numinlets" : 0,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Common Messages",
									"patching_rect" : [ 162.0, 62.0, 117.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-49",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0 1",
									"patching_rect" : [ 362.0, 128.0, 32.5, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-37",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 0",
									"patching_rect" : [ 337.0, 106.0, 32.5, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-38",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expect 1",
									"patching_rect" : [ 429.0, 123.0, 67.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-39",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expect 2",
									"patching_rect" : [ 429.0, 101.0, 67.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-40",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/tmp/linreg.txt",
									"patching_rect" : [ 109.0, 103.0, 83.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-36",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend map",
									"patching_rect" : [ 337.0, 177.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-28",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "help",
									"patching_rect" : [ 578.0, 177.0, 33.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-29",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend load",
									"patching_rect" : [ 200.0, 174.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-3",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend save",
									"patching_rect" : [ 109.0, 174.0, 83.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-30",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend add",
									"patching_rect" : [ 29.0, 174.0, 78.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-31",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "train",
									"patching_rect" : [ 541.0, 177.0, 34.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-32",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"patching_rect" : [ 502.0, 177.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-33",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getattributes",
									"patching_rect" : [ 36.0, 356.0, 77.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-34",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print info",
									"patching_rect" : [ 70.0, 612.0, 57.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-7",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print map",
									"patching_rect" : [ 33.0, 652.0, 77.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-6",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2 1 0",
									"patching_rect" : [ 29.0, 103.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-22",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 0 1",
									"patching_rect" : [ 51.0, 134.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-20",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ml.linreg",
									"patching_rect" : [ 33.0, 572.0, 56.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 12.0,
									"id" : "obj-1",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p peak-GRT",
					"patching_rect" : [ 340.0, 69.0, 76.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-2",
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 484.0, 326.0, 805.0, 396.0 ],
						"bglocked" : 0,
						"defrect" : [ 484.0, 326.0, 805.0, 396.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "reset",
									"patching_rect" : [ 155.0, 48.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-17",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 49.0, 48.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-15",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "help",
									"patching_rect" : [ 113.0, 48.0, 33.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-13",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "low_pass_filter_size 8",
									"patching_rect" : [ 647.0, 48.0, 128.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-11",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "threshold_crossing_mode 0",
									"patching_rect" : [ 469.0, 48.0, 158.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-9",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "negative_threshold -2",
									"patching_rect" : [ 335.0, 48.0, 126.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-6",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "positive_threshold 2",
									"patching_rect" : [ 207.0, 48.0, 117.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-5",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print info",
									"patching_rect" : [ 83.0, 298.0, 57.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-3",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print peak",
									"patching_rect" : [ 49.0, 334.0, 63.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-2",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ml.peak",
									"patching_rect" : [ 49.0, 209.0, 53.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-1",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p dtw",
					"patching_rect" : [ 267.0, 69.0, 39.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-1",
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 744.0, 62.0, 1057.0, 807.0 ],
						"bglocked" : 0,
						"defrect" : [ 744.0, 62.0, 1057.0, 807.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s mlp",
									"patching_rect" : [ 547.0, 685.0, 39.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-67",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s mlp",
									"patching_rect" : [ 549.0, 566.0, 39.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-66",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 865.0, 614.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-61",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "enable_trim_training_data $1",
									"patching_rect" : [ 865.0, 647.0, 166.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-65",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 707.0, 616.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-46",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "enable_z_normalization $1",
									"patching_rect" : [ 707.0, 649.0, 154.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-48",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 547.0, 617.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-43",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "constrain_warping_path $1",
									"patching_rect" : [ 547.0, 650.0, 155.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-45",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 810.0, 498.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-40",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "constrain_warping_path $1",
									"patching_rect" : [ 810.0, 531.0, 155.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-41",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 673.0, 498.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-37",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "offset_time_series $1",
									"patching_rect" : [ 673.0, 531.0, 125.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-35",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 549.0, 498.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-25",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "warping_radius $1",
									"patching_rect" : [ 549.0, 530.0, 109.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-23",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"types" : [  ],
									"items" : [ "TEMPLATE", "THRESHOLDS", ",", "CLASS", "LIKELIHOODS", ",", "THRESHOLDS", "AND", "LIKELIHOODS" ],
									"patching_rect" : [ 798.0, 396.0, 102.0, 20.0 ],
									"outlettype" : [ "int", "", "" ],
									"fontsize" : 12.0,
									"id" : "obj-44",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rejection_mode $1",
									"patching_rect" : [ 798.0, 426.0, 109.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-19",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s mlp",
									"patching_rect" : [ 549.0, 453.0, 39.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-78",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 657.0, 396.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-13",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "null_rejection_coeff $1",
									"patching_rect" : [ 657.0, 426.0, 131.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-15",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 549.0, 396.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-54",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "null_rejection $1",
									"patching_rect" : [ 549.0, 426.0, 98.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-17",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Object-specific Attributes",
									"patching_rect" : [ 701.0, 347.0, 158.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-12",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Object-specific Messages",
									"patching_rect" : [ 744.0, 16.0, 158.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-10",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "conformpath slash boot",
									"patching_rect" : [ 211.0, 140.0, 135.0, 20.0 ],
									"outlettype" : [ "", "int" ],
									"fontsize" : 12.0,
									"id" : "obj-2",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 211.0, 32.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-9",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog",
									"patching_rect" : [ 211.0, 119.0, 69.0, 20.0 ],
									"outlettype" : [ "", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-8",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/tmp/dtw.txt",
									"patching_rect" : [ 119.0, 174.0, 72.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-11",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Should give 2",
									"patching_rect" : [ 511.0, 44.0, 81.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-5",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Should give 1",
									"patching_rect" : [ 459.0, 20.0, 81.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-4",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "200 1000",
									"patching_rect" : [ 444.0, 47.0, 61.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-69",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "100 1000",
									"patching_rect" : [ 388.0, 21.0, 61.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-70",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "100 0",
									"patching_rect" : [ 400.0, 47.0, 41.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-71",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"patching_rect" : [ 354.0, 21.0, 32.5, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-72",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"patching_rect" : [ 55.0, 203.0, 34.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-60",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 735.0, 177.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-56",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "record $1",
									"patching_rect" : [ 735.0, 238.0, 61.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-50",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p temporal",
									"patching_rect" : [ 354.0, 174.0, 67.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-47",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 842.0, 263.0, 193.0, 359.0 ],
										"bglocked" : 0,
										"defrect" : [ 842.0, 263.0, 193.0, 359.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 45.0, 26.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-13",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 45.0, 301.0, 25.0, 25.0 ],
													"id" : "obj-12",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 100.",
													"patching_rect" : [ 59.0, 165.0, 41.0, 20.0 ],
													"outlettype" : [ "float" ],
													"fontsize" : 12.0,
													"id" : "obj-4",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack f f",
													"patching_rect" : [ 45.0, 228.0, 49.0, 20.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 12.0,
													"id" : "obj-3",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t f f",
													"patching_rect" : [ 45.0, 100.0, 32.5, 20.0 ],
													"outlettype" : [ "float", "float" ],
													"fontsize" : 12.0,
													"id" : "obj-2",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "line",
													"patching_rect" : [ 45.0, 69.0, 46.0, 20.0 ],
													"outlettype" : [ "", "", "" ],
													"fontsize" : 12.0,
													"id" : "obj-1",
													"numinlets" : 3,
													"fontname" : "Arial",
													"numoutlets" : 3
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2",
									"patching_rect" : [ 108.0, 126.0, 19.5, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-42",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"patching_rect" : [ 86.0, 126.0, 18.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-27",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "200 1000",
									"patching_rect" : [ 128.0, 48.0, 61.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-22",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "100 1000",
									"patching_rect" : [ 72.0, 22.0, 61.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-20",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "100 0",
									"patching_rect" : [ 84.0, 48.0, 41.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-18",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"patching_rect" : [ 38.0, 22.0, 32.5, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-16",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p temporal",
									"patching_rect" : [ 38.0, 174.0, 67.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-14",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 641.0, 229.0, 193.0, 359.0 ],
										"bglocked" : 0,
										"defrect" : [ 641.0, 229.0, 193.0, 359.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 45.0, 26.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-13",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 45.0, 301.0, 25.0, 25.0 ],
													"id" : "obj-12",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "$3 $1 $2",
													"patching_rect" : [ 45.0, 261.0, 57.0, 18.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 12.0,
													"id" : "obj-8",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 116.0, 68.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"numoutlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 100.",
													"patching_rect" : [ 59.0, 165.0, 41.0, 20.0 ],
													"outlettype" : [ "float" ],
													"fontsize" : 12.0,
													"id" : "obj-4",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack f f 1",
													"patching_rect" : [ 45.0, 228.0, 59.0, 20.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 12.0,
													"id" : "obj-3",
													"numinlets" : 3,
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t f f",
													"patching_rect" : [ 45.0, 100.0, 32.5, 20.0 ],
													"outlettype" : [ "float", "float" ],
													"fontsize" : 12.0,
													"id" : "obj-2",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "line",
													"patching_rect" : [ 45.0, 69.0, 46.0, 20.0 ],
													"outlettype" : [ "", "", "" ],
													"fontsize" : 12.0,
													"id" : "obj-1",
													"numinlets" : 3,
													"fontname" : "Arial",
													"numoutlets" : 3
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-3", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getprobs",
									"patching_rect" : [ 328.0, 415.0, 57.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-64",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Common Attributes",
									"patching_rect" : [ 172.0, 345.0, 111.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-63",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getscaling",
									"patching_rect" : [ 259.0, 415.0, 65.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-62",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 197.0, 382.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-59",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "probs $1",
									"patching_rect" : [ 197.0, 415.0, 57.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-58",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 128.0, 382.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-57",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "scaling $1",
									"patching_rect" : [ 128.0, 415.0, 65.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-55",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s dtw",
									"patching_rect" : [ 39.0, 511.0, 39.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-53",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s dtw",
									"patching_rect" : [ 39.0, 296.0, 39.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-52",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Common Messages",
									"patching_rect" : [ 172.0, 6.0, 117.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-49",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend map",
									"patching_rect" : [ 354.0, 233.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-28",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "help",
									"patching_rect" : [ 531.0, 236.0, 33.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-29",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend load",
									"patching_rect" : [ 211.0, 233.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-3",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend save",
									"patching_rect" : [ 119.0, 233.0, 83.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-30",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend add",
									"patching_rect" : [ 39.0, 233.0, 78.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-31",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "train",
									"patching_rect" : [ 494.0, 236.0, 34.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-32",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"patching_rect" : [ 455.0, 236.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-33",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getattributes",
									"patching_rect" : [ 39.0, 415.0, 77.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-34",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r dtw",
									"patching_rect" : [ 39.0, 560.0, 37.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-51",
									"numinlets" : 0,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print info",
									"patching_rect" : [ 65.0, 642.0, 57.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-7",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print map",
									"patching_rect" : [ 39.0, 677.0, 77.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-6",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ml.dtw",
									"patching_rect" : [ 39.0, 597.0, 45.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 12.0,
									"id" : "obj-1",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p svm",
					"patching_rect" : [ 185.0, 69.0, 43.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-4",
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 330.0, 44.0, 1302.0, 762.0 ],
						"bglocked" : 0,
						"defrect" : [ 330.0, 44.0, 1302.0, 762.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s svm",
									"patching_rect" : [ 689.0, 417.0, 42.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-78",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s svm",
									"patching_rect" : [ 689.0, 618.0, 42.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-77",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 1020.0, 466.0, 50.0, 20.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-76",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 869.0, 467.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-75",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 817.0, 467.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-73",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 761.0, 467.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-71",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 689.0, 467.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-68",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 936.0, 467.0, 50.0, 20.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-67",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "shrinking $1",
									"patching_rect" : [ 1020.0, 500.0, 75.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-65",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "cachesize $1",
									"patching_rect" : [ 936.0, 500.0, 81.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-60",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "epsilon $1",
									"patching_rect" : [ 869.0, 500.0, 65.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-54",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "nu $1",
									"patching_rect" : [ 817.0, 500.0, 41.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-47",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "cost $1",
									"patching_rect" : [ 761.0, 500.0, 49.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-45",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "coeff0 $1",
									"patching_rect" : [ 689.0, 500.0, 60.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-42",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"patching_rect" : [ 999.0, 348.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-40",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "gamma $1",
									"patching_rect" : [ 999.0, 381.0, 67.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-35",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"patching_rect" : [ 930.0, 348.0, 50.0, 20.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-23",
									"minimum" : 0,
									"numinlets" : 1,
									"maximum" : 100,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "degree $1",
									"patching_rect" : [ 930.0, 381.0, 65.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-21",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"types" : [  ],
									"items" : [ "linear", ",", "polynomial", ",", "radial", "basis", ",", "sigmoid", ",", "precomputed" ],
									"patching_rect" : [ 803.0, 348.0, 102.0, 20.0 ],
									"outlettype" : [ "int", "", "" ],
									"fontsize" : 12.0,
									"id" : "obj-18",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "kernel $1",
									"patching_rect" : [ 803.0, 381.0, 60.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-19",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"types" : [  ],
									"items" : [ "C-SVC", ",", "nu-SVC", ",", "one-class", "SVM", ",", "epsilon-SVR", ",", "nu-SVR" ],
									"patching_rect" : [ 689.0, 348.0, 102.0, 20.0 ],
									"outlettype" : [ "int", "", "" ],
									"fontsize" : 12.0,
									"id" : "obj-44",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Object-Specific Attributes",
									"patching_rect" : [ 811.0, 304.0, 154.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-14",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s svm",
									"patching_rect" : [ 689.0, 252.0, 42.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-13",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Object-Specific Messages",
									"patching_rect" : [ 811.0, 36.0, 151.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-50",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "conformpath slash boot",
									"patching_rect" : [ 219.0, 164.0, 135.0, 20.0 ],
									"outlettype" : [ "", "int" ],
									"fontsize" : 12.0,
									"id" : "obj-4",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 219.0, 118.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog",
									"patching_rect" : [ 219.0, 143.0, 69.0, 20.0 ],
									"outlettype" : [ "", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-10",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getprobs",
									"patching_rect" : [ 333.0, 371.0, 57.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-64",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Common Attributes",
									"patching_rect" : [ 177.0, 301.0, 111.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-63",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getscaling",
									"patching_rect" : [ 264.0, 371.0, 65.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-62",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 202.0, 338.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-59",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "probs $1",
									"patching_rect" : [ 202.0, 371.0, 57.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-58",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 133.0, 338.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-57",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "scaling $1",
									"patching_rect" : [ 133.0, 371.0, 65.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-55",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s svm",
									"patching_rect" : [ 51.0, 467.0, 42.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-53",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s svm",
									"patching_rect" : [ 44.0, 252.0, 42.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-52",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r svm",
									"patching_rect" : [ 48.0, 550.0, 40.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-51",
									"numinlets" : 0,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Common Messages",
									"patching_rect" : [ 178.0, 36.0, 117.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-49",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0 0 1",
									"patching_rect" : [ 401.0, 149.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-37",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 1 0",
									"patching_rect" : [ 376.0, 118.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-5",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expect 1",
									"patching_rect" : [ 449.0, 149.0, 67.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-39",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expect 2",
									"patching_rect" : [ 448.0, 118.0, 67.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-6",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/tmp/svm.txt",
									"patching_rect" : [ 124.0, 118.0, 75.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-36",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend map",
									"patching_rect" : [ 376.0, 189.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-28",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "help",
									"patching_rect" : [ 590.0, 189.0, 33.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-29",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend load",
									"patching_rect" : [ 218.0, 189.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-3",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend save",
									"patching_rect" : [ 124.0, 189.0, 83.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-30",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend add",
									"patching_rect" : [ 44.0, 189.0, 78.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-31",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "train",
									"patching_rect" : [ 553.0, 189.0, 34.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-32",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"patching_rect" : [ 514.0, 189.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-33",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getattributes",
									"patching_rect" : [ 51.0, 371.0, 77.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-34",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print info",
									"patching_rect" : [ 77.0, 630.0, 57.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-7",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print map",
									"patching_rect" : [ 48.0, 667.0, 77.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-9",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2 1 1 0",
									"patching_rect" : [ 44.0, 118.0, 47.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-11",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 0 0 1",
									"patching_rect" : [ 66.0, 149.0, 47.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-12",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ml.svm",
									"patching_rect" : [ 48.0, 587.0, 48.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 12.0,
									"id" : "obj-1",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "cross_validation",
									"patching_rect" : [ 689.0, 122.0, 97.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-25",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "type $1",
									"patching_rect" : [ 689.0, 381.0, 50.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-15",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p mlp",
					"patching_rect" : [ 110.0, 69.0, 40.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-3",
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 204.0, 80.0, 1236.0, 821.0 ],
						"bglocked" : 0,
						"defrect" : [ 204.0, 80.0, 1236.0, 821.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expect 1 2 1 2 1",
									"patching_rect" : [ 487.0, 158.0, 106.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-99",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expect 5 4 3 2 1",
									"patching_rect" : [ 484.0, 130.0, 106.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-97",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expect 1 2 3 4 5",
									"patching_rect" : [ 483.0, 103.0, 103.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-98",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "classification",
									"patching_rect" : [ 200.0, 150.0, 88.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-96",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "regression",
									"patching_rect" : [ 205.0, 44.0, 67.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-95",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0.1 0.5 0.1",
									"patching_rect" : [ 399.0, 159.0, 67.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-93",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0.3 0.2 0.1",
									"patching_rect" : [ 375.0, 138.0, 67.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-91",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0.1 0.2 0.3",
									"patching_rect" : [ 364.0, 112.0, 67.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-90",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 2 1 2 1 0.1 0.5 0.1",
									"patching_rect" : [ 72.0, 95.0, 117.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-7",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "5 4 3 2 1 0.3 0.2 0.1",
									"patching_rect" : [ 54.0, 70.0, 117.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-46",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 2 3 4 5 0.1 0.2 0.3",
									"patching_rect" : [ 34.0, 48.0, 117.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-87",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s mlp",
									"patching_rect" : [ 222.0, 725.0, 39.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-86",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print else",
									"patching_rect" : [ 353.0, 697.0, 59.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-84",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf get%s",
									"patching_rect" : [ 222.0, 697.0, 80.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-83",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "iter",
									"patching_rect" : [ 190.0, 697.0, 27.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-82",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print map",
									"patching_rect" : [ 141.0, 725.0, 61.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-81",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print output",
									"patching_rect" : [ 114.0, 763.0, 71.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-48",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p test",
									"patching_rect" : [ 19.0, 418.0, 40.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-24",
									"numinlets" : 0,
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 47.0, 44.0, 729.0, 844.0 ],
										"bglocked" : 0,
										"defrect" : [ 47.0, 44.0, 729.0, 844.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "gain~",
													"patching_rect" : [ 141.0, 529.0, 20.0, 140.0 ],
													"outlettype" : [ "signal", "int" ],
													"id" : "obj-2",
													"numinlets" : 2,
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"patching_rect" : [ 39.5, 61.0, 20.0, 20.0 ],
													"outlettype" : [ "int" ],
													"id" : "obj-27",
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "metro 20",
													"patching_rect" : [ 39.5, 115.0, 58.0, 20.0 ],
													"outlettype" : [ "bang" ],
													"fontsize" : 12.0,
													"id" : "obj-24",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "presets",
													"patching_rect" : [ 169.0, 408.0, 50.0, 20.0 ],
													"fontsize" : 12.0,
													"id" : "obj-23",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "ezdac~",
													"patching_rect" : [ 134.0, 693.0, 45.0, 45.0 ],
													"id" : "obj-20",
													"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
													"offgradcolor1" : [ 0.0, 0.0, 0.0, 0.0 ],
													"ongradcolor1" : [ 0.0, 0.0, 0.0, 0.0 ],
													"numinlets" : 2,
													"ongradcolor2" : [ 0.0, 0.0, 0.0, 0.0 ],
													"offgradcolor2" : [ 0.0, 0.0, 0.0, 0.0 ],
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "radiogroup",
													"patching_rect" : [ 141.0, 371.0, 18.0, 114.0 ],
													"outlettype" : [ "" ],
													"id" : "obj-17",
													"numinlets" : 1,
													"numoutlets" : 1,
													"itemtype" : 0,
													"size" : 7,
													"value" : 1,
													"disabled" : [ 0, 0, 0, 0, 0, 0, 0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"patching_rect" : [ 103.0, 161.0, 41.0, 41.0 ],
													"outlettype" : [ "bang" ],
													"id" : "obj-10",
													"numinlets" : 1,
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p soundz",
													"patching_rect" : [ 141.0, 499.0, 59.0, 20.0 ],
													"outlettype" : [ "signal" ],
													"fontsize" : 12.0,
													"id" : "obj-8",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 571.0, 77.0, 869.0, 627.0 ],
														"bglocked" : 0,
														"defrect" : [ 571.0, 77.0, 869.0, 627.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1",
																	"patching_rect" : [ 504.0, 181.0, 32.5, 20.0 ],
																	"outlettype" : [ "int" ],
																	"fontsize" : 12.0,
																	"id" : "obj-122",
																	"numinlets" : 2,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 168.0, 604.0, 25.0, 25.0 ],
																	"id" : "obj-120",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 504.0, 106.0, 25.0, 25.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-119",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p paf~",
																	"patching_rect" : [ 181.0, 459.0, 44.0, 20.0 ],
																	"outlettype" : [ "signal", "signal" ],
																	"fontsize" : 12.0,
																	"id" : "obj-118",
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 2,
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
																		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
																		"openinpresentation" : 0,
																		"default_fontsize" : 12.0,
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"gridonopen" : 0,
																		"gridsize" : [ 15.0, 15.0 ],
																		"gridsnaponopen" : 0,
																		"toolbarvisible" : 1,
																		"boxanimatetime" : 200,
																		"imprint" : 0,
																		"metadata" : [  ],
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "phasor~",
																					"patching_rect" : [ 81.0, 444.0, 50.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-35",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~ 1.6",
																					"patching_rect" : [ 377.0, 246.0, 41.0, 17.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 9.0,
																					"id" : "obj-36",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "biquad~ 1. -1. 0. -0.9997 0.",
																					"patching_rect" : [ 661.0, 580.0, 155.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-37",
																					"numinlets" : 6,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "flonum",
																					"patching_rect" : [ 867.0, 510.0, 35.0, 17.0 ],
																					"outlettype" : [ "float", "bang" ],
																					"fontsize" : 9.0,
																					"triscale" : 0.9,
																					"id" : "obj-39",
																					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																					"numinlets" : 1,
																					"fontname" : "Arial",
																					"numoutlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "p list or float",
																					"patching_rect" : [ 89.0, 155.0, 70.0, 17.0 ],
																					"outlettype" : [ "" ],
																					"fontsize" : 9.0,
																					"id" : "obj-40",
																					"numinlets" : 1,
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"patcher" : 																					{
																						"fileversion" : 1,
																						"rect" : [ 0.0, 44.0, 600.0, 426.0 ],
																						"bglocked" : 0,
																						"defrect" : [ 0.0, 44.0, 600.0, 426.0 ],
																						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
																						"openinpresentation" : 0,
																						"default_fontsize" : 12.0,
																						"default_fontface" : 0,
																						"default_fontname" : "Arial",
																						"gridonopen" : 0,
																						"gridsize" : [ 15.0, 15.0 ],
																						"gridsnaponopen" : 0,
																						"toolbarvisible" : 1,
																						"boxanimatetime" : 200,
																						"imprint" : 0,
																						"metadata" : [  ],
																						"boxes" : [ 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "mtof",
																									"patching_rect" : [ 144.0, 189.0, 31.0, 17.0 ],
																									"outlettype" : [ "" ],
																									"fontsize" : 9.0,
																									"id" : "obj-1",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "- 12.",
																									"patching_rect" : [ 144.0, 168.0, 33.0, 17.0 ],
																									"outlettype" : [ "float" ],
																									"fontsize" : 9.0,
																									"id" : "obj-2",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "ftom",
																									"patching_rect" : [ 144.0, 146.0, 31.0, 17.0 ],
																									"outlettype" : [ "" ],
																									"fontsize" : 9.0,
																									"id" : "obj-3",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "route list float",
																									"patching_rect" : [ 50.0, 64.0, 76.0, 17.0 ],
																									"outlettype" : [ "", "", "" ],
																									"fontsize" : 9.0,
																									"id" : "obj-4",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 3
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "pack 1. 100.",
																									"patching_rect" : [ 50.0, 208.0, 66.0, 17.0 ],
																									"outlettype" : [ "" ],
																									"fontsize" : 9.0,
																									"id" : "obj-5",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "unpack 1. 100.",
																									"patching_rect" : [ 50.0, 124.0, 76.0, 17.0 ],
																									"outlettype" : [ "float", "float" ],
																									"fontsize" : 9.0,
																									"id" : "obj-6",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 2
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "mtof",
																									"patching_rect" : [ 50.0, 187.0, 31.0, 17.0 ],
																									"outlettype" : [ "" ],
																									"fontsize" : 9.0,
																									"id" : "obj-7",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "- 12.",
																									"patching_rect" : [ 50.0, 166.0, 33.0, 17.0 ],
																									"outlettype" : [ "float" ],
																									"fontsize" : 9.0,
																									"id" : "obj-8",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "ftom",
																									"patching_rect" : [ 50.0, 144.0, 31.0, 17.0 ],
																									"outlettype" : [ "" ],
																									"fontsize" : 9.0,
																									"id" : "obj-9",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
																									"outlettype" : [ "" ],
																									"id" : "obj-10",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "outlet",
																									"patching_rect" : [ 50.0, 288.0, 15.0, 15.0 ],
																									"id" : "obj-11",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"comment" : ""
																								}

																							}
 ],
																						"lines" : [ 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-9", 0 ],
																									"destination" : [ "obj-8", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-8", 0 ],
																									"destination" : [ "obj-7", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-7", 0 ],
																									"destination" : [ "obj-5", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-6", 0 ],
																									"destination" : [ "obj-9", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-6", 1 ],
																									"destination" : [ "obj-5", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-5", 0 ],
																									"destination" : [ "obj-11", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-4", 0 ],
																									"destination" : [ "obj-6", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-4", 1 ],
																									"destination" : [ "obj-3", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-3", 0 ],
																									"destination" : [ "obj-2", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-2", 0 ],
																									"destination" : [ "obj-1", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-10", 0 ],
																									"destination" : [ "obj-4", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-1", 0 ],
																									"destination" : [ "obj-11", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
 ]
																					}
,
																					"saved_object_attributes" : 																					{
																						"fontface" : 0,
																						"fontsize" : 12.0,
																						"default_fontface" : 0,
																						"globalpatchername" : "",
																						"default_fontname" : "Arial",
																						"fontname" : "Arial",
																						"default_fontsize" : 12.0
																					}

																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "cycle~",
																					"patching_rect" : [ 191.0, 256.0, 42.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-41",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "button",
																					"patching_rect" : [ 616.0, 518.0, 15.0, 15.0 ],
																					"outlettype" : [ "bang" ],
																					"id" : "obj-42",
																					"numinlets" : 1,
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "pack 1. 30.",
																					"patching_rect" : [ 499.0, 184.0, 65.0, 18.0 ],
																					"outlettype" : [ "" ],
																					"fontsize" : 10.0,
																					"id" : "obj-43",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "p complex-mod~",
																					"patching_rect" : [ 660.0, 650.0, 84.0, 17.0 ],
																					"outlettype" : [ "signal", "signal" ],
																					"fontsize" : 9.0,
																					"id" : "obj-44",
																					"numinlets" : 3,
																					"fontname" : "Arial",
																					"numoutlets" : 2,
																					"patcher" : 																					{
																						"fileversion" : 1,
																						"rect" : [ 134.0, 367.0, 600.0, 426.0 ],
																						"bglocked" : 0,
																						"defrect" : [ 134.0, 367.0, 600.0, 426.0 ],
																						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
																						"openinpresentation" : 0,
																						"default_fontsize" : 12.0,
																						"default_fontface" : 0,
																						"default_fontname" : "Arial",
																						"gridonopen" : 0,
																						"gridsize" : [ 15.0, 15.0 ],
																						"gridsnaponopen" : 0,
																						"toolbarvisible" : 1,
																						"boxanimatetime" : 200,
																						"imprint" : 0,
																						"metadata" : [  ],
																						"boxes" : [ 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "cos~",
																									"patching_rect" : [ 173.0, 217.0, 31.0, 17.0 ],
																									"outlettype" : [ "signal" ],
																									"fontsize" : 9.0,
																									"id" : "obj-1",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "+~",
																									"patching_rect" : [ 128.0, 289.0, 27.0, 17.0 ],
																									"outlettype" : [ "signal" ],
																									"fontsize" : 9.0,
																									"id" : "obj-2",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "outlet",
																									"patching_rect" : [ 132.0, 320.0, 15.0, 15.0 ],
																									"id" : "obj-3",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "phasor~",
																									"patching_rect" : [ 213.0, 123.0, 57.0, 17.0 ],
																									"outlettype" : [ "signal" ],
																									"fontsize" : 9.0,
																									"id" : "obj-4",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "-~",
																									"patching_rect" : [ 59.0, 289.0, 27.0, 17.0 ],
																									"outlettype" : [ "signal" ],
																									"fontsize" : 9.0,
																									"id" : "obj-5",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "*~",
																									"patching_rect" : [ 109.0, 252.0, 35.0, 17.0 ],
																									"outlettype" : [ "signal" ],
																									"fontsize" : 9.0,
																									"id" : "obj-6",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "*~",
																									"patching_rect" : [ 59.0, 252.0, 35.0, 17.0 ],
																									"outlettype" : [ "signal" ],
																									"fontsize" : 9.0,
																									"id" : "obj-7",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "cos~",
																									"patching_rect" : [ 107.0, 182.0, 31.0, 17.0 ],
																									"outlettype" : [ "signal" ],
																									"fontsize" : 9.0,
																									"id" : "obj-8",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "comment",
																									"text" : "frequency of shift",
																									"patching_rect" : [ 181.0, 72.0, 109.0, 17.0 ],
																									"fontsize" : 9.0,
																									"id" : "obj-9",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 0
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "comment",
																									"text" : "imaginary",
																									"patching_rect" : [ 89.0, 70.0, 64.0, 17.0 ],
																									"fontsize" : 9.0,
																									"id" : "obj-10",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 0
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "comment",
																									"text" : "real",
																									"patching_rect" : [ 52.0, 71.0, 33.0, 17.0 ],
																									"fontsize" : 9.0,
																									"id" : "obj-11",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 0
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "+~ 0.25",
																									"patching_rect" : [ 178.0, 182.0, 44.0, 17.0 ],
																									"outlettype" : [ "signal" ],
																									"fontsize" : 9.0,
																									"id" : "obj-12",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "comment",
																									"text" : "frequency shifted signal",
																									"patching_rect" : [ 157.0, 312.0, 171.0, 17.0 ],
																									"fontsize" : 9.0,
																									"id" : "obj-13",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 0
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "comment",
																									"text" : "signal to modulate",
																									"patching_rect" : [ 50.0, 50.0, 114.0, 17.0 ],
																									"fontsize" : 9.0,
																									"id" : "obj-14",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 0
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 11.0, 144.0, 15.0, 15.0 ],
																									"outlettype" : [ "signal" ],
																									"id" : "obj-15",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 61.0, 144.0, 15.0, 15.0 ],
																									"outlettype" : [ "" ],
																									"id" : "obj-16",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 213.0, 103.0, 15.0, 15.0 ],
																									"outlettype" : [ "signal" ],
																									"id" : "obj-17",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "outlet",
																									"patching_rect" : [ 59.0, 320.0, 15.0, 15.0 ],
																									"id" : "obj-18",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"comment" : ""
																								}

																							}
 ],
																						"lines" : [ 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-8", 0 ],
																									"destination" : [ "obj-7", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-7", 0 ],
																									"destination" : [ "obj-5", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-7", 0 ],
																									"destination" : [ "obj-2", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-6", 0 ],
																									"destination" : [ "obj-5", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-6", 0 ],
																									"destination" : [ "obj-2", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-5", 0 ],
																									"destination" : [ "obj-18", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-4", 0 ],
																									"destination" : [ "obj-8", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-4", 0 ],
																									"destination" : [ "obj-12", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-2", 0 ],
																									"destination" : [ "obj-3", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-17", 0 ],
																									"destination" : [ "obj-4", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-16", 0 ],
																									"destination" : [ "obj-6", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-15", 0 ],
																									"destination" : [ "obj-7", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-12", 0 ],
																									"destination" : [ "obj-1", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-1", 0 ],
																									"destination" : [ "obj-6", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
 ]
																					}
,
																					"saved_object_attributes" : 																					{
																						"fontface" : 0,
																						"fontsize" : 12.0,
																						"default_fontface" : 0,
																						"globalpatchername" : "",
																						"default_fontname" : "Arial",
																						"fontname" : "Arial",
																						"default_fontsize" : 12.0
																					}

																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "sig~ 1",
																					"patching_rect" : [ 257.0, 304.0, 41.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-45",
																					"numinlets" : 1,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "line~",
																					"patching_rect" : [ 264.0, 208.0, 36.0, 18.0 ],
																					"outlettype" : [ "signal", "bang" ],
																					"fontsize" : 10.0,
																					"id" : "obj-50",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "line~",
																					"patching_rect" : [ 344.0, 203.0, 36.0, 18.0 ],
																					"outlettype" : [ "signal", "bang" ],
																					"fontsize" : 10.0,
																					"id" : "obj-51",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "line~",
																					"patching_rect" : [ 180.0, 208.0, 36.0, 18.0 ],
																					"outlettype" : [ "signal", "bang" ],
																					"fontsize" : 10.0,
																					"id" : "obj-16",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "route freq vfr vib bw amp cf shift phase cfgliss",
																					"patching_rect" : [ 220.0, 126.0, 407.0, 17.0 ],
																					"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ],
																					"fontsize" : 9.0,
																					"id" : "obj-52",
																					"numinlets" : 1,
																					"fontname" : "Arial",
																					"numoutlets" : 10
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~",
																					"patching_rect" : [ 165.0, 642.0, 27.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-53",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "cos~",
																					"patching_rect" : [ 165.0, 692.0, 32.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-54",
																					"numinlets" : 1,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~",
																					"patching_rect" : [ 263.0, 448.0, 27.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-55",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~",
																					"patching_rect" : [ 323.0, 413.0, 27.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-56",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "divide by fundamental",
																					"patching_rect" : [ 364.0, 437.0, 116.0, 18.0 ],
																					"fontsize" : 10.0,
																					"id" : "obj-57",
																					"numinlets" : 1,
																					"fontname" : "Arial",
																					"numoutlets" : 0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "clip~ 0. 1.",
																					"patching_rect" : [ 81.0, 469.0, 62.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-58",
																					"numinlets" : 3,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+~ 0.5",
																					"patching_rect" : [ 445.0, 504.0, 45.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-59",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "%~ 1.",
																					"patching_rect" : [ 445.0, 529.0, 40.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-60",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "second phase signal",
																					"patching_rect" : [ 436.0, 482.0, 103.0, 18.0 ],
																					"fontsize" : 10.0,
																					"id" : "obj-61",
																					"numinlets" : 1,
																					"fontname" : "Arial",
																					"numoutlets" : 0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+~ 1",
																					"patching_rect" : [ 165.0, 728.0, 35.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-62",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "-~ 0.5",
																					"patching_rect" : [ 70.0, 549.0, 44.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-63",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+~",
																					"patching_rect" : [ 137.0, 784.0, 27.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-64",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~",
																					"patching_rect" : [ 50.0, 646.0, 27.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-65",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "cos~",
																					"patching_rect" : [ 50.0, 689.0, 32.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-66",
																					"numinlets" : 1,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "p samphold~",
																					"patching_rect" : [ 185.0, 615.0, 65.0, 17.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 9.0,
																					"id" : "obj-67",
																					"numinlets" : 3,
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"patcher" : 																					{
																						"fileversion" : 1,
																						"rect" : [ 0.0, 44.0, 600.0, 426.0 ],
																						"bglocked" : 0,
																						"defrect" : [ 0.0, 44.0, 600.0, 426.0 ],
																						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
																						"openinpresentation" : 0,
																						"default_fontsize" : 12.0,
																						"default_fontface" : 0,
																						"default_fontname" : "Arial",
																						"gridonopen" : 0,
																						"gridsize" : [ 15.0, 15.0 ],
																						"gridsnaponopen" : 0,
																						"toolbarvisible" : 1,
																						"boxanimatetime" : 200,
																						"imprint" : 0,
																						"metadata" : [  ],
																						"boxes" : [ 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 144.0, 38.0, 15.0, 15.0 ],
																									"outlettype" : [ "" ],
																									"id" : "obj-1",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "loadbang",
																									"patching_rect" : [ 188.0, 50.0, 48.0, 17.0 ],
																									"outlettype" : [ "bang" ],
																									"fontsize" : 9.0,
																									"id" : "obj-2",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "*~ -1.",
																									"patching_rect" : [ 89.0, 88.0, 40.0, 17.0 ],
																									"outlettype" : [ "signal" ],
																									"fontsize" : 9.0,
																									"id" : "obj-3",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "message",
																									"text" : "0.",
																									"patching_rect" : [ 185.0, 95.0, 17.0, 15.0 ],
																									"outlettype" : [ "" ],
																									"fontsize" : 9.0,
																									"id" : "obj-4",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "delta~",
																									"patching_rect" : [ 88.0, 58.0, 38.0, 17.0 ],
																									"outlettype" : [ "signal" ],
																									"fontsize" : 9.0,
																									"id" : "obj-5",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "sah~",
																									"patching_rect" : [ 50.0, 142.0, 31.0, 17.0 ],
																									"outlettype" : [ "signal" ],
																									"fontsize" : 9.0,
																									"id" : "obj-6",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 88.0, 38.0, 15.0, 15.0 ],
																									"outlettype" : [ "signal" ],
																									"id" : "obj-7",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 50.0, 122.0, 15.0, 15.0 ],
																									"outlettype" : [ "signal" ],
																									"id" : "obj-8",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "outlet",
																									"patching_rect" : [ 50.0, 164.0, 15.0, 15.0 ],
																									"id" : "obj-9",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"comment" : ""
																								}

																							}
 ],
																						"lines" : [ 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-8", 0 ],
																									"destination" : [ "obj-6", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-7", 0 ],
																									"destination" : [ "obj-5", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-6", 0 ],
																									"destination" : [ "obj-9", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-5", 0 ],
																									"destination" : [ "obj-3", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-4", 0 ],
																									"destination" : [ "obj-6", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-3", 0 ],
																									"destination" : [ "obj-6", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-2", 0 ],
																									"destination" : [ "obj-4", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-1", 0 ],
																									"destination" : [ "obj-6", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
 ]
																					}
,
																					"saved_object_attributes" : 																					{
																						"fontface" : 0,
																						"fontsize" : 12.0,
																						"default_fontface" : 0,
																						"globalpatchername" : "",
																						"default_fontname" : "Arial",
																						"fontname" : "Arial",
																						"default_fontsize" : 12.0
																					}

																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "p samphold~",
																					"patching_rect" : [ 114.0, 601.0, 65.0, 17.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 9.0,
																					"id" : "obj-68",
																					"numinlets" : 3,
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"patcher" : 																					{
																						"fileversion" : 1,
																						"rect" : [ 0.0, 44.0, 600.0, 426.0 ],
																						"bglocked" : 0,
																						"defrect" : [ 0.0, 44.0, 600.0, 426.0 ],
																						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
																						"openinpresentation" : 0,
																						"default_fontsize" : 12.0,
																						"default_fontface" : 0,
																						"default_fontname" : "Arial",
																						"gridonopen" : 0,
																						"gridsize" : [ 15.0, 15.0 ],
																						"gridsnaponopen" : 0,
																						"toolbarvisible" : 1,
																						"boxanimatetime" : 200,
																						"imprint" : 0,
																						"metadata" : [  ],
																						"boxes" : [ 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 144.0, 38.0, 15.0, 15.0 ],
																									"outlettype" : [ "" ],
																									"id" : "obj-1",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "loadbang",
																									"patching_rect" : [ 188.0, 50.0, 48.0, 17.0 ],
																									"outlettype" : [ "bang" ],
																									"fontsize" : 9.0,
																									"id" : "obj-2",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "*~ -1.",
																									"patching_rect" : [ 89.0, 88.0, 40.0, 17.0 ],
																									"outlettype" : [ "signal" ],
																									"fontsize" : 9.0,
																									"id" : "obj-3",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "message",
																									"text" : "0.",
																									"patching_rect" : [ 185.0, 95.0, 17.0, 15.0 ],
																									"outlettype" : [ "" ],
																									"fontsize" : 9.0,
																									"id" : "obj-4",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "delta~",
																									"patching_rect" : [ 88.0, 58.0, 38.0, 17.0 ],
																									"outlettype" : [ "signal" ],
																									"fontsize" : 9.0,
																									"id" : "obj-5",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "sah~",
																									"patching_rect" : [ 50.0, 142.0, 31.0, 17.0 ],
																									"outlettype" : [ "signal" ],
																									"fontsize" : 9.0,
																									"id" : "obj-6",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 88.0, 38.0, 15.0, 15.0 ],
																									"outlettype" : [ "signal" ],
																									"id" : "obj-7",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 50.0, 122.0, 15.0, 15.0 ],
																									"outlettype" : [ "signal" ],
																									"id" : "obj-8",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "outlet",
																									"patching_rect" : [ 50.0, 164.0, 15.0, 15.0 ],
																									"id" : "obj-9",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"comment" : ""
																								}

																							}
 ],
																						"lines" : [ 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-8", 0 ],
																									"destination" : [ "obj-6", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-7", 0 ],
																									"destination" : [ "obj-5", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-6", 0 ],
																									"destination" : [ "obj-9", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-5", 0 ],
																									"destination" : [ "obj-3", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-4", 0 ],
																									"destination" : [ "obj-6", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-3", 0 ],
																									"destination" : [ "obj-6", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-2", 0 ],
																									"destination" : [ "obj-4", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-1", 0 ],
																									"destination" : [ "obj-6", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
 ]
																					}
,
																					"saved_object_attributes" : 																					{
																						"fontface" : 0,
																						"fontsize" : 12.0,
																						"default_fontface" : 0,
																						"globalpatchername" : "",
																						"default_fontname" : "Arial",
																						"fontname" : "Arial",
																						"default_fontsize" : 12.0
																					}

																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~",
																					"patching_rect" : [ 50.0, 737.0, 27.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-69",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "clip~ -0.5 0.5",
																					"patching_rect" : [ 165.0, 667.0, 83.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-70",
																					"numinlets" : 3,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~",
																					"patching_rect" : [ 336.0, 663.0, 27.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-71",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "cos~",
																					"patching_rect" : [ 336.0, 726.0, 32.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-72",
																					"numinlets" : 1,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+~ 1",
																					"patching_rect" : [ 336.0, 747.0, 35.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-73",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "-~ 0.5",
																					"patching_rect" : [ 282.0, 550.0, 44.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-74",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~",
																					"patching_rect" : [ 283.0, 663.0, 27.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-75",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "cos~",
																					"patching_rect" : [ 283.0, 705.0, 32.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-76",
																					"numinlets" : 1,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "p samphold~",
																					"patching_rect" : [ 415.0, 618.0, 65.0, 17.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 9.0,
																					"id" : "obj-77",
																					"numinlets" : 3,
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"patcher" : 																					{
																						"fileversion" : 1,
																						"rect" : [ 0.0, 44.0, 600.0, 426.0 ],
																						"bglocked" : 0,
																						"defrect" : [ 0.0, 44.0, 600.0, 426.0 ],
																						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
																						"openinpresentation" : 0,
																						"default_fontsize" : 12.0,
																						"default_fontface" : 0,
																						"default_fontname" : "Arial",
																						"gridonopen" : 0,
																						"gridsize" : [ 15.0, 15.0 ],
																						"gridsnaponopen" : 0,
																						"toolbarvisible" : 1,
																						"boxanimatetime" : 200,
																						"imprint" : 0,
																						"metadata" : [  ],
																						"boxes" : [ 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 144.0, 38.0, 15.0, 15.0 ],
																									"outlettype" : [ "" ],
																									"id" : "obj-1",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "loadbang",
																									"patching_rect" : [ 188.0, 50.0, 48.0, 17.0 ],
																									"outlettype" : [ "bang" ],
																									"fontsize" : 9.0,
																									"id" : "obj-2",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "*~ -1.",
																									"patching_rect" : [ 89.0, 88.0, 40.0, 17.0 ],
																									"outlettype" : [ "signal" ],
																									"fontsize" : 9.0,
																									"id" : "obj-3",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "message",
																									"text" : "0.",
																									"patching_rect" : [ 185.0, 95.0, 17.0, 15.0 ],
																									"outlettype" : [ "" ],
																									"fontsize" : 9.0,
																									"id" : "obj-4",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "delta~",
																									"patching_rect" : [ 88.0, 58.0, 38.0, 17.0 ],
																									"outlettype" : [ "signal" ],
																									"fontsize" : 9.0,
																									"id" : "obj-5",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "sah~",
																									"patching_rect" : [ 50.0, 142.0, 31.0, 17.0 ],
																									"outlettype" : [ "signal" ],
																									"fontsize" : 9.0,
																									"id" : "obj-6",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 88.0, 38.0, 15.0, 15.0 ],
																									"outlettype" : [ "signal" ],
																									"id" : "obj-7",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 50.0, 122.0, 15.0, 15.0 ],
																									"outlettype" : [ "signal" ],
																									"id" : "obj-8",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "outlet",
																									"patching_rect" : [ 50.0, 164.0, 15.0, 15.0 ],
																									"id" : "obj-9",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"comment" : ""
																								}

																							}
 ],
																						"lines" : [ 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-8", 0 ],
																									"destination" : [ "obj-6", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-7", 0 ],
																									"destination" : [ "obj-5", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-6", 0 ],
																									"destination" : [ "obj-9", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-5", 0 ],
																									"destination" : [ "obj-3", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-4", 0 ],
																									"destination" : [ "obj-6", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-3", 0 ],
																									"destination" : [ "obj-6", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-2", 0 ],
																									"destination" : [ "obj-4", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-1", 0 ],
																									"destination" : [ "obj-6", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
 ]
																					}
,
																					"saved_object_attributes" : 																					{
																						"fontface" : 0,
																						"fontsize" : 12.0,
																						"default_fontface" : 0,
																						"globalpatchername" : "",
																						"default_fontname" : "Arial",
																						"fontname" : "Arial",
																						"default_fontsize" : 12.0
																					}

																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "p samphold~",
																					"patching_rect" : [ 344.0, 618.0, 65.0, 17.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 9.0,
																					"id" : "obj-78",
																					"numinlets" : 3,
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"patcher" : 																					{
																						"fileversion" : 1,
																						"rect" : [ 0.0, 44.0, 600.0, 426.0 ],
																						"bglocked" : 0,
																						"defrect" : [ 0.0, 44.0, 600.0, 426.0 ],
																						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
																						"openinpresentation" : 0,
																						"default_fontsize" : 12.0,
																						"default_fontface" : 0,
																						"default_fontname" : "Arial",
																						"gridonopen" : 0,
																						"gridsize" : [ 15.0, 15.0 ],
																						"gridsnaponopen" : 0,
																						"toolbarvisible" : 1,
																						"boxanimatetime" : 200,
																						"imprint" : 0,
																						"metadata" : [  ],
																						"boxes" : [ 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 144.0, 38.0, 15.0, 15.0 ],
																									"outlettype" : [ "" ],
																									"id" : "obj-1",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "loadbang",
																									"patching_rect" : [ 188.0, 50.0, 48.0, 17.0 ],
																									"outlettype" : [ "bang" ],
																									"fontsize" : 9.0,
																									"id" : "obj-2",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "*~ -1.",
																									"patching_rect" : [ 89.0, 88.0, 40.0, 17.0 ],
																									"outlettype" : [ "signal" ],
																									"fontsize" : 9.0,
																									"id" : "obj-3",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "message",
																									"text" : "0.",
																									"patching_rect" : [ 185.0, 95.0, 17.0, 15.0 ],
																									"outlettype" : [ "" ],
																									"fontsize" : 9.0,
																									"id" : "obj-4",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "delta~",
																									"patching_rect" : [ 88.0, 58.0, 38.0, 17.0 ],
																									"outlettype" : [ "signal" ],
																									"fontsize" : 9.0,
																									"id" : "obj-5",
																									"numinlets" : 1,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "newobj",
																									"text" : "sah~",
																									"patching_rect" : [ 50.0, 142.0, 31.0, 17.0 ],
																									"outlettype" : [ "signal" ],
																									"fontsize" : 9.0,
																									"id" : "obj-6",
																									"numinlets" : 2,
																									"fontname" : "Arial",
																									"numoutlets" : 1
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 88.0, 38.0, 15.0, 15.0 ],
																									"outlettype" : [ "signal" ],
																									"id" : "obj-7",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "inlet",
																									"patching_rect" : [ 50.0, 122.0, 15.0, 15.0 ],
																									"outlettype" : [ "signal" ],
																									"id" : "obj-8",
																									"numinlets" : 0,
																									"numoutlets" : 1,
																									"comment" : ""
																								}

																							}
, 																							{
																								"box" : 																								{
																									"maxclass" : "outlet",
																									"patching_rect" : [ 50.0, 164.0, 15.0, 15.0 ],
																									"id" : "obj-9",
																									"numinlets" : 1,
																									"numoutlets" : 0,
																									"comment" : ""
																								}

																							}
 ],
																						"lines" : [ 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-8", 0 ],
																									"destination" : [ "obj-6", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-7", 0 ],
																									"destination" : [ "obj-5", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-6", 0 ],
																									"destination" : [ "obj-9", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-5", 0 ],
																									"destination" : [ "obj-3", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-4", 0 ],
																									"destination" : [ "obj-6", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-3", 0 ],
																									"destination" : [ "obj-6", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-2", 0 ],
																									"destination" : [ "obj-4", 0 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
, 																							{
																								"patchline" : 																								{
																									"source" : [ "obj-1", 0 ],
																									"destination" : [ "obj-6", 1 ],
																									"hidden" : 0,
																									"midpoints" : [  ]
																								}

																							}
 ]
																					}
,
																					"saved_object_attributes" : 																					{
																						"fontface" : 0,
																						"fontsize" : 12.0,
																						"default_fontface" : 0,
																						"globalpatchername" : "",
																						"default_fontname" : "Arial",
																						"fontname" : "Arial",
																						"default_fontsize" : 12.0
																					}

																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~",
																					"patching_rect" : [ 283.0, 726.0, 27.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-79",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "clip~ -0.5 0.5",
																					"patching_rect" : [ 336.0, 705.0, 83.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-80",
																					"numinlets" : 3,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "maximum~ 1",
																					"patching_rect" : [ 334.0, 461.0, 75.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-81",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "line~",
																					"patching_rect" : [ 94.0, 208.0, 36.0, 18.0 ],
																					"outlettype" : [ "signal", "bang" ],
																					"fontsize" : 10.0,
																					"id" : "obj-82",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+~",
																					"patching_rect" : [ 198.0, 332.0, 27.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-83",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~",
																					"patching_rect" : [ 159.0, 354.0, 27.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-84",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~",
																					"patching_rect" : [ 198.0, 297.0, 27.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-85",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "/~",
																					"patching_rect" : [ 223.0, 392.0, 27.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-86",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t 0",
																					"patching_rect" : [ 715.0, 302.0, 22.0, 18.0 ],
																					"outlettype" : [ "int" ],
																					"fontsize" : 10.0,
																					"id" : "obj-87",
																					"numinlets" : 1,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "line~",
																					"patching_rect" : [ 567.0, 241.0, 36.0, 18.0 ],
																					"outlettype" : [ "signal", "bang" ],
																					"fontsize" : 10.0,
																					"id" : "obj-88",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "line~",
																					"patching_rect" : [ 649.0, 468.0, 36.0, 18.0 ],
																					"outlettype" : [ "signal", "bang" ],
																					"fontsize" : 10.0,
																					"id" : "obj-89",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "route 0.",
																					"patching_rect" : [ 715.0, 273.0, 49.0, 18.0 ],
																					"outlettype" : [ "", "" ],
																					"fontsize" : 10.0,
																					"id" : "obj-90",
																					"numinlets" : 1,
																					"fontname" : "Arial",
																					"numoutlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t b f",
																					"patching_rect" : [ 671.0, 273.0, 30.0, 18.0 ],
																					"outlettype" : [ "bang", "float" ],
																					"fontsize" : 10.0,
																					"id" : "obj-91",
																					"numinlets" : 1,
																					"fontname" : "Arial",
																					"numoutlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "pack 0. 0",
																					"patching_rect" : [ 648.0, 423.0, 55.0, 18.0 ],
																					"outlettype" : [ "" ],
																					"fontsize" : 10.0,
																					"id" : "obj-92",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "route 0 1",
																					"patching_rect" : [ 604.0, 383.0, 56.0, 18.0 ],
																					"outlettype" : [ "", "", "" ],
																					"fontsize" : 10.0,
																					"id" : "obj-93",
																					"numinlets" : 1,
																					"fontname" : "Arial",
																					"numoutlets" : 3
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "pack 0 0.",
																					"patching_rect" : [ 604.0, 360.0, 55.0, 18.0 ],
																					"outlettype" : [ "" ],
																					"fontsize" : 10.0,
																					"id" : "obj-94",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "> 0.",
																					"patching_rect" : [ 604.0, 336.0, 27.0, 18.0 ],
																					"outlettype" : [ "int" ],
																					"fontsize" : 10.0,
																					"id" : "obj-95",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "snapshot~",
																					"patching_rect" : [ 604.0, 314.0, 59.0, 18.0 ],
																					"outlettype" : [ "float" ],
																					"fontsize" : 10.0,
																					"id" : "obj-96",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "-1000099968.",
																					"patching_rect" : [ 541.0, 575.0, 90.0, 16.0 ],
																					"outlettype" : [ "" ],
																					"fontsize" : 10.0,
																					"id" : "obj-97",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "line 0 30",
																					"patching_rect" : [ 730.0, 422.0, 56.0, 18.0 ],
																					"outlettype" : [ "", "", "" ],
																					"fontsize" : 10.0,
																					"id" : "obj-98",
																					"numinlets" : 3,
																					"fontname" : "Arial",
																					"numoutlets" : 3
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~",
																					"patching_rect" : [ 534.0, 532.0, 27.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-99",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "hack to allow glissandi which aren't implemented in the controller window.",
																					"patching_rect" : [ 244.0, 100.0, 374.0, 18.0 ],
																					"fontsize" : 10.0,
																					"id" : "obj-100",
																					"numinlets" : 1,
																					"fontname" : "Arial",
																					"numoutlets" : 0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "linedrive 154 0.02 1.06 30",
																					"patching_rect" : [ 567.0, 218.0, 150.0, 18.0 ],
																					"outlettype" : [ "" ],
																					"fontsize" : 10.0,
																					"id" : "obj-101",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "line~",
																					"patching_rect" : [ 767.0, 561.0, 36.0, 18.0 ],
																					"outlettype" : [ "signal", "bang" ],
																					"fontsize" : 10.0,
																					"id" : "obj-102",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "> 0.",
																					"patching_rect" : [ 853.0, 564.0, 27.0, 18.0 ],
																					"outlettype" : [ "int" ],
																					"fontsize" : 10.0,
																					"id" : "obj-103",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "pack 0 10",
																					"patching_rect" : [ 853.0, 597.0, 59.0, 18.0 ],
																					"outlettype" : [ "" ],
																					"fontsize" : 10.0,
																					"id" : "obj-104",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "line~",
																					"patching_rect" : [ 853.0, 621.0, 36.0, 18.0 ],
																					"outlettype" : [ "signal", "bang" ],
																					"fontsize" : 10.0,
																					"id" : "obj-105",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "-~",
																					"patching_rect" : [ 613.0, 711.0, 27.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-106",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~",
																					"patching_rect" : [ 633.0, 739.0, 27.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-107",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+~",
																					"patching_rect" : [ 585.0, 813.0, 27.0, 18.0 ],
																					"outlettype" : [ "signal" ],
																					"fontsize" : 10.0,
																					"id" : "obj-108",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t 0.",
																					"patching_rect" : [ 739.0, 510.0, 25.0, 18.0 ],
																					"outlettype" : [ "float" ],
																					"fontsize" : 10.0,
																					"id" : "obj-109",
																					"numinlets" : 1,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "route 0.",
																					"patching_rect" : [ 739.0, 486.0, 49.0, 18.0 ],
																					"outlettype" : [ "", "" ],
																					"fontsize" : 10.0,
																					"id" : "obj-110",
																					"numinlets" : 1,
																					"fontname" : "Arial",
																					"numoutlets" : 2
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "mtof",
																					"patching_rect" : [ 917.0, 465.0, 32.0, 18.0 ],
																					"outlettype" : [ "" ],
																					"fontsize" : 10.0,
																					"id" : "obj-111",
																					"numinlets" : 1,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 60.",
																					"patching_rect" : [ 917.0, 434.0, 37.0, 18.0 ],
																					"outlettype" : [ "float" ],
																					"fontsize" : 10.0,
																					"id" : "obj-112",
																					"numinlets" : 2,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t f",
																					"patching_rect" : [ 804.0, 456.0, 19.0, 18.0 ],
																					"outlettype" : [ "float" ],
																					"fontsize" : 10.0,
																					"id" : "obj-113",
																					"numinlets" : 1,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "nothing osc2~ vib1.snd",
																					"patching_rect" : [ 66.0, 259.0, 123.0, 18.0 ],
																					"outlettype" : [ "" ],
																					"fontsize" : 10.0,
																					"id" : "obj-114",
																					"numinlets" : 1,
																					"fontname" : "Arial",
																					"numoutlets" : 1
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"patching_rect" : [ 220.0, 40.0, 25.0, 25.0 ],
																					"outlettype" : [ "" ],
																					"id" : "obj-115",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"patching_rect" : [ 585.0, 907.161499, 25.0, 25.0 ],
																					"id" : "obj-116",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"patching_rect" : [ 660.0, 907.161499, 25.0, 25.0 ],
																					"id" : "obj-117",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-99", 0 ],
																					"destination" : [ "obj-37", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-99", 0 ],
																					"destination" : [ "obj-108", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-99", 0 ],
																					"destination" : [ "obj-106", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-98", 0 ],
																					"destination" : [ "obj-92", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-97", 0 ],
																					"destination" : [ "obj-78", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-97", 0 ],
																					"destination" : [ "obj-77", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-97", 0 ],
																					"destination" : [ "obj-68", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-97", 0 ],
																					"destination" : [ "obj-67", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-96", 0 ],
																					"destination" : [ "obj-95", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-95", 0 ],
																					"destination" : [ "obj-94", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-94", 0 ],
																					"destination" : [ "obj-93", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-93", 1 ],
																					"destination" : [ "obj-92", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-93", 0 ],
																					"destination" : [ "obj-89", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-93", 0 ],
																					"destination" : [ "obj-42", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-92", 0 ],
																					"destination" : [ "obj-89", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-91", 0 ],
																					"destination" : [ "obj-96", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-91", 1 ],
																					"destination" : [ "obj-90", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-90", 1 ],
																					"destination" : [ "obj-94", 1 ],
																					"hidden" : 0,
																					"midpoints" : [ 774.0, 316.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-90", 0 ],
																					"destination" : [ "obj-87", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-89", 0 ],
																					"destination" : [ "obj-55", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-88", 0 ],
																					"destination" : [ "obj-99", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-88", 0 ],
																					"destination" : [ "obj-96", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-87", 0 ],
																					"destination" : [ "obj-94", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-86", 0 ],
																					"destination" : [ "obj-56", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-86", 0 ],
																					"destination" : [ "obj-55", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-85", 0 ],
																					"destination" : [ "obj-83", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-84", 0 ],
																					"destination" : [ "obj-86", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-84", 0 ],
																					"destination" : [ "obj-35", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-83", 0 ],
																					"destination" : [ "obj-84", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-82", 0 ],
																					"destination" : [ "obj-84", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-81", 0 ],
																					"destination" : [ "obj-77", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-81", 0 ],
																					"destination" : [ "obj-67", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-80", 0 ],
																					"destination" : [ "obj-72", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-79", 0 ],
																					"destination" : [ "obj-64", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-78", 0 ],
																					"destination" : [ "obj-75", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-77", 0 ],
																					"destination" : [ "obj-71", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-76", 0 ],
																					"destination" : [ "obj-79", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-75", 0 ],
																					"destination" : [ "obj-76", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-74", 0 ],
																					"destination" : [ "obj-75", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-74", 0 ],
																					"destination" : [ "obj-71", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-73", 0 ],
																					"destination" : [ "obj-79", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-72", 0 ],
																					"destination" : [ "obj-73", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-71", 0 ],
																					"destination" : [ "obj-80", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-70", 0 ],
																					"destination" : [ "obj-54", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-69", 0 ],
																					"destination" : [ "obj-64", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-68", 0 ],
																					"destination" : [ "obj-65", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-67", 0 ],
																					"destination" : [ "obj-53", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-66", 0 ],
																					"destination" : [ "obj-69", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-65", 0 ],
																					"destination" : [ "obj-66", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-64", 0 ],
																					"destination" : [ "obj-99", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 390.0, 847.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-63", 0 ],
																					"destination" : [ "obj-65", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-63", 0 ],
																					"destination" : [ "obj-53", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-62", 0 ],
																					"destination" : [ "obj-69", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-60", 0 ],
																					"destination" : [ "obj-78", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-60", 0 ],
																					"destination" : [ "obj-77", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-60", 0 ],
																					"destination" : [ "obj-74", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-59", 0 ],
																					"destination" : [ "obj-60", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-58", 0 ],
																					"destination" : [ "obj-68", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-58", 0 ],
																					"destination" : [ "obj-67", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-58", 0 ],
																					"destination" : [ "obj-63", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-58", 0 ],
																					"destination" : [ "obj-59", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-56", 0 ],
																					"destination" : [ "obj-81", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-55", 0 ],
																					"destination" : [ "obj-78", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-55", 0 ],
																					"destination" : [ "obj-68", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-54", 0 ],
																					"destination" : [ "obj-62", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-53", 0 ],
																					"destination" : [ "obj-70", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-52", 7 ],
																					"destination" : [ "obj-98", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 814.0, 183.0, 887.0, 296.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-52", 5 ],
																					"destination" : [ "obj-91", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 739.0, 203.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-52", 3 ],
																					"destination" : [ "obj-51", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-52", 2 ],
																					"destination" : [ "obj-50", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-52", 4 ],
																					"destination" : [ "obj-43", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-52", 0 ],
																					"destination" : [ "obj-40", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-52", 1 ],
																					"destination" : [ "obj-16", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-52", 6 ],
																					"destination" : [ "obj-113", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 789.0, 193.0, 925.0, 390.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-51", 0 ],
																					"destination" : [ "obj-36", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-50", 0 ],
																					"destination" : [ "obj-85", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-45", 0 ],
																					"destination" : [ "obj-86", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-45", 0 ],
																					"destination" : [ "obj-83", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-44", 0 ],
																					"destination" : [ "obj-117", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-44", 0 ],
																					"destination" : [ "obj-106", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-43", 0 ],
																					"destination" : [ "obj-88", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-41", 0 ],
																					"destination" : [ "obj-85", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-40", 0 ],
																					"destination" : [ "obj-82", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-37", 0 ],
																					"destination" : [ "obj-44", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-36", 0 ],
																					"destination" : [ "obj-56", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-35", 0 ],
																					"destination" : [ "obj-58", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-16", 0 ],
																					"destination" : [ "obj-41", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-115", 0 ],
																					"destination" : [ "obj-52", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-113", 0 ],
																					"destination" : [ "obj-39", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-113", 0 ],
																					"destination" : [ "obj-110", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-113", 0 ],
																					"destination" : [ "obj-103", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-112", 0 ],
																					"destination" : [ "obj-111", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-111", 0 ],
																					"destination" : [ "obj-102", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-110", 1 ],
																					"destination" : [ "obj-112", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-110", 0 ],
																					"destination" : [ "obj-109", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-109", 0 ],
																					"destination" : [ "obj-102", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-108", 0 ],
																					"destination" : [ "obj-116", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-107", 0 ],
																					"destination" : [ "obj-108", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-106", 0 ],
																					"destination" : [ "obj-107", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-105", 0 ],
																					"destination" : [ "obj-107", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-104", 0 ],
																					"destination" : [ "obj-105", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-103", 0 ],
																					"destination" : [ "obj-104", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-102", 0 ],
																					"destination" : [ "obj-44", 2 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-101", 0 ],
																					"destination" : [ "obj-88", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontface" : 0,
																		"fontsize" : 12.0,
																		"default_fontface" : 0,
																		"globalpatchername" : "",
																		"default_fontname" : "Arial",
																		"fontname" : "Arial",
																		"default_fontsize" : 12.0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "read :thisthis",
																	"patching_rect" : [ 650.0, 198.0, 79.0, 18.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 12.0,
																	"id" : "obj-17",
																	"numinlets" : 2,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "s synth-params",
																	"patching_rect" : [ 82.0, 420.0, 93.0, 20.0 ],
																	"fontsize" : 12.0,
																	"id" : "obj-48",
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pak 1. 1. 1. 1. 1.1 .",
																	"patching_rect" : [ 82.0, 380.0, 110.0, 20.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 12.0,
																	"id" : "obj-47",
																	"numinlets" : 6,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "preset",
																	"patching_rect" : [ 504.0, 224.0, 120.0, 18.0 ],
																	"outlettype" : [ "preset", "int", "preset", "int" ],
																	"margin" : 4,
																	"spacing" : 2,
																	"id" : "obj-3",
																	"numinlets" : 1,
																	"bubblesize" : 8,
																	"numoutlets" : 4,
																	"preset_data" : [ 																		{
																			"number" : 1,
																			"data" : [ 5, "obj-22", "flonum", "float", 0.0, 5, "obj-23", "flonum", "float", 0.0, 5, "obj-24", "flonum", "float", 0.0, 5, "obj-18", "flonum", "float", 1.8, 5, "obj-19", "flonum", "float", 60.0, 5, "obj-30", "flonum", "float", 0.5, 5, "obj-32", "number", "int", 60 ]
																		}
, 																		{
																			"number" : 2,
																			"data" : [ 5, "obj-22", "flonum", "float", 0.0, 5, "obj-23", "flonum", "float", 25.0, 5, "obj-24", "flonum", "float", 40.0, 5, "obj-18", "flonum", "float", 0.0, 5, "obj-19", "flonum", "float", 81.0, 5, "obj-30", "flonum", "float", 0.5, 5, "obj-32", "number", "int", 60 ]
																		}
, 																		{
																			"number" : 3,
																			"data" : [ 5, "obj-22", "flonum", "float", 0.0, 5, "obj-23", "flonum", "float", 5.0, 5, "obj-24", "flonum", "float", 7.0, 5, "obj-18", "flonum", "float", 15.0, 5, "obj-19", "flonum", "float", 26.0, 5, "obj-30", "flonum", "float", 0.5, 5, "obj-32", "number", "int", 60 ]
																		}
, 																		{
																			"number" : 4,
																			"data" : [ 5, "obj-22", "flonum", "float", 0.0, 5, "obj-23", "flonum", "float", 66.0, 5, "obj-24", "flonum", "float", 55.0, 5, "obj-18", "flonum", "float", 44.0, 5, "obj-19", "flonum", "float", 33.0, 5, "obj-30", "flonum", "float", 0.5, 5, "obj-32", "number", "int", 11 ]
																		}
, 																		{
																			"number" : 5,
																			"data" : [ 5, "obj-22", "flonum", "float", 0.0, 5, "obj-23", "flonum", "float", 43.0, 5, "obj-24", "flonum", "float", 170.0, 5, "obj-18", "flonum", "float", 3.0, 5, "obj-19", "flonum", "float", 493.0, 5, "obj-30", "flonum", "float", 0.5, 5, "obj-32", "number", "int", 41 ]
																		}
, 																		{
																			"number" : 6,
																			"data" : [ 5, "obj-22", "flonum", "float", 0.0, 5, "obj-23", "flonum", "float", 0.0, 5, "obj-24", "flonum", "float", 0.0, 5, "obj-18", "flonum", "float", 2.4, 5, "obj-19", "flonum", "float", 68.0, 5, "obj-30", "flonum", "float", 0.5, 5, "obj-32", "number", "int", 13 ]
																		}
, 																		{
																			"number" : 7,
																			"data" : [ 5, "obj-22", "flonum", "float", 0.0, 5, "obj-23", "flonum", "float", 16.0, 5, "obj-24", "flonum", "float", 6.0, 5, "obj-18", "flonum", "float", 47.900002, 5, "obj-19", "flonum", "float", 3.0, 5, "obj-30", "flonum", "float", 0.16, 5, "obj-32", "number", "int", 42 ]
																		}
, 																		{
																			"number" : 8,
																			"data" : [ 5, "obj-22", "flonum", "float", 0.0, 5, "obj-23", "flonum", "float", 16.0, 5, "obj-24", "flonum", "float", 8.0, 5, "obj-18", "flonum", "float", 91.0, 5, "obj-19", "flonum", "float", 37.0, 5, "obj-30", "flonum", "float", 0.16, 5, "obj-32", "number", "int", 42 ]
																		}
 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "scope~",
																	"patching_rect" : [ 500.0, 499.0, 130.0, 130.0 ],
																	"rounded" : 0,
																	"id" : "obj-4",
																	"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number~",
																	"patching_rect" : [ 247.0, 491.0, 180.0, 17.0 ],
																	"outlettype" : [ "signal", "float" ],
																	"fontsize" : 9.0,
																	"id" : "obj-5",
																	"mode" : 2,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"interval" : 250.0,
																	"sig" : 0.0,
																	"numinlets" : 2,
																	"fontname" : "Arial",
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "bitsafe~",
																	"patching_rect" : [ 168.0, 522.0, 50.0, 17.0 ],
																	"outlettype" : [ "signal" ],
																	"fontsize" : 9.0,
																	"id" : "obj-7",
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "0.5",
																	"patching_rect" : [ 323.0, 313.0, 21.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 9.0,
																	"hidden" : 1,
																	"id" : "obj-12",
																	"numinlets" : 2,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "60",
																	"patching_rect" : [ 391.0, 313.0, 20.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 9.0,
																	"hidden" : 1,
																	"id" : "obj-13",
																	"numinlets" : 2,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "60",
																	"patching_rect" : [ 252.0, 313.0, 20.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 9.0,
																	"hidden" : 1,
																	"id" : "obj-14",
																	"numinlets" : 2,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "loadbang",
																	"patching_rect" : [ 252.0, 271.0, 46.0, 17.0 ],
																	"outlettype" : [ "bang" ],
																	"fontsize" : 9.0,
																	"id" : "obj-15",
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"patching_rect" : [ 449.0, 332.0, 52.0, 17.0 ],
																	"outlettype" : [ "float", "bang" ],
																	"fontsize" : 9.0,
																	"triscale" : 0.9,
																	"id" : "obj-18",
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"minimum" : 0.0,
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"patching_rect" : [ 391.0, 332.0, 52.0, 17.0 ],
																	"outlettype" : [ "float", "bang" ],
																	"fontsize" : 9.0,
																	"triscale" : 0.9,
																	"id" : "obj-19",
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"minimum" : 0.0,
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "mtof 1.",
																	"patching_rect" : [ 449.0, 356.0, 38.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 9.0,
																	"id" : "obj-20",
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "mtof 1.",
																	"patching_rect" : [ 391.0, 355.0, 38.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 9.0,
																	"id" : "obj-21",
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"patching_rect" : [ 637.0, 332.0, 35.0, 17.0 ],
																	"outlettype" : [ "float", "bang" ],
																	"fontsize" : 9.0,
																	"triscale" : 0.9,
																	"id" : "obj-22",
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"patching_rect" : [ 574.0, 332.0, 52.0, 17.0 ],
																	"outlettype" : [ "float", "bang" ],
																	"fontsize" : 9.0,
																	"triscale" : 0.9,
																	"id" : "obj-23",
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"minimum" : 0.0,
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"patching_rect" : [ 511.0, 332.0, 52.0, 17.0 ],
																	"outlettype" : [ "float", "bang" ],
																	"fontsize" : 9.0,
																	"triscale" : 0.9,
																	"id" : "obj-24",
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"minimum" : 0.0,
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "shift $1 100",
																	"patching_rect" : [ 637.0, 380.0, 65.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 9.0,
																	"id" : "obj-25",
																	"numinlets" : 2,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "vfr $1 100",
																	"patching_rect" : [ 574.0, 380.0, 59.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 9.0,
																	"id" : "obj-26",
																	"numinlets" : 2,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "vib $1 100",
																	"patching_rect" : [ 511.0, 380.0, 58.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 9.0,
																	"id" : "obj-27",
																	"numinlets" : 2,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "bw $1 100",
																	"patching_rect" : [ 449.0, 380.0, 55.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 9.0,
																	"id" : "obj-28",
																	"numinlets" : 2,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "cf $1 100",
																	"patching_rect" : [ 391.0, 380.0, 53.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 9.0,
																	"id" : "obj-29",
																	"numinlets" : 2,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"patching_rect" : [ 323.0, 332.0, 52.0, 17.0 ],
																	"outlettype" : [ "float", "bang" ],
																	"fontsize" : 9.0,
																	"triscale" : 0.9,
																	"id" : "obj-30",
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"minimum" : 0.0,
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "amp $1 100",
																	"patching_rect" : [ 323.0, 380.0, 62.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 9.0,
																	"id" : "obj-31",
																	"numinlets" : 2,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"patching_rect" : [ 252.0, 332.0, 35.0, 17.0 ],
																	"outlettype" : [ "int", "bang" ],
																	"fontsize" : 9.0,
																	"triscale" : 0.9,
																	"id" : "obj-32",
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"minimum" : 0,
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "mtof 1.",
																	"patching_rect" : [ 252.0, 357.0, 38.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 9.0,
																	"id" : "obj-33",
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "freq $1 100",
																	"patching_rect" : [ 252.0, 380.0, 63.0, 15.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 9.0,
																	"id" : "obj-34",
																	"numinlets" : 2,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-120", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-47", 0 ],
																	"destination" : [ "obj-48", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-34", 0 ],
																	"destination" : [ "obj-118", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-47", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-33", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-118", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-47", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-30", 0 ],
																	"destination" : [ "obj-31", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-29", 0 ],
																	"destination" : [ "obj-118", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-28", 0 ],
																	"destination" : [ "obj-118", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-27", 0 ],
																	"destination" : [ "obj-118", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-118", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-25", 0 ],
																	"destination" : [ "obj-118", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-47", 4 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-27", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-47", 5 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-25", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-29", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-28", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-47", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-47", 3 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-32", 0 ],
																	"hidden" : 1,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-19", 0 ],
																	"hidden" : 1,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-122", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-30", 0 ],
																	"hidden" : 1,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-119", 0 ],
																	"destination" : [ "obj-122", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-118", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-118", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-118", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "5. map",
													"patching_rect" : [ 200.5, 181.0, 47.0, 20.0 ],
													"fontsize" : 12.0,
													"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-19",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "4. train",
													"patching_rect" : [ 51.5, 298.0, 47.0, 20.0 ],
													"fontsize" : 12.0,
													"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-18",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "3.  give examples of classes 1, 2, 3, ...",
													"patching_rect" : [ 87.0, 69.0, 214.0, 20.0 ],
													"fontsize" : 12.0,
													"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-7",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "2. train",
													"patching_rect" : [ 174.0, 131.0, 50.0, 20.0 ],
													"fontsize" : 12.0,
													"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-5",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "1. clear",
													"patching_rect" : [ -1.5, 298.0, 50.0, 20.0 ],
													"fontsize" : 12.0,
													"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-4",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "acceleration data from TouchOSC",
													"patching_rect" : [ 322.0, 97.0, 190.0, 20.0 ],
													"fontsize" : 12.0,
													"id" : "obj-3",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.027054 -0.012039 -1.002777",
													"patching_rect" : [ 337.0, 279.5, 200.0, 18.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 12.0,
													"id" : "obj-1",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "map 0.027054 -0.012039 -1.002777",
													"patching_rect" : [ 126.0, 344.0, 211.0, 18.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 12.0,
													"id" : "obj-37",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "clear",
													"patching_rect" : [ 5.0, 325.0, 37.0, 18.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 12.0,
													"id" : "obj-42",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p train-map",
													"patching_rect" : [ 103.0, 292.0, 71.0, 20.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 12.0,
													"id" : "obj-35",
													"numinlets" : 3,
													"fontname" : "Arial",
													"numoutlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 35.0, 74.0, 746.0, 733.0 ],
														"bglocked" : 0,
														"defrect" : [ 35.0, 74.0, 746.0, 733.0 ],
														"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
														"openinpresentation" : 0,
														"default_fontsize" : 12.0,
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"gridonopen" : 0,
														"gridsize" : [ 15.0, 15.0 ],
														"gridsnaponopen" : 0,
														"toolbarvisible" : 1,
														"boxanimatetime" : 200,
														"imprint" : 0,
														"metadata" : [  ],
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl join",
																	"patching_rect" : [ 133.0, 273.0, 41.0, 20.0 ],
																	"outlettype" : [ "", "" ],
																	"fontsize" : 12.0,
																	"id" : "obj-5",
																	"numinlets" : 2,
																	"fontname" : "Arial",
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "r synth-params",
																	"patching_rect" : [ 458.0, 112.0, 91.0, 20.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 12.0,
																	"id" : "obj-48",
																	"numinlets" : 0,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 1",
																	"patching_rect" : [ 50.0, 112.0, 32.5, 20.0 ],
																	"outlettype" : [ "int" ],
																	"fontsize" : 12.0,
																	"id" : "obj-1",
																	"numinlets" : 2,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend map",
																	"patching_rect" : [ 246.0, 348.0, 81.0, 20.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 12.0,
																	"id" : "obj-26",
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "gswitch2",
																	"patching_rect" : [ 226.0, 100.0, 39.0, 32.0 ],
																	"outlettype" : [ "", "" ],
																	"int" : 1,
																	"id" : "obj-24",
																	"numinlets" : 2,
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "add 0.213028 -0.291046 -0.947083 60. 0.5 81. 0. 40.",
																	"linecount" : 9,
																	"patching_rect" : [ 123.0, 507.0, 50.0, 129.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 12.0,
																	"id" : "obj-23",
																	"numinlets" : 2,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b i",
																	"patching_rect" : [ 61.0, 160.0, 32.5, 20.0 ],
																	"outlettype" : [ "bang", "int" ],
																	"fontsize" : 12.0,
																	"id" : "obj-21",
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "prepend add",
																	"patching_rect" : [ 154.0, 409.0, 78.0, 20.0 ],
																	"outlettype" : [ "" ],
																	"fontsize" : 12.0,
																	"id" : "obj-18",
																	"numinlets" : 1,
																	"fontname" : "Arial",
																	"numoutlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl reg",
																	"patching_rect" : [ 117.0, 217.0, 40.0, 20.0 ],
																	"outlettype" : [ "", "" ],
																	"fontsize" : 12.0,
																	"id" : "obj-16",
																	"numinlets" : 2,
																	"fontname" : "Arial",
																	"numoutlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 61.0, 40.0, 25.0, 25.0 ],
																	"outlettype" : [ "bang" ],
																	"id" : "obj-31",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 226.0, 40.0, 25.0, 25.0 ],
																	"outlettype" : [ "int" ],
																	"id" : "obj-32",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 246.0, 40.0, 25.0, 25.0 ],
																	"outlettype" : [ "" ],
																	"id" : "obj-33",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 195.0, 665.0, 25.0, 25.0 ],
																	"id" : "obj-34",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-48", 0 ],
																	"destination" : [ "obj-5", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-33", 0 ],
																	"destination" : [ "obj-24", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-32", 0 ],
																	"destination" : [ "obj-24", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-31", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-26", 0 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 1 ],
																	"destination" : [ "obj-26", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-16", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-34", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-23", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontface" : 0,
														"globalpatchername" : "",
														"default_fontname" : "Arial",
														"fontname" : "Arial",
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"types" : [  ],
													"items" : [ "train", ",", "map" ],
													"patching_rect" : [ 174.0, 161.0, 100.0, 20.0 ],
													"outlettype" : [ "int", "", "" ],
													"fontsize" : 12.0,
													"id" : "obj-25",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route /accxyz",
													"patching_rect" : [ 288.0, 220.0, 81.0, 20.0 ],
													"outlettype" : [ "", "" ],
													"fontsize" : 12.0,
													"id" : "obj-15",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "/accxyz 0.027054 -0.012039 -1.002777",
													"patching_rect" : [ 337.0, 176.0, 228.0, 18.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 12.0,
													"id" : "obj-14",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "udpreceive 8000",
													"patching_rect" : [ 288.0, 138.0, 99.0, 20.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 12.0,
													"id" : "obj-12",
													"numinlets" : 1,
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "train",
													"patching_rect" : [ 51.5, 325.0, 34.0, 18.0 ],
													"outlettype" : [ "" ],
													"fontsize" : 12.0,
													"id" : "obj-6",
													"numinlets" : 2,
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 62.666687, 460.0, 25.0, 25.0 ],
													"id" : "obj-11",
													"numinlets" : 1,
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-20", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-35", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-37", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-35", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print to-ml.mlp",
									"patching_rect" : [ 243.0, 626.0, 87.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-21",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s mlp",
									"patching_rect" : [ 717.0, 726.0, 39.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-80",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s mlp",
									"patching_rect" : [ 716.0, 626.0, 39.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-79",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s mlp",
									"patching_rect" : [ 716.0, 541.0, 39.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-78",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s mlp",
									"patching_rect" : [ 712.0, 458.0, 39.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-77",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"varname" : "toggle[1]",
									"patching_rect" : [ 858.0, 667.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-75",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "randomize_training_order $1",
									"patching_rect" : [ 858.0, 697.0, 164.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-76",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "number[5]",
									"patching_rect" : [ 717.0, 665.0, 50.0, 20.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-73",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "validation_set_size $1",
									"patching_rect" : [ 717.0, 698.0, 129.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-74",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "number[4]",
									"patching_rect" : [ 1071.0, 570.0, 50.0, 20.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-71",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rand_training_iterations $1",
									"patching_rect" : [ 1071.0, 603.0, 153.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-72",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "umenu[2]",
									"types" : [  ],
									"items" : [ "LINEAR", ",", "SIGMOID", ",", "BIPOLAR", "SIGMOID" ],
									"patching_rect" : [ 891.0, 570.0, 102.0, 20.0 ],
									"outlettype" : [ "int", "", "" ],
									"fontsize" : 12.0,
									"id" : "obj-69",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "output_activation_function $1",
									"patching_rect" : [ 891.0, 603.0, 167.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-70",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "umenu[3]",
									"types" : [  ],
									"items" : [ "LINEAR", ",", "SIGMOID", ",", "BIPOLAR", "SIGMOID" ],
									"patching_rect" : [ 716.0, 571.0, 102.0, 20.0 ],
									"outlettype" : [ "int", "", "" ],
									"fontsize" : 12.0,
									"id" : "obj-67",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "hidden_activation_function $1",
									"patching_rect" : [ 716.0, 604.0, 169.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-68",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "umenu[1]",
									"types" : [  ],
									"items" : [ "LINEAR", ",", "SIGMOID", ",", "BIPOLAR", "SIGMOID" ],
									"patching_rect" : [ 965.0, 479.0, 102.0, 20.0 ],
									"outlettype" : [ "int", "", "" ],
									"fontsize" : 12.0,
									"id" : "obj-61",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "input_activation_function $1",
									"patching_rect" : [ 965.0, 512.0, 159.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-66",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "flonum[4]",
									"patching_rect" : [ 824.0, 482.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-56",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "null_rejection_coeff $1",
									"patching_rect" : [ 824.0, 513.0, 131.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-60",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"varname" : "toggle",
									"patching_rect" : [ 716.0, 484.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-54",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "null_rejection $1",
									"patching_rect" : [ 716.0, 514.0, 98.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-47",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "flonum",
									"patching_rect" : [ 1009.0, 394.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-43",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "gamma $1",
									"patching_rect" : [ 1009.0, 425.0, 67.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-45",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "flonum[1]",
									"patching_rect" : [ 917.0, 394.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-35",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "momentum $1",
									"patching_rect" : [ 917.0, 425.0, 87.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-41",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "flonum[2]",
									"patching_rect" : [ 818.0, 394.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-26",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "training_rate $1",
									"patching_rect" : [ 818.0, 425.0, 94.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-27",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"varname" : "flonum[3]",
									"patching_rect" : [ 712.0, 394.0, 50.0, 20.0 ],
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-25",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "min_change $1",
									"patching_rect" : [ 712.0, 425.0, 93.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-23",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "number",
									"patching_rect" : [ 1113.0, 282.0, 50.0, 20.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-18",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "max_epochs $1",
									"patching_rect" : [ 1113.0, 315.0, 95.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-19",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "number[1]",
									"patching_rect" : [ 1018.0, 281.0, 50.0, 20.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-16",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "min_epochs $1",
									"patching_rect" : [ 1018.0, 314.0, 92.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-17",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "number[2]",
									"patching_rect" : [ 920.0, 279.0, 50.0, 20.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-14",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "num_hidden $1",
									"patching_rect" : [ 920.0, 312.0, 93.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-15",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"varname" : "number[3]",
									"patching_rect" : [ 818.0, 279.0, 50.0, 20.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-13",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "error",
									"patching_rect" : [ 712.0, 167.0, 36.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-12",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s mlp",
									"patching_rect" : [ 712.0, 200.0, 39.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-9",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Object-Specific Messages",
									"patching_rect" : [ 803.0, 137.0, 151.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-2",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "conformpath slash boot",
									"patching_rect" : [ 261.0, 256.0, 135.0, 20.0 ],
									"outlettype" : [ "", "int" ],
									"fontsize" : 12.0,
									"id" : "obj-4",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 261.0, 210.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog",
									"patching_rect" : [ 261.0, 235.0, 69.0, 20.0 ],
									"outlettype" : [ "", "bang" ],
									"fontsize" : 12.0,
									"id" : "obj-10",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s mlp",
									"patching_rect" : [ 712.0, 362.0, 39.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-65",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getprobs",
									"patching_rect" : [ 395.0, 418.0, 57.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-64",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Common Attributes",
									"patching_rect" : [ 239.0, 348.0, 111.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-63",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getscaling",
									"patching_rect" : [ 326.0, 418.0, 65.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-62",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 264.0, 385.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-59",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "probs $1",
									"patching_rect" : [ 264.0, 418.0, 57.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-58",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"patching_rect" : [ 195.0, 385.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-57",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "scaling $1",
									"patching_rect" : [ 195.0, 418.0, 65.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-55",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s mlp",
									"patching_rect" : [ 113.0, 514.0, 39.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-53",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s mlp",
									"patching_rect" : [ 86.0, 344.0, 39.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-52",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r mlp",
									"patching_rect" : [ 114.0, 549.0, 37.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-51",
									"numinlets" : 0,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Object-Specific Attributes",
									"patching_rect" : [ 811.0, 243.0, 151.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-50",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Common Messages",
									"patching_rect" : [ 350.0, 13.0, 117.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-49",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"varname" : "umenu",
									"types" : [  ],
									"items" : [ "classification", ",", "regression" ],
									"patching_rect" : [ 712.0, 280.0, 102.0, 20.0 ],
									"outlettype" : [ "int", "", "" ],
									"fontsize" : 12.0,
									"id" : "obj-44",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "mode $1",
									"patching_rect" : [ 712.0, 313.0, 57.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-42",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0 0 1",
									"patching_rect" : [ 443.0, 241.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-37",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 1 0",
									"patching_rect" : [ 418.0, 210.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-38",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expect 1",
									"patching_rect" : [ 498.0, 237.0, 67.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-39",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "expect 2",
									"patching_rect" : [ 497.0, 210.0, 67.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-40",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/tmp/mlp.txt",
									"patching_rect" : [ 166.0, 210.0, 73.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-36",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend map",
									"patching_rect" : [ 418.0, 281.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-28",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "help",
									"patching_rect" : [ 632.0, 281.0, 33.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-29",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend load",
									"patching_rect" : [ 260.0, 281.0, 81.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-3",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend save",
									"patching_rect" : [ 166.0, 281.0, 83.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-30",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend add",
									"patching_rect" : [ 86.0, 281.0, 78.0, 20.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-31",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "train",
									"patching_rect" : [ 595.0, 281.0, 34.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-32",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"patching_rect" : [ 556.0, 281.0, 37.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-33",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getattributes",
									"patching_rect" : [ 113.0, 418.0, 77.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-34",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route map attributes",
									"patching_rect" : [ 141.0, 665.0, 117.0, 20.0 ],
									"outlettype" : [ "", "", "" ],
									"fontsize" : 12.0,
									"id" : "obj-6",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "num_outputs $1",
									"patching_rect" : [ 818.0, 312.0, 97.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-5",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2 1 1 0",
									"patching_rect" : [ 110.0, 140.0, 47.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-22",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 0 0 1",
									"patching_rect" : [ 140.0, 163.0, 47.0, 18.0 ],
									"outlettype" : [ "" ],
									"fontsize" : 12.0,
									"id" : "obj-20",
									"numinlets" : 2,
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ml.mlp",
									"patching_rect" : [ 114.0, 586.0, 46.0, 20.0 ],
									"outlettype" : [ "", "" ],
									"fontsize" : 12.0,
									"id" : "obj-1",
									"numinlets" : 1,
									"fontname" : "Arial",
									"numoutlets" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-83", 0 ],
									"destination" : [ "obj-86", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-82", 0 ],
									"destination" : [ "obj-83", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 2 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-82", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-90", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-91", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
 ],
		"lines" : [  ]
	}

}
