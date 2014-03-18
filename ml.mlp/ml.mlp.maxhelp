{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 572.0, 86.0, 1226.0, 860.0 ],
		"bglocked" : 0,
		"defrect" : [ 572.0, 86.0, 1226.0, 860.0 ],
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
<<<<<<< HEAD
					"maxclass" : "comment",
					"text" : "expect 1 2 1 2 1",
					"id" : "obj-99",
=======
					"id" : "obj-7",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 1062.0, 79.0, 100.0, 40.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-18", "number", "int", 200, 5, "obj-16", "number", "int", 150, 5, "obj-14", "number", "int", 2, 5, "obj-26", "flonum", "float", 0.05, 5, "obj-13", "number", "int", 6, 5, "obj-44", "umenu", "int", 1 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 113.0, 603.0, 87.0, 20.0 ],
					"text" : "print from-svm"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 100.0, 515.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 242.0, 515.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
>>>>>>> refs/heads/master
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
<<<<<<< HEAD
					"patching_rect" : [ 502.0, 173.0, 106.0, 20.0 ]
=======
					"patching_rect" : [ 267.0, 603.0, 39.0, 20.0 ],
					"text" : "s mlp"
>>>>>>> refs/heads/master
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "expect 5 4 3 2 1",
					"id" : "obj-97",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
<<<<<<< HEAD
					"patching_rect" : [ 499.0, 145.0, 106.0, 20.0 ]
=======
					"patching_rect" : [ 398.0, 575.0, 59.0, 20.0 ],
					"text" : "print else"
>>>>>>> refs/heads/master
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "expect 1 2 3 4 5",
					"id" : "obj-98",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
<<<<<<< HEAD
					"numoutlets" : 0,
					"patching_rect" : [ 498.0, 118.0, 103.0, 20.0 ]
=======
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 267.0, 575.0, 80.0, 20.0 ],
					"text" : "sprintf get%s"
>>>>>>> refs/heads/master
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "classification",
					"id" : "obj-96",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 215.0, 165.0, 88.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "regression",
					"id" : "obj-95",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 220.0, 59.0, 67.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0.1 0.5 0.1",
					"id" : "obj-93",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
<<<<<<< HEAD
					"patching_rect" : [ 414.0, 174.0, 67.0, 18.0 ],
					"outlettype" : [ "" ]
=======
					"outlettype" : [ "" ],
					"patching_rect" : [ 235.0, 575.0, 27.0, 20.0 ],
					"text" : "iter"
>>>>>>> refs/heads/master
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0.3 0.2 0.1",
					"id" : "obj-91",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 390.0, 153.0, 67.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0.1 0.2 0.3",
					"id" : "obj-90",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 379.0, 127.0, 67.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1 2 1 2 1 0.1 0.5 0.1",
					"id" : "obj-7",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 87.0, 110.0, 117.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "5 4 3 2 1 0.3 0.2 0.1",
					"id" : "obj-46",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 69.0, 85.0, 117.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1 2 3 4 5 0.1 0.2 0.3",
					"id" : "obj-87",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 49.0, 63.0, 117.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s mlp",
					"id" : "obj-86",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
<<<<<<< HEAD
					"patching_rect" : [ 237.0, 740.0, 39.0, 20.0 ]
=======
					"patching_rect" : [ 186.0, 603.0, 61.0, 20.0 ],
					"text" : "print map"
>>>>>>> refs/heads/master
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print else",
					"id" : "obj-84",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 368.0, 712.0, 59.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf get%s",
					"id" : "obj-83",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 237.0, 712.0, 80.0, 20.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "iter",
					"id" : "obj-82",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 205.0, 712.0, 27.0, 20.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print map",
					"id" : "obj-81",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
<<<<<<< HEAD
					"patching_rect" : [ 156.0, 740.0, 61.0, 20.0 ]
=======
					"patching_rect" : [ 11.0, 603.0, 70.0, 20.0 ],
					"text" : "s from-svm"
>>>>>>> refs/heads/master
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print output",
					"id" : "obj-48",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 129.0, 778.0, 71.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p test",
					"id" : "obj-24",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 34.0, 433.0, 40.0, 20.0 ],
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
<<<<<<< HEAD
						"rect" : [ 47.0, 44.0, 729.0, 844.0 ],
=======
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 6,
							"architecture" : "x86"
						}
,
						"rect" : [ 288.0, 512.0, 726.0, 694.0 ],
>>>>>>> refs/heads/master
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
						"boxes" : [ 							{
								"box" : 								{
<<<<<<< HEAD
									"maxclass" : "gain~",
									"id" : "obj-2",
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 141.0, 529.0, 20.0, 140.0 ],
									"outlettype" : [ "signal", "int" ]
=======
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 337.0, 377.0, 262.0, 18.0 ],
									"text" : "39. 0.468077 41.384506 12.042529 7.635345 "
>>>>>>> refs/heads/master
								}

							}
, 							{
								"box" : 								{
<<<<<<< HEAD
=======
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 225.0, 279.5, 91.0, 20.0 ],
									"text" : "r synth-params"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
>>>>>>> refs/heads/master
									"maxclass" : "toggle",
									"id" : "obj-27",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 39.5, 61.0, 20.0, 20.0 ],
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 20",
									"id" : "obj-24",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 39.5, 115.0, 58.0, 20.0 ],
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "presets",
									"id" : "obj-23",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
<<<<<<< HEAD
									"patching_rect" : [ 169.0, 408.0, 50.0, 20.0 ]
=======
									"patching_rect" : [ 662.0, 161.5, 50.0, 20.0 ],
									"text" : "presets"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "live.gain~",
									"numinlets" : 2,
									"numoutlets" : 5,
									"outlettype" : [ "signal", "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 619.0, 291.0, 48.0, 64.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.gain~",
											"parameter_shortname" : "live.gain~",
											"parameter_type" : 0,
											"parameter_mmin" : -70.0,
											"parameter_mmax" : 6.0,
											"parameter_initial" : [ 0.0 ],
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "live.gain~"
>>>>>>> refs/heads/master
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ezdac~",
									"id" : "obj-20",
									"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"offgradcolor1" : [ 0.0, 0.0, 0.0, 0.0 ],
									"ongradcolor1" : [ 0.0, 0.0, 0.0, 0.0 ],
									"numinlets" : 2,
									"ongradcolor2" : [ 0.0, 0.0, 0.0, 0.0 ],
									"offgradcolor2" : [ 0.0, 0.0, 0.0, 0.0 ],
									"numoutlets" : 0,
<<<<<<< HEAD
									"patching_rect" : [ 134.0, 693.0, 45.0, 45.0 ]
=======
									"patching_rect" : [ 619.0, 385.5, 45.0, 45.0 ]
>>>>>>> refs/heads/master
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "radiogroup",
									"id" : "obj-17",
									"numinlets" : 1,
									"numoutlets" : 1,
<<<<<<< HEAD
									"patching_rect" : [ 141.0, 371.0, 18.0, 114.0 ],
									"outlettype" : [ "" ],
									"itemtype" : 0,
									"size" : 7,
									"value" : 1,
									"disabled" : [ 0, 0, 0, 0, 0, 0, 0 ]
=======
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 634.0, 124.5, 18.0, 114.0 ],
									"size" : 7,
									"value" : 6
>>>>>>> refs/heads/master
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-10",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 103.0, 161.0, 41.0, 41.0 ],
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p soundz",
									"id" : "obj-8",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 141.0, 499.0, 59.0, 20.0 ],
									"outlettype" : [ "signal" ],
									"patcher" : 									{
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"id" : "obj-122",
													"fontname" : "Arial",
													"fontsize" : 12.0,
<<<<<<< HEAD
=======
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 7,
													"outlettype" : [ "float", "float", "float", "float", "float", "float", "" ],
													"patching_rect" : [ 82.0, 224.0, 139.0, 20.0 ],
													"text" : "unpack 1. 1. 1. 1. 1. 1. a"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 82.0, 181.0, 68.0, 20.0 ],
													"text" : "r from-svm"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-122",
													"maxclass" : "newobj",
>>>>>>> refs/heads/master
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 504.0, 181.0, 32.5, 20.0 ],
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-120",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 168.0, 604.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-119",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 504.0, 106.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p paf~",
													"id" : "obj-118",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 181.0, 459.0, 44.0, 20.0 ],
													"outlettype" : [ "signal", "signal" ],
													"patcher" : 													{
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "phasor~",
																	"id" : "obj-35",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 81.0, 444.0, 50.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~ 1.6",
																	"id" : "obj-36",
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 377.0, 246.0, 41.0, 17.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "biquad~ 1. -1. 0. -0.9997 0.",
																	"id" : "obj-37",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 6,
																	"numoutlets" : 1,
																	"patching_rect" : [ 661.0, 580.0, 155.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"id" : "obj-39",
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"fontname" : "Arial",
																	"triscale" : 0.9,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"patching_rect" : [ 867.0, 510.0, 35.0, 17.0 ],
																	"outlettype" : [ "float", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p list or float",
																	"id" : "obj-40",
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 89.0, 155.0, 70.0, 17.0 ],
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "mtof",
																					"id" : "obj-1",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 144.0, 189.0, 31.0, 17.0 ],
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 12.",
																					"id" : "obj-2",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 144.0, 168.0, 33.0, 17.0 ],
																					"outlettype" : [ "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "ftom",
																					"id" : "obj-3",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 144.0, 146.0, 31.0, 17.0 ],
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "route list float",
																					"id" : "obj-4",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 3,
																					"patching_rect" : [ 50.0, 64.0, 76.0, 17.0 ],
																					"outlettype" : [ "", "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "pack 1. 100.",
																					"id" : "obj-5",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 208.0, 66.0, 17.0 ],
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "unpack 1. 100.",
																					"id" : "obj-6",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"patching_rect" : [ 50.0, 124.0, 76.0, 17.0 ],
																					"outlettype" : [ "float", "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "mtof",
																					"id" : "obj-7",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 187.0, 31.0, 17.0 ],
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 12.",
																					"id" : "obj-8",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 166.0, 33.0, 17.0 ],
																					"outlettype" : [ "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "ftom",
																					"id" : "obj-9",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 144.0, 31.0, 17.0 ],
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"id" : "obj-10",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"id" : "obj-11",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 50.0, 288.0, 15.0, 15.0 ],
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 0 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-7", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 1 ],
																					"destination" : [ "obj-5", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 1 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-2", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-10", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontname" : "Arial",
																		"globalpatchername" : "",
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"fontface" : 0,
																		"fontsize" : 12.0,
																		"default_fontsize" : 12.0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cycle~",
																	"id" : "obj-41",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 191.0, 256.0, 42.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"id" : "obj-42",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 616.0, 518.0, 15.0, 15.0 ],
																	"outlettype" : [ "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 1. 30.",
																	"id" : "obj-43",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 499.0, 184.0, 65.0, 18.0 ],
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p complex-mod~",
																	"id" : "obj-44",
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"numinlets" : 3,
																	"numoutlets" : 2,
																	"patching_rect" : [ 660.0, 650.0, 84.0, 17.0 ],
																	"outlettype" : [ "signal", "signal" ],
																	"patcher" : 																	{
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "cos~",
																					"id" : "obj-1",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 173.0, 217.0, 31.0, 17.0 ],
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+~",
																					"id" : "obj-2",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 128.0, 289.0, 27.0, 17.0 ],
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"id" : "obj-3",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 132.0, 320.0, 15.0, 15.0 ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "phasor~",
																					"id" : "obj-4",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 213.0, 123.0, 57.0, 17.0 ],
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "-~",
																					"id" : "obj-5",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 59.0, 289.0, 27.0, 17.0 ],
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~",
																					"id" : "obj-6",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 109.0, 252.0, 35.0, 17.0 ],
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~",
																					"id" : "obj-7",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 59.0, 252.0, 35.0, 17.0 ],
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "cos~",
																					"id" : "obj-8",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 107.0, 182.0, 31.0, 17.0 ],
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "frequency of shift",
																					"id" : "obj-9",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 181.0, 72.0, 109.0, 17.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "imaginary",
																					"id" : "obj-10",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 89.0, 70.0, 64.0, 17.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "real",
																					"id" : "obj-11",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 52.0, 71.0, 33.0, 17.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+~ 0.25",
																					"id" : "obj-12",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 178.0, 182.0, 44.0, 17.0 ],
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "frequency shifted signal",
																					"id" : "obj-13",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 157.0, 312.0, 171.0, 17.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "signal to modulate",
																					"id" : "obj-14",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 50.0, 50.0, 114.0, 17.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"id" : "obj-15",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 11.0, 144.0, 15.0, 15.0 ],
																					"outlettype" : [ "signal" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"id" : "obj-16",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 61.0, 144.0, 15.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"id" : "obj-17",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 213.0, 103.0, 15.0, 15.0 ],
																					"outlettype" : [ "signal" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"id" : "obj-18",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 59.0, 320.0, 15.0, 15.0 ],
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-7", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-2", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-5", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-2", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-18", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-12", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-17", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-16", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-7", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-12", 0 ],
																					"destination" : [ "obj-1", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-6", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontname" : "Arial",
																		"globalpatchername" : "",
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"fontface" : 0,
																		"fontsize" : 12.0,
																		"default_fontsize" : 12.0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sig~ 1",
																	"id" : "obj-45",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 257.0, 304.0, 41.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"id" : "obj-50",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"patching_rect" : [ 264.0, 208.0, 36.0, 18.0 ],
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"id" : "obj-51",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"patching_rect" : [ 344.0, 203.0, 36.0, 18.0 ],
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"id" : "obj-16",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"patching_rect" : [ 180.0, 208.0, 36.0, 18.0 ],
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route freq vfr vib bw amp cf shift phase cfgliss",
																	"id" : "obj-52",
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"numoutlets" : 10,
																	"patching_rect" : [ 220.0, 126.0, 407.0, 17.0 ],
																	"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"id" : "obj-53",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 165.0, 642.0, 27.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cos~",
																	"id" : "obj-54",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 165.0, 692.0, 32.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"id" : "obj-55",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 263.0, 448.0, 27.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"id" : "obj-56",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 323.0, 413.0, 27.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "divide by fundamental",
																	"id" : "obj-57",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 364.0, 437.0, 116.0, 18.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "clip~ 0. 1.",
																	"id" : "obj-58",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"patching_rect" : [ 81.0, 469.0, 62.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+~ 0.5",
																	"id" : "obj-59",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 445.0, 504.0, 45.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "%~ 1.",
																	"id" : "obj-60",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 445.0, 529.0, 40.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "second phase signal",
																	"id" : "obj-61",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 436.0, 482.0, 103.0, 18.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+~ 1",
																	"id" : "obj-62",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 165.0, 728.0, 35.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "-~ 0.5",
																	"id" : "obj-63",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 70.0, 549.0, 44.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+~",
																	"id" : "obj-64",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 137.0, 784.0, 27.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"id" : "obj-65",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 50.0, 646.0, 27.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cos~",
																	"id" : "obj-66",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 50.0, 689.0, 32.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p samphold~",
																	"id" : "obj-67",
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"patching_rect" : [ 185.0, 615.0, 65.0, 17.0 ],
																	"outlettype" : [ "signal" ],
																	"patcher" : 																	{
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"id" : "obj-1",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 144.0, 38.0, 15.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "loadbang",
																					"id" : "obj-2",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 188.0, 50.0, 48.0, 17.0 ],
																					"outlettype" : [ "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~ -1.",
																					"id" : "obj-3",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 89.0, 88.0, 40.0, 17.0 ],
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "0.",
																					"id" : "obj-4",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 185.0, 95.0, 17.0, 15.0 ],
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "delta~",
																					"id" : "obj-5",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 88.0, 58.0, 38.0, 17.0 ],
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "sah~",
																					"id" : "obj-6",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 142.0, 31.0, 17.0 ],
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"id" : "obj-7",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 88.0, 38.0, 15.0, 15.0 ],
																					"outlettype" : [ "signal" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"id" : "obj-8",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 122.0, 15.0, 15.0 ],
																					"outlettype" : [ "signal" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"id" : "obj-9",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 50.0, 164.0, 15.0, 15.0 ],
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-6", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-6", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontname" : "Arial",
																		"globalpatchername" : "",
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"fontface" : 0,
																		"fontsize" : 12.0,
																		"default_fontsize" : 12.0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p samphold~",
																	"id" : "obj-68",
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"patching_rect" : [ 114.0, 601.0, 65.0, 17.0 ],
																	"outlettype" : [ "signal" ],
																	"patcher" : 																	{
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"id" : "obj-1",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 144.0, 38.0, 15.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "loadbang",
																					"id" : "obj-2",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 188.0, 50.0, 48.0, 17.0 ],
																					"outlettype" : [ "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~ -1.",
																					"id" : "obj-3",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 89.0, 88.0, 40.0, 17.0 ],
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "0.",
																					"id" : "obj-4",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 185.0, 95.0, 17.0, 15.0 ],
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "delta~",
																					"id" : "obj-5",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 88.0, 58.0, 38.0, 17.0 ],
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "sah~",
																					"id" : "obj-6",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 142.0, 31.0, 17.0 ],
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"id" : "obj-7",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 88.0, 38.0, 15.0, 15.0 ],
																					"outlettype" : [ "signal" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"id" : "obj-8",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 122.0, 15.0, 15.0 ],
																					"outlettype" : [ "signal" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"id" : "obj-9",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 50.0, 164.0, 15.0, 15.0 ],
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-6", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-6", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontname" : "Arial",
																		"globalpatchername" : "",
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"fontface" : 0,
																		"fontsize" : 12.0,
																		"default_fontsize" : 12.0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"id" : "obj-69",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 50.0, 737.0, 27.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "clip~ -0.5 0.5",
																	"id" : "obj-70",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"patching_rect" : [ 165.0, 667.0, 83.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"id" : "obj-71",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 336.0, 663.0, 27.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cos~",
																	"id" : "obj-72",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 336.0, 726.0, 32.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+~ 1",
																	"id" : "obj-73",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 336.0, 747.0, 35.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "-~ 0.5",
																	"id" : "obj-74",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 282.0, 550.0, 44.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"id" : "obj-75",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 283.0, 663.0, 27.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cos~",
																	"id" : "obj-76",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 283.0, 705.0, 32.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p samphold~",
																	"id" : "obj-77",
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"patching_rect" : [ 415.0, 618.0, 65.0, 17.0 ],
																	"outlettype" : [ "signal" ],
																	"patcher" : 																	{
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"id" : "obj-1",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 144.0, 38.0, 15.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "loadbang",
																					"id" : "obj-2",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 188.0, 50.0, 48.0, 17.0 ],
																					"outlettype" : [ "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~ -1.",
																					"id" : "obj-3",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 89.0, 88.0, 40.0, 17.0 ],
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "0.",
																					"id" : "obj-4",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 185.0, 95.0, 17.0, 15.0 ],
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "delta~",
																					"id" : "obj-5",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 88.0, 58.0, 38.0, 17.0 ],
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "sah~",
																					"id" : "obj-6",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 142.0, 31.0, 17.0 ],
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"id" : "obj-7",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 88.0, 38.0, 15.0, 15.0 ],
																					"outlettype" : [ "signal" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"id" : "obj-8",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 122.0, 15.0, 15.0 ],
																					"outlettype" : [ "signal" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"id" : "obj-9",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 50.0, 164.0, 15.0, 15.0 ],
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-6", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-6", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontname" : "Arial",
																		"globalpatchername" : "",
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"fontface" : 0,
																		"fontsize" : 12.0,
																		"default_fontsize" : 12.0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p samphold~",
																	"id" : "obj-78",
																	"fontname" : "Arial",
																	"fontsize" : 9.0,
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"patching_rect" : [ 344.0, 618.0, 65.0, 17.0 ],
																	"outlettype" : [ "signal" ],
																	"patcher" : 																	{
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"id" : "obj-1",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 144.0, 38.0, 15.0, 15.0 ],
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "loadbang",
																					"id" : "obj-2",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 188.0, 50.0, 48.0, 17.0 ],
																					"outlettype" : [ "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~ -1.",
																					"id" : "obj-3",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 89.0, 88.0, 40.0, 17.0 ],
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "0.",
																					"id" : "obj-4",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 185.0, 95.0, 17.0, 15.0 ],
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "delta~",
																					"id" : "obj-5",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"patching_rect" : [ 88.0, 58.0, 38.0, 17.0 ],
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "sah~",
																					"id" : "obj-6",
																					"fontname" : "Arial",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 142.0, 31.0, 17.0 ],
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"id" : "obj-7",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 88.0, 38.0, 15.0, 15.0 ],
																					"outlettype" : [ "signal" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"id" : "obj-8",
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"patching_rect" : [ 50.0, 122.0, 15.0, 15.0 ],
																					"outlettype" : [ "signal" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"id" : "obj-9",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 50.0, 164.0, 15.0, 15.0 ],
																					"comment" : ""
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-3", 0 ],
																					"destination" : [ "obj-6", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-2", 0 ],
																					"destination" : [ "obj-4", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-1", 0 ],
																					"destination" : [ "obj-6", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"fontname" : "Arial",
																		"globalpatchername" : "",
																		"default_fontface" : 0,
																		"default_fontname" : "Arial",
																		"fontface" : 0,
																		"fontsize" : 12.0,
																		"default_fontsize" : 12.0
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"id" : "obj-79",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 283.0, 726.0, 27.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "clip~ -0.5 0.5",
																	"id" : "obj-80",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"patching_rect" : [ 336.0, 705.0, 83.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "maximum~ 1",
																	"id" : "obj-81",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 334.0, 461.0, 75.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"id" : "obj-82",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"patching_rect" : [ 94.0, 208.0, 36.0, 18.0 ],
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+~",
																	"id" : "obj-83",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 198.0, 332.0, 27.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"id" : "obj-84",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 159.0, 354.0, 27.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"id" : "obj-85",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 198.0, 297.0, 27.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "/~",
																	"id" : "obj-86",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 223.0, 392.0, 27.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0",
																	"id" : "obj-87",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 715.0, 302.0, 22.0, 18.0 ],
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"id" : "obj-88",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"patching_rect" : [ 567.0, 241.0, 36.0, 18.0 ],
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"id" : "obj-89",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"patching_rect" : [ 649.0, 468.0, 36.0, 18.0 ],
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route 0.",
																	"id" : "obj-90",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"patching_rect" : [ 715.0, 273.0, 49.0, 18.0 ],
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b f",
																	"id" : "obj-91",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"patching_rect" : [ 671.0, 273.0, 30.0, 18.0 ],
																	"outlettype" : [ "bang", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 0",
																	"id" : "obj-92",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 648.0, 423.0, 55.0, 18.0 ],
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route 0 1",
																	"id" : "obj-93",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"patching_rect" : [ 604.0, 383.0, 56.0, 18.0 ],
																	"outlettype" : [ "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0.",
																	"id" : "obj-94",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 604.0, 360.0, 55.0, 18.0 ],
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "> 0.",
																	"id" : "obj-95",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 604.0, 336.0, 27.0, 18.0 ],
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "snapshot~",
																	"id" : "obj-96",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 604.0, 314.0, 59.0, 18.0 ],
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "-1000099968.",
																	"id" : "obj-97",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 541.0, 575.0, 90.0, 16.0 ],
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line 0 30",
																	"id" : "obj-98",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 3,
																	"numoutlets" : 3,
																	"patching_rect" : [ 730.0, 422.0, 56.0, 18.0 ],
																	"outlettype" : [ "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"id" : "obj-99",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 534.0, 532.0, 27.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "hack to allow glissandi which aren't implemented in the controller window.",
																	"id" : "obj-100",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 244.0, 100.0, 374.0, 18.0 ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "linedrive 154 0.02 1.06 30",
																	"id" : "obj-101",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 567.0, 218.0, 150.0, 18.0 ],
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"id" : "obj-102",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"patching_rect" : [ 767.0, 561.0, 36.0, 18.0 ],
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "> 0.",
																	"id" : "obj-103",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 853.0, 564.0, 27.0, 18.0 ],
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 10",
																	"id" : "obj-104",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 853.0, 597.0, 59.0, 18.0 ],
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"id" : "obj-105",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"patching_rect" : [ 853.0, 621.0, 36.0, 18.0 ],
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "-~",
																	"id" : "obj-106",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 613.0, 711.0, 27.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"id" : "obj-107",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 633.0, 739.0, 27.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+~",
																	"id" : "obj-108",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 585.0, 813.0, 27.0, 18.0 ],
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0.",
																	"id" : "obj-109",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 739.0, 510.0, 25.0, 18.0 ],
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route 0.",
																	"id" : "obj-110",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"patching_rect" : [ 739.0, 486.0, 49.0, 18.0 ],
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "mtof",
																	"id" : "obj-111",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 917.0, 465.0, 32.0, 18.0 ],
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 60.",
																	"id" : "obj-112",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"patching_rect" : [ 917.0, 434.0, 37.0, 18.0 ],
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t f",
																	"id" : "obj-113",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 804.0, 456.0, 19.0, 18.0 ],
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "nothing osc2~ vib1.snd",
																	"id" : "obj-114",
																	"fontname" : "Arial",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"patching_rect" : [ 66.0, 259.0, 123.0, 18.0 ],
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"id" : "obj-115",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"patching_rect" : [ 220.0, 40.0, 25.0, 25.0 ],
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-116",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 585.0, 907.161499, 25.0, 25.0 ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"id" : "obj-117",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 660.0, 907.161499, 25.0, 25.0 ],
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-99", 0 ],
																	"destination" : [ "obj-37", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-99", 0 ],
																	"destination" : [ "obj-108", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-99", 0 ],
																	"destination" : [ "obj-106", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-98", 0 ],
																	"destination" : [ "obj-92", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-97", 0 ],
																	"destination" : [ "obj-78", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-97", 0 ],
																	"destination" : [ "obj-77", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-97", 0 ],
																	"destination" : [ "obj-68", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-97", 0 ],
																	"destination" : [ "obj-67", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-96", 0 ],
																	"destination" : [ "obj-95", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-95", 0 ],
																	"destination" : [ "obj-94", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-94", 0 ],
																	"destination" : [ "obj-93", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-93", 1 ],
																	"destination" : [ "obj-92", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-93", 0 ],
																	"destination" : [ "obj-89", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-93", 0 ],
																	"destination" : [ "obj-42", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-92", 0 ],
																	"destination" : [ "obj-89", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-91", 0 ],
																	"destination" : [ "obj-96", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-91", 1 ],
																	"destination" : [ "obj-90", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-90", 1 ],
																	"destination" : [ "obj-94", 1 ],
																	"hidden" : 0,
																	"midpoints" : [ 774.0, 316.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-90", 0 ],
																	"destination" : [ "obj-87", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-89", 0 ],
																	"destination" : [ "obj-55", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-88", 0 ],
																	"destination" : [ "obj-99", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-88", 0 ],
																	"destination" : [ "obj-96", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-87", 0 ],
																	"destination" : [ "obj-94", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-86", 0 ],
																	"destination" : [ "obj-56", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-86", 0 ],
																	"destination" : [ "obj-55", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-85", 0 ],
																	"destination" : [ "obj-83", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-84", 0 ],
																	"destination" : [ "obj-86", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-84", 0 ],
																	"destination" : [ "obj-35", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-83", 0 ],
																	"destination" : [ "obj-84", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-82", 0 ],
																	"destination" : [ "obj-84", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-81", 0 ],
																	"destination" : [ "obj-77", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-81", 0 ],
																	"destination" : [ "obj-67", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-80", 0 ],
																	"destination" : [ "obj-72", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-79", 0 ],
																	"destination" : [ "obj-64", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-78", 0 ],
																	"destination" : [ "obj-75", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-77", 0 ],
																	"destination" : [ "obj-71", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-76", 0 ],
																	"destination" : [ "obj-79", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-75", 0 ],
																	"destination" : [ "obj-76", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-74", 0 ],
																	"destination" : [ "obj-75", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-74", 0 ],
																	"destination" : [ "obj-71", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-73", 0 ],
																	"destination" : [ "obj-79", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-72", 0 ],
																	"destination" : [ "obj-73", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-71", 0 ],
																	"destination" : [ "obj-80", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-70", 0 ],
																	"destination" : [ "obj-54", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-69", 0 ],
																	"destination" : [ "obj-64", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-68", 0 ],
																	"destination" : [ "obj-65", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-67", 0 ],
																	"destination" : [ "obj-53", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-66", 0 ],
																	"destination" : [ "obj-69", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-65", 0 ],
																	"destination" : [ "obj-66", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-64", 0 ],
																	"destination" : [ "obj-99", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 390.0, 847.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-63", 0 ],
																	"destination" : [ "obj-65", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-63", 0 ],
																	"destination" : [ "obj-53", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-62", 0 ],
																	"destination" : [ "obj-69", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-60", 0 ],
																	"destination" : [ "obj-78", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-60", 0 ],
																	"destination" : [ "obj-77", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-60", 0 ],
																	"destination" : [ "obj-74", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-59", 0 ],
																	"destination" : [ "obj-60", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-58", 0 ],
																	"destination" : [ "obj-68", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-58", 0 ],
																	"destination" : [ "obj-67", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-58", 0 ],
																	"destination" : [ "obj-63", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-58", 0 ],
																	"destination" : [ "obj-59", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-56", 0 ],
																	"destination" : [ "obj-81", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-55", 0 ],
																	"destination" : [ "obj-78", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-55", 0 ],
																	"destination" : [ "obj-68", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-54", 0 ],
																	"destination" : [ "obj-62", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-53", 0 ],
																	"destination" : [ "obj-70", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-52", 7 ],
																	"destination" : [ "obj-98", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 814.0, 183.0, 887.0, 296.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-52", 5 ],
																	"destination" : [ "obj-91", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 739.0, 203.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-52", 3 ],
																	"destination" : [ "obj-51", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-52", 2 ],
																	"destination" : [ "obj-50", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-52", 4 ],
																	"destination" : [ "obj-43", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-52", 0 ],
																	"destination" : [ "obj-40", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-52", 1 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-52", 6 ],
																	"destination" : [ "obj-113", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 789.0, 193.0, 925.0, 390.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-51", 0 ],
																	"destination" : [ "obj-36", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-50", 0 ],
																	"destination" : [ "obj-85", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-45", 0 ],
																	"destination" : [ "obj-86", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-45", 0 ],
																	"destination" : [ "obj-83", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-44", 0 ],
																	"destination" : [ "obj-117", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-44", 0 ],
																	"destination" : [ "obj-106", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-43", 0 ],
																	"destination" : [ "obj-88", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-41", 0 ],
																	"destination" : [ "obj-85", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-40", 0 ],
																	"destination" : [ "obj-82", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-37", 0 ],
																	"destination" : [ "obj-44", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-36", 0 ],
																	"destination" : [ "obj-56", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-35", 0 ],
																	"destination" : [ "obj-58", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-41", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-115", 0 ],
																	"destination" : [ "obj-52", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-113", 0 ],
																	"destination" : [ "obj-39", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-113", 0 ],
																	"destination" : [ "obj-110", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-113", 0 ],
																	"destination" : [ "obj-103", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-112", 0 ],
																	"destination" : [ "obj-111", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-111", 0 ],
																	"destination" : [ "obj-102", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-110", 1 ],
																	"destination" : [ "obj-112", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-110", 0 ],
																	"destination" : [ "obj-109", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-109", 0 ],
																	"destination" : [ "obj-102", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-108", 0 ],
																	"destination" : [ "obj-116", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-107", 0 ],
																	"destination" : [ "obj-108", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-106", 0 ],
																	"destination" : [ "obj-107", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-105", 0 ],
																	"destination" : [ "obj-107", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-104", 0 ],
																	"destination" : [ "obj-105", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-103", 0 ],
																	"destination" : [ "obj-104", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-102", 0 ],
																	"destination" : [ "obj-44", 2 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-101", 0 ],
																	"destination" : [ "obj-88", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Arial",
														"globalpatchername" : "",
														"default_fontface" : 0,
														"default_fontname" : "Arial",
														"fontface" : 0,
														"fontsize" : 12.0,
														"default_fontsize" : 12.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "read :thisthis",
													"id" : "obj-17",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 650.0, 198.0, 79.0, 18.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s synth-params",
													"id" : "obj-48",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 82.0, 420.0, 93.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak 1. 1. 1. 1. 1.1 .",
													"id" : "obj-47",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 6,
													"numoutlets" : 1,
													"patching_rect" : [ 82.0, 380.0, 110.0, 20.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "preset",
													"id" : "obj-3",
													"spacing" : 2,
													"bubblesize" : 8,
													"numinlets" : 1,
													"numoutlets" : 4,
													"patching_rect" : [ 504.0, 224.0, 120.0, 18.0 ],
													"margin" : 4,
													"outlettype" : [ "preset", "int", "preset", "int" ],
													"preset_data" : [ 														{
															"number" : 1,
															"data" : [ 5, "obj-22", "flonum", "float", 0.0, 5, "obj-23", "flonum", "float", 0.0, 5, "obj-24", "flonum", "float", 0.0, 5, "obj-18", "flonum", "float", 1.8, 5, "obj-19", "flonum", "float", 60.0, 5, "obj-30", "flonum", "float", 0.5, 5, "obj-32", "number", "int", 60 ]
														}
, 														{
															"number" : 2,
															"data" : [ 5, "obj-22", "flonum", "float", 0.0, 5, "obj-23", "flonum", "float", 25.0, 5, "obj-24", "flonum", "float", 40.0, 5, "obj-18", "flonum", "float", 0.0, 5, "obj-19", "flonum", "float", 81.0, 5, "obj-30", "flonum", "float", 0.5, 5, "obj-32", "number", "int", 60 ]
														}
, 														{
															"number" : 3,
															"data" : [ 5, "obj-22", "flonum", "float", 0.0, 5, "obj-23", "flonum", "float", 5.0, 5, "obj-24", "flonum", "float", 7.0, 5, "obj-18", "flonum", "float", 15.0, 5, "obj-19", "flonum", "float", 26.0, 5, "obj-30", "flonum", "float", 0.5, 5, "obj-32", "number", "int", 60 ]
														}
, 														{
															"number" : 4,
															"data" : [ 5, "obj-22", "flonum", "float", 0.0, 5, "obj-23", "flonum", "float", 66.0, 5, "obj-24", "flonum", "float", 55.0, 5, "obj-18", "flonum", "float", 44.0, 5, "obj-19", "flonum", "float", 33.0, 5, "obj-30", "flonum", "float", 0.5, 5, "obj-32", "number", "int", 11 ]
														}
, 														{
															"number" : 5,
															"data" : [ 5, "obj-22", "flonum", "float", 0.0, 5, "obj-23", "flonum", "float", 43.0, 5, "obj-24", "flonum", "float", 170.0, 5, "obj-18", "flonum", "float", 3.0, 5, "obj-19", "flonum", "float", 493.0, 5, "obj-30", "flonum", "float", 0.5, 5, "obj-32", "number", "int", 41 ]
														}
, 														{
															"number" : 6,
															"data" : [ 5, "obj-22", "flonum", "float", 0.0, 5, "obj-23", "flonum", "float", 0.0, 5, "obj-24", "flonum", "float", 0.0, 5, "obj-18", "flonum", "float", 2.4, 5, "obj-19", "flonum", "float", 68.0, 5, "obj-30", "flonum", "float", 0.5, 5, "obj-32", "number", "int", 13 ]
														}
, 														{
															"number" : 7,
															"data" : [ 5, "obj-22", "flonum", "float", 0.0, 5, "obj-23", "flonum", "float", 16.0, 5, "obj-24", "flonum", "float", 6.0, 5, "obj-18", "flonum", "float", 47.900002, 5, "obj-19", "flonum", "float", 3.0, 5, "obj-30", "flonum", "float", 0.16, 5, "obj-32", "number", "int", 42 ]
														}
, 														{
															"number" : 8,
															"data" : [ 5, "obj-22", "flonum", "float", 0.0, 5, "obj-23", "flonum", "float", 16.0, 5, "obj-24", "flonum", "float", 8.0, 5, "obj-18", "flonum", "float", 91.0, 5, "obj-19", "flonum", "float", 37.0, 5, "obj-30", "flonum", "float", 0.16, 5, "obj-32", "number", "int", 42 ]
														}
 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "scope~",
													"id" : "obj-4",
													"rounded" : 0,
													"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ],
													"numinlets" : 2,
													"numoutlets" : 0,
													"patching_rect" : [ 500.0, 499.0, 130.0, 130.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number~",
													"id" : "obj-5",
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"interval" : 250.0,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"mode" : 2,
													"fontsize" : 9.0,
													"sig" : 0.0,
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 247.0, 491.0, 180.0, 17.0 ],
													"outlettype" : [ "signal", "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "bitsafe~",
													"id" : "obj-7",
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 168.0, 522.0, 50.0, 17.0 ],
													"outlettype" : [ "signal" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.5",
													"id" : "obj-12",
													"fontname" : "Arial",
													"hidden" : 1,
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 323.0, 313.0, 21.0, 15.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "60",
													"id" : "obj-13",
													"fontname" : "Arial",
													"hidden" : 1,
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 391.0, 313.0, 20.0, 15.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "60",
													"id" : "obj-14",
													"fontname" : "Arial",
													"hidden" : 1,
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 252.0, 313.0, 20.0, 15.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"id" : "obj-15",
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 252.0, 271.0, 46.0, 17.0 ],
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"id" : "obj-18",
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"triscale" : 0.9,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"minimum" : 0.0,
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 449.0, 332.0, 52.0, 17.0 ],
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"id" : "obj-19",
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"triscale" : 0.9,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"minimum" : 0.0,
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 391.0, 332.0, 52.0, 17.0 ],
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "mtof 1.",
													"id" : "obj-20",
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 449.0, 356.0, 38.0, 17.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "mtof 1.",
													"id" : "obj-21",
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 391.0, 355.0, 38.0, 17.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"id" : "obj-22",
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"triscale" : 0.9,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 637.0, 332.0, 35.0, 17.0 ],
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"id" : "obj-23",
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"triscale" : 0.9,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"minimum" : 0.0,
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 574.0, 332.0, 52.0, 17.0 ],
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"id" : "obj-24",
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"triscale" : 0.9,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"minimum" : 0.0,
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 511.0, 332.0, 52.0, 17.0 ],
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "shift $1 100",
													"id" : "obj-25",
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 637.0, 380.0, 65.0, 15.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "vfr $1 100",
													"id" : "obj-26",
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 574.0, 380.0, 59.0, 15.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "vib $1 100",
													"id" : "obj-27",
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 511.0, 380.0, 58.0, 15.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bw $1 100",
													"id" : "obj-28",
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 449.0, 380.0, 55.0, 15.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "cf $1 100",
													"id" : "obj-29",
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 391.0, 380.0, 53.0, 15.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"id" : "obj-30",
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"triscale" : 0.9,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"minimum" : 0.0,
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 323.0, 332.0, 52.0, 17.0 ],
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "amp $1 100",
													"id" : "obj-31",
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 323.0, 380.0, 62.0, 15.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"id" : "obj-32",
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"triscale" : 0.9,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"minimum" : 0,
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 252.0, 332.0, 35.0, 17.0 ],
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "mtof 1.",
													"id" : "obj-33",
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 252.0, 357.0, 38.0, 17.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "freq $1 100",
													"id" : "obj-34",
													"fontname" : "Arial",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 252.0, 380.0, 63.0, 15.0 ],
													"outlettype" : [ "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
<<<<<<< HEAD
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-120", 0 ],
=======
													"destination" : [ "obj-2", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"disabled" : 0,
>>>>>>> refs/heads/master
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-118", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-118", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-47", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
<<<<<<< HEAD
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-118", 0 ],
=======
													"destination" : [ "obj-18", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"disabled" : 0,
>>>>>>> refs/heads/master
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-118", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-118", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-118", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-118", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-47", 4 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-47", 5 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-47", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-47", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-122", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-119", 0 ],
													"destination" : [ "obj-122", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-118", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-118", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-118", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
<<<<<<< HEAD
=======
									"patching_rect" : [ 634.0, 252.5, 59.0, 20.0 ],
>>>>>>> refs/heads/master
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "5. map",
									"id" : "obj-19",
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Arial",
									"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 200.5, 181.0, 47.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "4. train",
									"id" : "obj-18",
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Arial",
									"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 51.5, 298.0, 47.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "3.  give examples of classes 1, 2, 3, ...",
									"id" : "obj-7",
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Arial",
									"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 87.0, 69.0, 214.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2. train",
									"id" : "obj-5",
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Arial",
									"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 174.0, 131.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1. clear",
									"id" : "obj-4",
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Arial",
									"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -1.5, 298.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "acceleration data from TouchOSC",
									"id" : "obj-3",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 322.0, 97.0, 190.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0.027054 -0.012039 -1.002777",
									"id" : "obj-1",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 337.0, 279.5, 200.0, 18.0 ],
<<<<<<< HEAD
									"outlettype" : [ "" ]
=======
									"text" : "0.003845 0.033249 -1.006378"
>>>>>>> refs/heads/master
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "map 0.027054 -0.012039 -1.002777",
									"id" : "obj-37",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"numoutlets" : 1,
<<<<<<< HEAD
									"patching_rect" : [ 126.0, 344.0, 211.0, 18.0 ],
									"outlettype" : [ "" ]
=======
									"outlettype" : [ "" ],
									"patching_rect" : [ 118.5, 377.0, 211.0, 18.0 ],
									"text" : "map 0.003845 0.033249 -1.006378"
>>>>>>> refs/heads/master
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"id" : "obj-42",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 5.0, 325.0, 37.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p train-map",
									"id" : "obj-35",
									"fontname" : "Arial",
									"fontsize" : 12.0,
<<<<<<< HEAD
									"numinlets" : 3,
=======
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 4,
>>>>>>> refs/heads/master
									"numoutlets" : 1,
									"patching_rect" : [ 103.0, 292.0, 71.0, 20.0 ],
									"outlettype" : [ "" ],
									"patcher" : 									{
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"id" : "obj-5",
													"fontname" : "Arial",
													"fontsize" : 12.0,
<<<<<<< HEAD
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 133.0, 273.0, 41.0, 20.0 ],
													"outlettype" : [ "", "" ]
=======
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 154.0, 256.0, 40.0, 20.0 ],
													"text" : "zl reg"
>>>>>>> refs/heads/master
												}

											}
, 											{
												"box" : 												{
<<<<<<< HEAD
													"maxclass" : "newobj",
													"text" : "r synth-params",
													"id" : "obj-48",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 458.0, 112.0, 91.0, 20.0 ],
													"outlettype" : [ "" ]
=======
													"comment" : "",
													"id" : "obj-2",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 390.0, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 154.0, 312.0, 41.0, 20.0 ],
													"text" : "zl join"
>>>>>>> refs/heads/master
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"id" : "obj-1",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 50.0, 112.0, 32.5, 20.0 ],
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend map",
													"id" : "obj-26",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 246.0, 348.0, 81.0, 20.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
<<<<<<< HEAD
=======
													"id" : "obj-24",
													"int" : 1,
>>>>>>> refs/heads/master
													"maxclass" : "gswitch2",
													"id" : "obj-24",
													"int" : 1,
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 226.0, 100.0, 39.0, 32.0 ],
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "add 0.213028 -0.291046 -0.947083 60. 0.5 81. 0. 40.",
													"linecount" : 9,
													"id" : "obj-23",
													"fontname" : "Arial",
													"fontsize" : 12.0,
<<<<<<< HEAD
													"numinlets" : 2,
													"numoutlets" : 1,
													"patching_rect" : [ 123.0, 507.0, 50.0, 129.0 ],
													"outlettype" : [ "" ]
=======
													"id" : "obj-23",
													"linecount" : 9,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 123.0, 507.0, 50.0, 125.0 ],
													"text" : "add 42. 0.16 3. 47.9 6.  0.087082 -0.507233 0.835892"
>>>>>>> refs/heads/master
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"id" : "obj-21",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"patching_rect" : [ 61.0, 160.0, 32.5, 20.0 ],
													"outlettype" : [ "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend add",
													"id" : "obj-18",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"numoutlets" : 1,
													"patching_rect" : [ 154.0, 409.0, 78.0, 20.0 ],
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
<<<<<<< HEAD
													"maxclass" : "newobj",
													"text" : "zl reg",
													"id" : "obj-16",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"numinlets" : 2,
													"numoutlets" : 2,
													"patching_rect" : [ 117.0, 217.0, 40.0, 20.0 ],
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
=======
													"comment" : "",
													"id" : "obj-31",
>>>>>>> refs/heads/master
													"maxclass" : "inlet",
													"id" : "obj-31",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 61.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-32",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 226.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-33",
													"numinlets" : 0,
													"numoutlets" : 1,
													"patching_rect" : [ 246.0, 40.0, 25.0, 25.0 ],
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-34",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 195.0, 665.0, 25.0, 25.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-5", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
<<<<<<< HEAD
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
=======
													"destination" : [ "obj-23", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-18", 0 ]
>>>>>>> refs/heads/master
												}

											}
, 											{
												"patchline" : 												{
<<<<<<< HEAD
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-24", 1 ],
=======
													"destination" : [ "obj-34", 0 ],
													"disabled" : 0,
>>>>>>> refs/heads/master
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
<<<<<<< HEAD
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
=======
													"destination" : [ "obj-3", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-2", 0 ]
>>>>>>> refs/heads/master
												}

											}
, 											{
												"patchline" : 												{
<<<<<<< HEAD
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-1", 0 ],
=======
													"destination" : [ "obj-3", 0 ],
													"disabled" : 0,
>>>>>>> refs/heads/master
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
<<<<<<< HEAD
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
=======
													"destination" : [ "obj-26", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-24", 1 ]
>>>>>>> refs/heads/master
												}

											}
, 											{
												"patchline" : 												{
<<<<<<< HEAD
													"source" : [ "obj-24", 1 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
=======
													"destination" : [ "obj-5", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-24", 0 ]
>>>>>>> refs/heads/master
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-16", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
<<<<<<< HEAD
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
=======
													"destination" : [ "obj-5", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-3", 0 ]
>>>>>>> refs/heads/master
												}

											}
, 											{
												"patchline" : 												{
<<<<<<< HEAD
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
=======
													"destination" : [ "obj-1", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-31", 0 ]
>>>>>>> refs/heads/master
												}

											}
, 											{
												"patchline" : 												{
<<<<<<< HEAD
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-23", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
=======
													"destination" : [ "obj-24", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-32", 0 ]
>>>>>>> refs/heads/master
												}

											}
, 											{
												"patchline" : 												{
<<<<<<< HEAD
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
=======
													"destination" : [ "obj-24", 1 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-33", 0 ]
>>>>>>> refs/heads/master
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"globalpatchername" : "",
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontsize" : 12.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"id" : "obj-25",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"items" : [ "train", ",", "map" ],
									"numoutlets" : 3,
									"types" : [  ],
									"patching_rect" : [ 174.0, 161.0, 100.0, 20.0 ],
									"outlettype" : [ "int", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route /accxyz",
									"id" : "obj-15",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 288.0, 220.0, 81.0, 20.0 ],
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/accxyz 0.027054 -0.012039 -1.002777",
									"id" : "obj-14",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 337.0, 176.0, 228.0, 18.0 ],
<<<<<<< HEAD
									"outlettype" : [ "" ]
=======
									"text" : "/accxyz 0.003845 0.033249 -1.006378"
>>>>>>> refs/heads/master
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "udpreceive 8000",
									"id" : "obj-12",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 288.0, 138.0, 99.0, 20.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "train",
									"id" : "obj-6",
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 51.5, 325.0, 34.0, 18.0 ],
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-11",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 62.666687, 460.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-20", 0 ],
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-15", 0 ],
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
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-35", 2 ],
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
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-35", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
<<<<<<< HEAD
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-8", 0 ],
=======
									"destination" : [ "obj-2", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 3 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"disabled" : 0,
>>>>>>> refs/heads/master
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print to-ml.mlp",
					"id" : "obj-21",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
<<<<<<< HEAD
					"patching_rect" : [ 258.0, 641.0, 87.0, 20.0 ]
=======
					"patching_rect" : [ 288.0, 504.0, 87.0, 20.0 ],
					"text" : "print to-ml.mlp"
>>>>>>> refs/heads/master
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s mlp",
					"id" : "obj-80",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 732.0, 741.0, 39.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s mlp",
					"id" : "obj-79",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 731.0, 641.0, 39.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s mlp",
					"id" : "obj-78",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 731.0, 556.0, 39.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s mlp",
					"id" : "obj-77",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 727.0, 473.0, 39.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "toggle[1]",
					"id" : "obj-75",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 873.0, 682.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "randomize_training_order $1",
					"id" : "obj-76",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 873.0, 712.0, 164.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "number[5]",
					"id" : "obj-73",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 732.0, 680.0, 50.0, 20.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "validation_set_size $1",
					"id" : "obj-74",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 732.0, 713.0, 129.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "number[4]",
					"id" : "obj-71",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 1086.0, 585.0, 50.0, 20.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "rand_training_iterations $1",
					"id" : "obj-72",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 1086.0, 618.0, 153.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "umenu[2]",
					"id" : "obj-69",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"items" : [ "LINEAR", ",", "SIGMOID", ",", "BIPOLAR", "SIGMOID" ],
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 906.0, 585.0, 102.0, 20.0 ],
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "output_activation_function $1",
					"id" : "obj-70",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 906.0, 618.0, 167.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "umenu[3]",
					"id" : "obj-67",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"items" : [ "LINEAR", ",", "SIGMOID", ",", "BIPOLAR", "SIGMOID" ],
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 731.0, 586.0, 102.0, 20.0 ],
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "hidden_activation_function $1",
					"id" : "obj-68",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 731.0, 619.0, 169.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "umenu[1]",
					"id" : "obj-61",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"items" : [ "LINEAR", ",", "SIGMOID", ",", "BIPOLAR", "SIGMOID" ],
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 980.0, 494.0, 102.0, 20.0 ],
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "input_activation_function $1",
					"id" : "obj-66",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 980.0, 527.0, 159.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "flonum[4]",
					"id" : "obj-56",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 839.0, 497.0, 50.0, 20.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "null_rejection_coeff $1",
					"id" : "obj-60",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 839.0, 528.0, 131.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "toggle",
					"id" : "obj-54",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 731.0, 499.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "null_rejection $1",
					"id" : "obj-47",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 731.0, 529.0, 98.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "flonum",
					"id" : "obj-43",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 1024.0, 409.0, 50.0, 20.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "gamma $1",
					"id" : "obj-45",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 1024.0, 440.0, 67.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "flonum[1]",
					"id" : "obj-35",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 932.0, 409.0, 50.0, 20.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "momentum $1",
					"id" : "obj-41",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 932.0, 440.0, 87.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "flonum[2]",
					"id" : "obj-26",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 833.0, 409.0, 50.0, 20.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "training_rate $1",
					"id" : "obj-27",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 833.0, 440.0, 94.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "flonum[3]",
					"id" : "obj-25",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 727.0, 409.0, 50.0, 20.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "min_change $1",
					"id" : "obj-23",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 727.0, 440.0, 93.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "number",
					"id" : "obj-18",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 1128.0, 297.0, 50.0, 20.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "max_epochs $1",
					"id" : "obj-19",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 1128.0, 330.0, 95.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "number[1]",
					"id" : "obj-16",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 1033.0, 296.0, 50.0, 20.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "min_epochs $1",
					"id" : "obj-17",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 1033.0, 329.0, 92.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "number[2]",
					"id" : "obj-14",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 935.0, 294.0, 50.0, 20.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "num_hidden $1",
					"id" : "obj-15",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 935.0, 327.0, 93.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "number[3]",
					"id" : "obj-13",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 833.0, 294.0, 50.0, 20.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "error",
					"id" : "obj-12",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 727.0, 182.0, 36.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s mlp",
					"id" : "obj-9",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 727.0, 215.0, 39.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Object-Specific Messages",
					"id" : "obj-2",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 818.0, 152.0, 151.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "conformpath slash boot",
					"id" : "obj-4",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 276.0, 271.0, 135.0, 20.0 ],
					"outlettype" : [ "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-8",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 276.0, 225.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "opendialog",
					"id" : "obj-10",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 276.0, 250.0, 69.0, 20.0 ],
					"outlettype" : [ "", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s mlp",
					"id" : "obj-65",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 727.0, 377.0, 39.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getprobs",
					"id" : "obj-64",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 410.0, 433.0, 57.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Common Attributes",
					"id" : "obj-63",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 254.0, 363.0, 111.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getscaling",
					"id" : "obj-62",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 341.0, 433.0, 65.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-59",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 279.0, 400.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "probs $1",
					"id" : "obj-58",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 279.0, 433.0, 57.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-57",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 210.0, 400.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "scaling $1",
					"id" : "obj-55",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 210.0, 433.0, 65.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s mlp",
					"id" : "obj-53",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 128.0, 529.0, 39.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s mlp",
					"id" : "obj-52",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 101.0, 359.0, 39.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r mlp",
					"id" : "obj-51",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 129.0, 564.0, 37.0, 20.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Object-Specific Attributes",
					"id" : "obj-50",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 826.0, 258.0, 151.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Common Messages",
					"id" : "obj-49",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.0, 28.0, 117.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "umenu",
					"id" : "obj-44",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"items" : [ "classification", ",", "regression" ],
					"numoutlets" : 3,
					"types" : [  ],
					"patching_rect" : [ 727.0, 295.0, 102.0, 20.0 ],
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mode $1",
					"id" : "obj-42",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 727.0, 328.0, 57.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 0 1",
					"id" : "obj-37",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 458.0, 256.0, 37.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1 1 0",
					"id" : "obj-38",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 433.0, 225.0, 37.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "expect 1",
					"id" : "obj-39",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 513.0, 252.0, 67.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "expect 2",
					"id" : "obj-40",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 512.0, 225.0, 67.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/tmp/mlp.txt",
					"id" : "obj-36",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
<<<<<<< HEAD
					"patching_rect" : [ 181.0, 225.0, 73.0, 18.0 ],
					"outlettype" : [ "" ]
=======
					"outlettype" : [ "" ],
					"patching_rect" : [ 158.0, 88.0, 73.0, 18.0 ],
					"text" : "/mlp-test.txt"
>>>>>>> refs/heads/master
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend map",
					"id" : "obj-28",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 433.0, 296.0, 81.0, 20.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "help",
					"id" : "obj-29",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 647.0, 296.0, 33.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend load",
					"id" : "obj-3",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 275.0, 296.0, 81.0, 20.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend save",
					"id" : "obj-30",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 181.0, 296.0, 83.0, 20.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend add",
					"id" : "obj-31",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 101.0, 296.0, 78.0, 20.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "train",
					"id" : "obj-32",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 610.0, 296.0, 34.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"id" : "obj-33",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 571.0, 296.0, 37.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getattributes",
					"id" : "obj-34",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 128.0, 433.0, 77.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route map attributes",
					"id" : "obj-6",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 3,
<<<<<<< HEAD
					"patching_rect" : [ 156.0, 680.0, 117.0, 20.0 ],
					"outlettype" : [ "", "", "" ]
=======
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 186.0, 543.0, 117.0, 20.0 ],
					"text" : "route map attributes"
>>>>>>> refs/heads/master
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "num_outputs $1",
					"id" : "obj-5",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 833.0, 327.0, 97.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2 1 1 0",
					"id" : "obj-22",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 125.0, 155.0, 47.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1 0 0 1",
					"id" : "obj-20",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 155.0, 178.0, 47.0, 18.0 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ml.mlp",
					"id" : "obj-1",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 129.0, 601.0, 46.0, 20.0 ],
					"outlettype" : [ "", "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
<<<<<<< HEAD
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-86", 0 ],
=======
					"destination" : [ "obj-46", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
>>>>>>> refs/heads/master
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
=======
					"destination" : [ "obj-85", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
>>>>>>> refs/heads/master
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-78", 0 ],
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
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-81", 0 ],
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
					"destination" : [ "obj-60", 0 ],
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
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-21", 0 ],
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
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-42", 0 ],
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
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
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
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-41", 0 ],
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
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-27", 0 ],
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
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-77", 0 ],
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
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
=======
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"disabled" : 0,
>>>>>>> refs/heads/master
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
