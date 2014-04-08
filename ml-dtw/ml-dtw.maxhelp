{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 0.0, 44.0, 993.0, 641.0 ],
		"bglocked" : 0,
		"defrect" : [ 0.0, 44.0, 993.0, 641.0 ],
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
					"text" : "ml",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"id" : "obj-5",
					"patching_rect" : [ 7.0, 15.0, 23.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print to-ml.dtw",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-4",
					"patching_rect" : [ 262.5, 568.0, 86.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "5. turn OFF record",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-91",
					"patching_rect" : [ 732.5, 200.0, 109.0, 20.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0. clear",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-90",
					"patching_rect" : [ 547.0, 215.0, 50.0, 20.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 100",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-80",
					"patching_rect" : [ 586.0, 151.0, 38.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 1 1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-81",
					"patching_rect" : [ 550.0, 182.0, 56.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line",
					"fontsize" : 12.0,
					"numinlets" : 3,
					"id" : "obj-82",
					"patching_rect" : [ 550.0, 115.0, 46.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 100",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-83",
					"patching_rect" : [ 487.0, 151.0, 38.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 1 1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-84",
					"patching_rect" : [ 451.0, 182.0, 56.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "7. test TWO",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-85",
					"patching_rect" : [ 550.0, 57.0, 94.0, 20.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "6.  test ONE",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-86",
					"patching_rect" : [ 451.0, 57.0, 92.0, 20.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "100, 0 1000",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-87",
					"patching_rect" : [ 550.0, 77.0, 74.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0, 100 1000",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-88",
					"patching_rect" : [ 451.0, 77.0, 74.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line",
					"fontsize" : 12.0,
					"numinlets" : 3,
					"id" : "obj-89",
					"patching_rect" : [ 451.0, 115.0, 46.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 100",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-76",
					"patching_rect" : [ 159.0, 151.0, 38.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 1 1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-77",
					"patching_rect" : [ 123.0, 182.0, 56.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line",
					"fontsize" : 12.0,
					"numinlets" : 3,
					"id" : "obj-79",
					"patching_rect" : [ 123.0, 115.0, 46.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 100",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-75",
					"patching_rect" : [ 60.0, 151.0, 38.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 1 1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-74",
					"patching_rect" : [ 24.0, 182.0, 56.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "4. train",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-73",
					"patching_rect" : [ 617.0, 215.0, 47.0, 20.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3. sample TWO",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-72",
					"patching_rect" : [ 123.0, 57.0, 94.0, 20.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2. sample ONE",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-69",
					"patching_rect" : [ 24.0, 57.0, 92.0, 20.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1.  turn ON record",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-68",
					"patching_rect" : [ 732.5, 174.0, 107.0, 20.0 ],
					"fontname" : "Arial",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "100, 0 1000",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-38",
					"patching_rect" : [ 123.0, 77.0, 74.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend add 2",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-39",
					"patching_rect" : [ 123.0, 222.0, 88.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0, 100 1000",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-36",
					"patching_rect" : [ 24.0, 77.0, 74.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend add 1",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-26",
					"patching_rect" : [ 24.0, 222.0, 88.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line",
					"fontsize" : 12.0,
					"numinlets" : 3,
					"id" : "obj-24",
					"patching_rect" : [ 24.0, 115.0, 46.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p test",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"id" : "obj-22",
					"patching_rect" : [ 75.5, 356.0, 40.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 529.0, 44.0, 659.0, 588.0 ],
						"bglocked" : 0,
						"defrect" : [ 529.0, 44.0, 659.0, 588.0 ],
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
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-20",
									"patching_rect" : [ 257.0, 281.5, 53.0, 53.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-8",
									"patching_rect" : [ 29.0, 187.0, 53.0, 53.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "5. map",
									"fontsize" : 12.0,
									"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-19",
									"patching_rect" : [ 200.5, 181.0, 47.0, 20.0 ],
									"fontname" : "Arial",
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "4. train",
									"fontsize" : 12.0,
									"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-18",
									"patching_rect" : [ 51.5, 298.0, 47.0, 20.0 ],
									"fontname" : "Arial",
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "...",
									"fontsize" : 9.069665,
									"numinlets" : 1,
									"id" : "obj-16",
									"patching_rect" : [ 80.0, 148.0, 20.0, 17.0 ],
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3. ",
									"fontsize" : 9.069665,
									"numinlets" : 1,
									"id" : "obj-13",
									"patching_rect" : [ 80.0, 131.0, 20.0, 17.0 ],
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2.",
									"fontsize" : 9.069665,
									"numinlets" : 1,
									"id" : "obj-10",
									"patching_rect" : [ 80.0, 117.0, 20.0, 17.0 ],
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1.",
									"fontsize" : 9.069665,
									"numinlets" : 1,
									"id" : "obj-9",
									"patching_rect" : [ 80.0, 100.0, 20.0, 17.0 ],
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3.  give examples of classes 1, 2, 3, ...",
									"fontsize" : 12.0,
									"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-7",
									"patching_rect" : [ 87.0, 69.0, 214.0, 20.0 ],
									"fontname" : "Arial",
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2. train",
									"fontsize" : 12.0,
									"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-5",
									"patching_rect" : [ 174.0, 131.0, 50.0, 20.0 ],
									"fontname" : "Arial",
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1. clear",
									"fontsize" : 12.0,
									"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-4",
									"patching_rect" : [ -1.5, 298.0, 50.0, 20.0 ],
									"fontname" : "Arial",
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "acceleration data from TouchOSC",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-3",
									"patching_rect" : [ 322.0, 97.0, 190.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "-0.010269 0.015244 0.993912",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-1",
									"patching_rect" : [ 337.0, 279.5, 200.0, 18.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "map 0.006058 0.177582 1.085785",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-37",
									"patching_rect" : [ 178.0, 382.0, 211.0, 18.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-42",
									"patching_rect" : [ 5.0, 325.0, 37.0, 18.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p train-predict",
									"fontsize" : 12.0,
									"numinlets" : 5,
									"id" : "obj-35",
									"patching_rect" : [ 103.0, 292.0, 84.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 675.0, 59.0, 746.0, 733.0 ],
										"bglocked" : 0,
										"defrect" : [ 675.0, 59.0, 746.0, 733.0 ],
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
													"maxclass" : "newobj",
													"text" : "gate",
													"fontsize" : 12.0,
													"numinlets" : 2,
													"id" : "obj-13",
													"patching_rect" : [ 409.0, 430.0, 34.0, 20.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-12",
													"patching_rect" : [ 347.0, 40.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "record $1",
													"fontsize" : 12.0,
													"numinlets" : 2,
													"id" : "obj-11",
													"patching_rect" : [ 424.0, 174.0, 61.0, 18.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate",
													"fontsize" : 12.0,
													"numinlets" : 2,
													"id" : "obj-9",
													"patching_rect" : [ 195.0, 174.0, 34.0, 20.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numinlets" : 1,
													"id" : "obj-7",
													"patching_rect" : [ 347.0, 174.0, 20.0, 20.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"numinlets" : 1,
													"id" : "obj-5",
													"patching_rect" : [ 245.0, 174.0, 20.0, 20.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-3",
													"patching_rect" : [ 13.0, 40.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"fontsize" : 12.0,
													"numinlets" : 2,
													"id" : "obj-1",
													"patching_rect" : [ 50.0, 112.0, 32.5, 20.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend map",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-26",
													"patching_rect" : [ 414.0, 320.0, 81.0, 20.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "gswitch2",
													"numinlets" : 2,
													"id" : "obj-24",
													"patching_rect" : [ 226.0, 100.0, 39.0, 32.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-20",
													"patching_rect" : [ 50.0, 174.0, 74.0, 20.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-19",
													"patching_rect" : [ 154.0, 300.0, 55.0, 20.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend add",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-18",
													"patching_rect" : [ 154.0, 346.0, 78.0, 20.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-31",
													"patching_rect" : [ 61.0, 40.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-32",
													"patching_rect" : [ 226.0, 40.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-33",
													"patching_rect" : [ 246.0, 40.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-34",
													"patching_rect" : [ 195.0, 576.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-24", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 1 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-20", 0 ],
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
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial",
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"fontsize" : 12.0,
									"items" : [ "train", ",", "map" ],
									"types" : [  ],
									"numinlets" : 1,
									"id" : "obj-25",
									"patching_rect" : [ 174.0, 161.0, 100.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"numinlets" : 1,
									"id" : "obj-17",
									"patching_rect" : [ 103.0, 100.0, 18.0, 162.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"itemtype" : 0,
									"size" : 10,
									"value" : 1,
									"disabled" : [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OSC-route /accxyz",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-15",
									"patching_rect" : [ 288.0, 220.0, 111.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "list", "list" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/accxyz -0.010269 0.015244 0.993912",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-14",
									"patching_rect" : [ 337.0, 176.0, 228.0, 18.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpreceive 8000",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-12",
									"patching_rect" : [ 288.0, 138.0, 99.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "train",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-6",
									"patching_rect" : [ 51.5, 325.0, 34.0, 18.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-11",
									"patching_rect" : [ 62.666687, 460.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-37", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-35", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-35", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-35", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-35", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-14", 1 ],
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
					"maxclass" : "message",
					"text" : "clear",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-21",
					"patching_rect" : [ 488.5, 356.0, 37.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s mlp",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-67",
					"patching_rect" : [ 554.0, 605.0, 39.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s mlp",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-66",
					"patching_rect" : [ 556.0, 486.0, 39.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"id" : "obj-61",
					"patching_rect" : [ 872.0, 534.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "enable_trim_training_data $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-65",
					"patching_rect" : [ 872.0, 567.0, 166.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"id" : "obj-46",
					"patching_rect" : [ 714.0, 536.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "enable_z_normalization $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-48",
					"patching_rect" : [ 714.0, 569.0, 154.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"id" : "obj-43",
					"patching_rect" : [ 554.0, 537.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "constrain_warping_path $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-45",
					"patching_rect" : [ 554.0, 570.0, 155.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"id" : "obj-40",
					"patching_rect" : [ 817.0, 418.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "constrain_warping_path $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-41",
					"patching_rect" : [ 817.0, 451.0, 155.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"id" : "obj-37",
					"patching_rect" : [ 680.0, 418.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "offset_time_series $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-35",
					"patching_rect" : [ 680.0, 451.0, 125.0, 18.0 ],
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
					"id" : "obj-25",
					"patching_rect" : [ 556.0, 418.0, 50.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "warping_radius $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-23",
					"patching_rect" : [ 556.0, 450.0, 109.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontsize" : 12.0,
					"items" : [ "TEMPLATE", "THRESHOLDS", ",", "CLASS", "LIKELIHOODS", ",", "THRESHOLDS", "AND", "LIKELIHOODS" ],
					"types" : [  ],
					"numinlets" : 1,
					"id" : "obj-44",
					"patching_rect" : [ 805.0, 316.0, 102.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "rejection_mode $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-19",
					"patching_rect" : [ 805.0, 346.0, 109.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s mlp",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-78",
					"patching_rect" : [ 556.0, 373.0, 39.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-13",
					"patching_rect" : [ 664.0, 316.0, 50.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "null_rejection_coeff $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-15",
					"patching_rect" : [ 664.0, 346.0, 131.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"id" : "obj-54",
					"patching_rect" : [ 556.0, 316.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "null_rejection $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-17",
					"patching_rect" : [ 556.0, 346.0, 98.0, 18.0 ],
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
					"id" : "obj-12",
					"patching_rect" : [ 708.0, 267.0, 158.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Object-specific Messages",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-10",
					"patching_rect" : [ 841.0, 15.0, 158.0, 20.0 ],
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
					"id" : "obj-2",
					"patching_rect" : [ 308.0, 172.0, 135.0, 20.0 ],
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
					"patching_rect" : [ 308.0, 31.0, 20.0, 20.0 ],
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
					"id" : "obj-8",
					"patching_rect" : [ 308.0, 118.0, 69.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/tmp/dtw.txt",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-11",
					"patching_rect" : [ 216.0, 173.0, 72.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"id" : "obj-56",
					"patching_rect" : [ 712.5, 174.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "record $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-50",
					"patching_rect" : [ 712.5, 235.0, 61.0, 18.0 ],
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
					"patching_rect" : [ 428.5, 356.0, 57.0, 18.0 ],
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
					"patching_rect" : [ 272.5, 286.0, 111.0, 20.0 ],
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
					"patching_rect" : [ 359.5, 356.0, 65.0, 18.0 ],
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
					"patching_rect" : [ 297.5, 323.0, 20.0, 20.0 ],
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
					"patching_rect" : [ 297.5, 356.0, 57.0, 18.0 ],
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
					"patching_rect" : [ 228.5, 323.0, 20.0, 20.0 ],
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
					"patching_rect" : [ 228.5, 356.0, 65.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s dtw",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-53",
					"patching_rect" : [ 139.5, 452.0, 39.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s dtw",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-52",
					"patching_rect" : [ 123.0, 295.0, 39.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Common Messages",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-49",
					"patching_rect" : [ 269.0, 5.0, 117.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend map",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-28",
					"patching_rect" : [ 451.0, 232.0, 81.0, 20.0 ],
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
					"patching_rect" : [ 670.5, 235.0, 33.0, 18.0 ],
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
					"patching_rect" : [ 308.0, 232.0, 81.0, 20.0 ],
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
					"patching_rect" : [ 216.0, 232.0, 83.0, 20.0 ],
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
					"patching_rect" : [ 628.0, 235.0, 34.0, 18.0 ],
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
					"patching_rect" : [ 552.0, 235.0, 37.0, 18.0 ],
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
					"patching_rect" : [ 139.5, 356.0, 77.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r dtw",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"id" : "obj-51",
					"patching_rect" : [ 139.5, 501.0, 37.0, 20.0 ],
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
					"patching_rect" : [ 165.5, 583.0, 57.0, 20.0 ],
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
					"patching_rect" : [ 139.5, 618.0, 77.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ml-dtw",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-1",
					"patching_rect" : [ 139.5, 538.0, 46.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
 ],
		"lines" : [ 			{
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
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-84", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-81", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-77", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-74", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-67", 0 ],
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
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-65", 0 ],
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
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-53", 0 ],
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
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-50", 0 ],
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
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-66", 0 ],
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
					"source" : [ "obj-29", 0 ],
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
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
