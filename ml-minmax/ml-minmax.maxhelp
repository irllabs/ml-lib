{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 97.0, 153.0, 829.0, 591.0 ],
		"bglocked" : 0,
		"defrect" : [ 97.0, 153.0, 829.0, 591.0 ],
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
					"maxclass" : "button",
					"numinlets" : 1,
					"id" : "obj-30",
					"patching_rect" : [ 189.0, 101.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "m  i  n  i  m  a",
					"fontsize" : 14.0,
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-28",
					"patching_rect" : [ 308.5, 316.5, 96.0, 23.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 1,
					"numinlets" : 1,
					"slidercolor" : [ 0.701961, 0.701961, 0.701961, 1.0 ],
					"id" : "obj-27",
					"patching_rect" : [ 216.0, 307.5, 330.0, 67.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"size" : 100
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "m  a  x  i  m  a  ",
					"fontsize" : 14.0,
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-22",
					"patching_rect" : [ 308.5, 241.0, 166.0, 23.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "make a list with the mouse",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-21",
					"patching_rect" : [ 197.0, 71.0, 165.0, 20.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p show",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-19",
					"patching_rect" : [ 134.5, 331.0, 49.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
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
									"maxclass" : "newobj",
									"text" : "t 0.",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-14",
									"patching_rect" : [ 106.0, 166.0, 27.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0.",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-13",
									"patching_rect" : [ 249.0, 166.0, 27.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-12",
									"patching_rect" : [ 65.75, 267.0, 32.5, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 1",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-11",
									"patching_rect" : [ 167.5, 267.0, 32.5, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 1 1.",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-9",
									"patching_rect" : [ 160.0, 333.0, 59.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 1. 1.",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-10",
									"patching_rect" : [ 160.0, 221.0, 76.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 1 1.",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-8",
									"patching_rect" : [ 57.0, 314.0, 59.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 1. 1.",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-7",
									"patching_rect" : [ 57.0, 202.0, 76.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-6",
									"patching_rect" : [ 126.0, 422.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl iter 2",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-3",
									"patching_rect" : [ 160.0, 166.0, 49.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-5",
									"patching_rect" : [ 126.0, 381.0, 74.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl iter 2",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-1",
									"patching_rect" : [ 50.0, 166.0, 49.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route min max",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-4",
									"patching_rect" : [ 50.0, 114.0, 87.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-16",
									"patching_rect" : [ 45.0, 362.0, 74.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-17",
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-18",
									"patching_rect" : [ 45.0, 422.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 258.5, 431.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 147.0, 205.0, 133.0, 340.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-5", 0 ],
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
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 1,
					"numinlets" : 1,
					"slidercolor" : [ 0.701961, 0.701961, 0.701961, 1.0 ],
					"id" : "obj-12",
					"patching_rect" : [ 216.0, 232.5, 330.0, 67.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"size" : 100
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"setminmax" : [ 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-11",
					"patching_rect" : [ 216.0, 101.0, 330.0, 115.0 ],
					"numoutlets" : 2,
					"contdata" : 1,
					"outlettype" : [ "", "" ],
					"size" : 100
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "help",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-23",
					"patching_rect" : [ 56.0, 256.0, 33.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r peak",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"id" : "obj-24",
					"patching_rect" : [ 137.0, 256.0, 44.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ml-minmax",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-26",
					"patching_rect" : [ 109.0, 288.0, 69.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ml",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"id" : "obj-10",
					"patching_rect" : [ 14.0, 21.0, 23.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print rejected",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-8",
					"patching_rect" : [ 176.0, 440.0, 80.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print maxima",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-5",
					"patching_rect" : [ 143.0, 466.0, 79.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route min max",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-4",
					"patching_rect" : [ 109.0, 406.0, 87.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getthreshold",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-9",
					"patching_rect" : [ 729.0, 169.0, 77.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-6",
					"patching_rect" : [ 595.0, 135.0, 50.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s minmax",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-65",
					"patching_rect" : [ 595.0, 220.0, 62.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Object-Specific Attributes",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-50",
					"patching_rect" : [ 628.0, 101.0, 151.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "threshold $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-42",
					"patching_rect" : [ 595.0, 171.0, 77.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print minima",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-2",
					"patching_rect" : [ 109.0, 493.0, 76.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 225.5, 222.0, 118.5, 222.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 2 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
