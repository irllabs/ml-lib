{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 351.0, 272.0, 805.0, 396.0 ],
		"bglocked" : 0,
		"defrect" : [ 351.0, 272.0, 805.0, 396.0 ],
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
					"maxclass" : "message",
					"text" : "getpeak_threshold",
					"patching_rect" : [ 481.0, 179.0, 109.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"id" : "obj-9",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"patching_rect" : [ 347.0, 145.0, 50.0, 20.0 ],
					"outlettype" : [ "float", "bang" ],
					"fontsize" : 12.0,
					"id" : "obj-6",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s peak",
					"patching_rect" : [ 347.0, 230.0, 46.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-65",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Object-Specific Attributes",
					"patching_rect" : [ 380.0, 111.0, 151.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-50",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "peak_threshold $1",
					"patching_rect" : [ 347.0, 181.0, 109.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"id" : "obj-42",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 0.1 0.1 0.1 0.5 0.4 0.3 0.2 0.1 0.1 0.1 0.1 0.3 0.6 0.8 0.2 0.1 0.1 0.1 0.1 0.1",
					"patching_rect" : [ 79.0, 40.0, 417.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"id" : "obj-7",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "help",
					"patching_rect" : [ 143.0, 78.0, 33.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"id" : "obj-13",
					"numinlets" : 2,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r peak",
					"patching_rect" : [ 107.0, 207.0, 44.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"id" : "obj-3",
					"numinlets" : 0,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print peak",
					"patching_rect" : [ 79.0, 364.0, 63.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-2",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ml.peak",
					"patching_rect" : [ 79.0, 239.0, 53.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"id" : "obj-1",
					"numinlets" : 1,
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-1", 0 ],
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
