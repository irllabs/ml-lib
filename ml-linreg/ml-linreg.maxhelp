{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 558.0, 51.0, 882.0, 673.0 ],
		"bglocked" : 0,
		"defrect" : [ 558.0, 51.0, 882.0, 673.0 ],
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
					"text" : "s linreg",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-25",
					"patching_rect" : [ 516.0, 452.0, 49.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-24",
					"patching_rect" : [ 516.0, 358.0, 50.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-21",
					"patching_rect" : [ 734.0, 358.0, 50.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-18",
					"patching_rect" : [ 637.0, 358.0, 50.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "training_rate $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-16",
					"patching_rect" : [ 734.0, 389.0, 94.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "min_change $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-14",
					"patching_rect" : [ 637.0, 389.0, 93.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "max_iterations $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-12",
					"patching_rect" : [ 516.0, 389.0, 105.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Object-specific Attributes",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-10",
					"patching_rect" : [ 533.0, 289.0, 151.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "conformpath slash boot",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-5",
					"patching_rect" : [ 200.0, 148.0, 135.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"id" : "obj-9",
					"patching_rect" : [ 200.0, 101.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "opendialog",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-2",
					"patching_rect" : [ 200.0, 127.0, 69.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "expect 1.5",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-8",
					"patching_rect" : [ 429.0, 150.0, 66.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0.5 0.5",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-4",
					"patching_rect" : [ 380.0, 152.0, 47.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getprobs",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-64",
					"patching_rect" : [ 318.0, 356.0, 57.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Common Attributes",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-63",
					"patching_rect" : [ 162.0, 286.0, 111.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getscaling",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-62",
					"patching_rect" : [ 249.0, 356.0, 65.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"id" : "obj-59",
					"patching_rect" : [ 187.0, 323.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "probs $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-58",
					"patching_rect" : [ 187.0, 356.0, 57.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"id" : "obj-57",
					"patching_rect" : [ 118.0, 323.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "scaling $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-55",
					"patching_rect" : [ 118.0, 356.0, 65.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s linreg",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-53",
					"patching_rect" : [ 36.0, 452.0, 49.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s linreg",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-52",
					"patching_rect" : [ 29.0, 237.0, 49.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r linreg",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"id" : "obj-51",
					"patching_rect" : [ 33.0, 535.0, 47.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Common Messages",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-49",
					"patching_rect" : [ 162.0, 62.0, 117.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-37",
					"patching_rect" : [ 362.0, 128.0, 32.5, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1 0",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-38",
					"patching_rect" : [ 337.0, 106.0, 32.5, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "expect 1",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-39",
					"patching_rect" : [ 429.0, 123.0, 67.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "expect 2",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-40",
					"patching_rect" : [ 429.0, 101.0, 67.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/tmp/linreg.txt",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-36",
					"patching_rect" : [ 109.0, 103.0, 83.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend map",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-28",
					"patching_rect" : [ 337.0, 177.0, 81.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "help",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-29",
					"patching_rect" : [ 578.0, 177.0, 33.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend load",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-3",
					"patching_rect" : [ 200.0, 174.0, 81.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend save",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-30",
					"patching_rect" : [ 109.0, 174.0, 83.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend add",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-31",
					"patching_rect" : [ 29.0, 174.0, 78.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "train",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-32",
					"patching_rect" : [ 541.0, 177.0, 34.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-33",
					"patching_rect" : [ 502.0, 177.0, 37.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getattributes",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-34",
					"patching_rect" : [ 36.0, 356.0, 77.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print info",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-7",
					"patching_rect" : [ 70.0, 612.0, 57.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print map",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-6",
					"patching_rect" : [ 33.0, 652.0, 77.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2 1 0",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-22",
					"patching_rect" : [ 29.0, 103.0, 37.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1 0 1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-20",
					"patching_rect" : [ 51.0, 134.0, 37.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ml-linreg",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-1",
					"patching_rect" : [ 33.0, 572.0, 57.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
