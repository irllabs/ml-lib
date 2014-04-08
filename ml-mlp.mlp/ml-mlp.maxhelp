{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 0.0, 44.0, 1226.0, 647.0 ],
		"bglocked" : 0,
		"defrect" : [ 0.0, 44.0, 1226.0, 647.0 ],
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
					"maxclass" : "preset",
					"numinlets" : 1,
					"id" : "obj-7",
					"patching_rect" : [ 1063.0, 34.0, 100.0, 40.0 ],
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-18", "number", "int", 100, 5, "obj-71", "number", "int", 10, 5, "obj-16", "number", "int", 10, 5, "obj-43", "flonum", "float", 2.0, 5, "obj-61", "umenu", "int", 0, 5, "obj-14", "number", "int", 1, 5, "obj-35", "flonum", "float", 0.5, 5, "obj-69", "umenu", "int", 0, 5, "obj-75", "toggle", "int", 0, 5, "obj-56", "flonum", "float", 0.9, 5, "obj-26", "flonum", "float", 0.1, 5, "obj-13", "number", "int", 6, 5, "obj-73", "number", "int", 20, 5, "obj-67", "umenu", "int", 0, 5, "obj-54", "toggle", "int", 1, 5, "obj-25", "flonum", "float", 0.00001, 5, "obj-44", "umenu", "int", 0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-18", "number", "int", 200, 5, "obj-71", "number", "int", 10, 5, "obj-16", "number", "int", 150, 5, "obj-43", "flonum", "float", 2.0, 5, "obj-61", "umenu", "int", 0, 5, "obj-14", "number", "int", 3, 5, "obj-35", "flonum", "float", 0.5, 5, "obj-69", "umenu", "int", 0, 5, "obj-75", "toggle", "int", 0, 5, "obj-56", "flonum", "float", 0.9, 5, "obj-26", "flonum", "float", 0.05, 5, "obj-13", "number", "int", 6, 5, "obj-73", "number", "int", 20, 5, "obj-67", "umenu", "int", 0, 5, "obj-54", "toggle", "int", 1, 5, "obj-25", "flonum", "float", 0.00001, 5, "obj-44", "umenu", "int", 1 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-18", "number", "int", 400, 5, "obj-71", "number", "int", 10, 5, "obj-16", "number", "int", 300, 5, "obj-43", "flonum", "float", 2.0, 5, "obj-61", "umenu", "int", 2, 5, "obj-14", "number", "int", 7, 5, "obj-35", "flonum", "float", 0.5, 5, "obj-69", "umenu", "int", 2, 5, "obj-75", "toggle", "int", 0, 5, "obj-56", "flonum", "float", 0.9, 5, "obj-26", "flonum", "float", 0.1, 5, "obj-13", "number", "int", 6, 5, "obj-73", "number", "int", 20, 5, "obj-67", "umenu", "int", 2, 5, "obj-54", "toggle", "int", 1, 5, "obj-25", "flonum", "float", 0.00001, 5, "obj-44", "umenu", "int", 1 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print <<<ml",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-87",
					"patching_rect" : [ 106.0, 603.0, 71.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"id" : "obj-85",
					"patching_rect" : [ 100.0, 515.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"id" : "obj-46",
					"patching_rect" : [ 242.0, 515.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s mlp",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-86",
					"patching_rect" : [ 274.5, 603.0, 39.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print else",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-84",
					"patching_rect" : [ 405.5, 575.0, 59.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf get%s",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-83",
					"patching_rect" : [ 274.5, 575.0, 80.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "iter",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-82",
					"patching_rect" : [ 242.5, 575.0, 27.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print map",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-81",
					"patching_rect" : [ 193.5, 603.0, 61.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s from-ml",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-48",
					"patching_rect" : [ 11.0, 603.0, 60.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p test",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"id" : "obj-24",
					"patching_rect" : [ 11.0, 296.0, 40.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 6.0, 482.0, 876.0, 351.0 ],
						"bglocked" : 0,
						"defrect" : [ 6.0, 482.0, 876.0, 351.0 ],
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
						"visible" : 1,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-16",
									"patching_rect" : [ 633.666687, 104.0, 50.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "preset",
									"numinlets" : 1,
									"id" : "obj-9",
									"patching_rect" : [ 603.0, 74.0, 111.0, 16.0 ],
									"numoutlets" : 4,
									"outlettype" : [ "preset", "int", "preset", "int" ],
									"preset_data" : [ 										{
											"number" : 1,
											"data" : [ 5, "obj-25", "umenu", "int", 0, 5, "obj-21", "live.gain~", "float", -24.195276, 5, "obj-27", "toggle", "int", 0, 5, "obj-16", "number", "int", 0 ]
										}
, 										{
											"number" : 2,
											"data" : [ 5, "obj-25", "umenu", "int", 0, 5, "obj-21", "live.gain~", "float", -24.195276, 5, "obj-27", "toggle", "int", 0, 5, "obj-16", "number", "int", 0 ]
										}
, 										{
											"number" : 3,
											"data" : [ 5, "obj-25", "umenu", "int", 0, 5, "obj-21", "live.gain~", "float", -24.195276, 5, "obj-27", "toggle", "int", 0, 5, "obj-16", "number", "int", 0 ]
										}
, 										{
											"number" : 4,
											"data" : [ 5, "obj-25", "umenu", "int", 0, 5, "obj-21", "live.gain~", "float", -24.195276, 5, "obj-27", "toggle", "int", 0, 5, "obj-16", "number", "int", 0 ]
										}
, 										{
											"number" : 5,
											"data" : [ 5, "obj-25", "umenu", "int", 0, 5, "obj-21", "live.gain~", "float", -24.195276, 5, "obj-27", "toggle", "int", 0, 5, "obj-16", "number", "int", 0 ]
										}
, 										{
											"number" : 6,
											"data" : [ 5, "obj-25", "umenu", "int", 0, 5, "obj-21", "live.gain~", "float", -24.195276, 5, "obj-27", "toggle", "int", 0, 5, "obj-16", "number", "int", 0 ]
										}
, 										{
											"number" : 7,
											"data" : [ 5, "obj-25", "umenu", "int", 0, 5, "obj-21", "live.gain~", "float", -24.195276, 5, "obj-27", "toggle", "int", 0, 5, "obj-16", "number", "int", 0 ]
										}
, 										{
											"number" : 8,
											"data" : [ 5, "obj-25", "umenu", "int", 0, 5, "obj-21", "live.gain~", "float", -24.195276, 5, "obj-27", "toggle", "int", 0, 5, "obj-16", "number", "int", 0 ]
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "60. 0.5 60. 1. 1. 1.",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-2",
									"patching_rect" : [ 337.0, 283.0, 262.0, 18.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r synth-params",
									"fontsize" : 12.0,
									"numinlets" : 0,
									"id" : "obj-48",
									"patching_rect" : [ 225.0, 198.5, 91.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-27",
									"patching_rect" : [ 39.5, 33.0, 20.0, 20.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 20",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-24",
									"patching_rect" : [ 39.5, 87.0, 58.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "presets",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-23",
									"patching_rect" : [ 662.0, 47.0, 50.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "live.gain~",
									"varname" : "live.gain~",
									"numinlets" : 3,
									"id" : "obj-21",
									"patching_rect" : [ 619.0, 176.5, 48.0, 64.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"saved_attribute_attributes" : [  ],
									"parameter_enable" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ezdac~",
									"numinlets" : 2,
									"id" : "obj-20",
									"patching_rect" : [ 619.0, 271.0, 45.0, 45.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-10",
									"patching_rect" : [ 103.0, 133.0, 41.0, 41.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p soundz",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-8",
									"patching_rect" : [ 634.0, 138.0, 59.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 571.0, 44.0, 869.0, 627.0 ],
										"bglocked" : 0,
										"defrect" : [ 571.0, 44.0, 869.0, 627.0 ],
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
													"text" : "unpack 1. 1. 1. 1. 1. 1.",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-2",
													"patching_rect" : [ 82.0, 224.0, 129.0, 20.0 ],
													"fontname" : "Arial",
													"numoutlets" : 6,
													"outlettype" : [ "float", "float", "float", "float", "float", "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r from-ml",
													"fontsize" : 12.0,
													"numinlets" : 0,
													"id" : "obj-1",
													"patching_rect" : [ 82.0, 181.0, 58.0, 20.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"id" : "obj-120",
													"patching_rect" : [ 168.0, 604.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-119",
													"patching_rect" : [ 504.0, 106.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p paf~",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-118",
													"patching_rect" : [ 181.0, 459.0, 44.0, 20.0 ],
													"fontname" : "Arial",
													"numoutlets" : 2,
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
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-35",
																	"patching_rect" : [ 81.0, 444.0, 50.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~ 1.6",
																	"fontsize" : 9.0,
																	"numinlets" : 2,
																	"id" : "obj-36",
																	"patching_rect" : [ 377.0, 246.0, 41.0, 17.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "biquad~ 1. -1. 0. -0.9997 0.",
																	"fontsize" : 10.0,
																	"numinlets" : 6,
																	"id" : "obj-37",
																	"patching_rect" : [ 661.0, 580.0, 155.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"fontsize" : 9.0,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numinlets" : 1,
																	"id" : "obj-39",
																	"patching_rect" : [ 867.0, 510.0, 35.0, 17.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 2,
																	"triscale" : 0.9,
																	"outlettype" : [ "float", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p list or float",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"id" : "obj-40",
																	"patching_rect" : [ 89.0, 155.0, 70.0, 17.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
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
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-1",
																					"patching_rect" : [ 144.0, 189.0, 31.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 12.",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-2",
																					"patching_rect" : [ 144.0, 168.0, 33.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "ftom",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-3",
																					"patching_rect" : [ 144.0, 146.0, 31.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "route list float",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-4",
																					"patching_rect" : [ 50.0, 64.0, 76.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 3,
																					"outlettype" : [ "", "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "pack 1. 100.",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-5",
																					"patching_rect" : [ 50.0, 208.0, 66.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "unpack 1. 100.",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-6",
																					"patching_rect" : [ 50.0, 124.0, 76.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 2,
																					"outlettype" : [ "float", "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "mtof",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-7",
																					"patching_rect" : [ 50.0, 187.0, 31.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "- 12.",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-8",
																					"patching_rect" : [ 50.0, 166.0, 33.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "ftom",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-9",
																					"patching_rect" : [ 50.0, 144.0, 31.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-10",
																					"patching_rect" : [ 50.0, 30.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"id" : "obj-11",
																					"patching_rect" : [ 50.0, 288.0, 15.0, 15.0 ],
																					"numoutlets" : 0,
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
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cycle~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-41",
																	"patching_rect" : [ 191.0, 256.0, 42.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"numinlets" : 1,
																	"id" : "obj-42",
																	"patching_rect" : [ 616.0, 518.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 1. 30.",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-43",
																	"patching_rect" : [ 499.0, 184.0, 65.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p complex-mod~",
																	"fontsize" : 9.0,
																	"numinlets" : 3,
																	"id" : "obj-44",
																	"patching_rect" : [ 660.0, 650.0, 84.0, 17.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 2,
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
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-1",
																					"patching_rect" : [ 173.0, 217.0, 31.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+~",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-2",
																					"patching_rect" : [ 128.0, 289.0, 27.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"id" : "obj-3",
																					"patching_rect" : [ 132.0, 320.0, 15.0, 15.0 ],
																					"numoutlets" : 0,
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "phasor~",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-4",
																					"patching_rect" : [ 213.0, 123.0, 57.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "-~",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-5",
																					"patching_rect" : [ 59.0, 289.0, 27.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-6",
																					"patching_rect" : [ 109.0, 252.0, 35.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-7",
																					"patching_rect" : [ 59.0, 252.0, 35.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "cos~",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-8",
																					"patching_rect" : [ 107.0, 182.0, 31.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "frequency of shift",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-9",
																					"patching_rect" : [ 181.0, 72.0, 109.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "imaginary",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-10",
																					"patching_rect" : [ 89.0, 70.0, 64.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "real",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-11",
																					"patching_rect" : [ 52.0, 71.0, 33.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+~ 0.25",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-12",
																					"patching_rect" : [ 178.0, 182.0, 44.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "frequency shifted signal",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-13",
																					"patching_rect" : [ 157.0, 312.0, 171.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "signal to modulate",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-14",
																					"patching_rect" : [ 50.0, 50.0, 114.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 0
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-15",
																					"patching_rect" : [ 11.0, 144.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-16",
																					"patching_rect" : [ 61.0, 144.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-17",
																					"patching_rect" : [ 213.0, 103.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"id" : "obj-18",
																					"patching_rect" : [ 59.0, 320.0, 15.0, 15.0 ],
																					"numoutlets" : 0,
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
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sig~ 1",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"id" : "obj-45",
																	"patching_rect" : [ 257.0, 304.0, 41.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-50",
																	"patching_rect" : [ 264.0, 208.0, 36.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 2,
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-51",
																	"patching_rect" : [ 344.0, 203.0, 36.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 2,
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-16",
																	"patching_rect" : [ 180.0, 208.0, 36.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 2,
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route freq vfr vib bw amp cf shift phase cfgliss",
																	"fontsize" : 9.0,
																	"numinlets" : 1,
																	"id" : "obj-52",
																	"patching_rect" : [ 220.0, 126.0, 407.0, 17.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 10,
																	"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-53",
																	"patching_rect" : [ 165.0, 642.0, 27.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cos~",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"id" : "obj-54",
																	"patching_rect" : [ 165.0, 692.0, 32.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-55",
																	"patching_rect" : [ 263.0, 448.0, 27.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-56",
																	"patching_rect" : [ 323.0, 413.0, 27.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "divide by fundamental",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"id" : "obj-57",
																	"patching_rect" : [ 364.0, 437.0, 116.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "clip~ 0. 1.",
																	"fontsize" : 10.0,
																	"numinlets" : 3,
																	"id" : "obj-58",
																	"patching_rect" : [ 81.0, 469.0, 62.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+~ 0.5",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-59",
																	"patching_rect" : [ 445.0, 504.0, 45.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "%~ 1.",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-60",
																	"patching_rect" : [ 445.0, 529.0, 40.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "second phase signal",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"id" : "obj-61",
																	"patching_rect" : [ 436.0, 482.0, 103.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+~ 1",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-62",
																	"patching_rect" : [ 165.0, 728.0, 35.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "-~ 0.5",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-63",
																	"patching_rect" : [ 70.0, 549.0, 44.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-64",
																	"patching_rect" : [ 137.0, 784.0, 27.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-65",
																	"patching_rect" : [ 50.0, 646.0, 27.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cos~",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"id" : "obj-66",
																	"patching_rect" : [ 50.0, 689.0, 32.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p samphold~",
																	"fontsize" : 9.0,
																	"numinlets" : 3,
																	"id" : "obj-67",
																	"patching_rect" : [ 185.0, 615.0, 65.0, 17.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
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
																					"numinlets" : 0,
																					"id" : "obj-1",
																					"patching_rect" : [ 144.0, 38.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "loadbang",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-2",
																					"patching_rect" : [ 188.0, 50.0, 48.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~ -1.",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-3",
																					"patching_rect" : [ 89.0, 88.0, 40.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "0.",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-4",
																					"patching_rect" : [ 185.0, 95.0, 17.0, 15.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "delta~",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-5",
																					"patching_rect" : [ 88.0, 58.0, 38.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "sah~",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-6",
																					"patching_rect" : [ 50.0, 142.0, 31.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-7",
																					"patching_rect" : [ 88.0, 38.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-8",
																					"patching_rect" : [ 50.0, 122.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"id" : "obj-9",
																					"patching_rect" : [ 50.0, 164.0, 15.0, 15.0 ],
																					"numoutlets" : 0,
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
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p samphold~",
																	"fontsize" : 9.0,
																	"numinlets" : 3,
																	"id" : "obj-68",
																	"patching_rect" : [ 114.0, 601.0, 65.0, 17.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
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
																					"numinlets" : 0,
																					"id" : "obj-1",
																					"patching_rect" : [ 144.0, 38.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "loadbang",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-2",
																					"patching_rect" : [ 188.0, 50.0, 48.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~ -1.",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-3",
																					"patching_rect" : [ 89.0, 88.0, 40.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "0.",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-4",
																					"patching_rect" : [ 185.0, 95.0, 17.0, 15.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "delta~",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-5",
																					"patching_rect" : [ 88.0, 58.0, 38.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "sah~",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-6",
																					"patching_rect" : [ 50.0, 142.0, 31.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-7",
																					"patching_rect" : [ 88.0, 38.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-8",
																					"patching_rect" : [ 50.0, 122.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"id" : "obj-9",
																					"patching_rect" : [ 50.0, 164.0, 15.0, 15.0 ],
																					"numoutlets" : 0,
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
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-69",
																	"patching_rect" : [ 50.0, 737.0, 27.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "clip~ -0.5 0.5",
																	"fontsize" : 10.0,
																	"numinlets" : 3,
																	"id" : "obj-70",
																	"patching_rect" : [ 165.0, 667.0, 83.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-71",
																	"patching_rect" : [ 336.0, 663.0, 27.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cos~",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"id" : "obj-72",
																	"patching_rect" : [ 336.0, 726.0, 32.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+~ 1",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-73",
																	"patching_rect" : [ 336.0, 747.0, 35.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "-~ 0.5",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-74",
																	"patching_rect" : [ 282.0, 550.0, 44.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-75",
																	"patching_rect" : [ 283.0, 663.0, 27.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "cos~",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"id" : "obj-76",
																	"patching_rect" : [ 283.0, 705.0, 32.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p samphold~",
																	"fontsize" : 9.0,
																	"numinlets" : 3,
																	"id" : "obj-77",
																	"patching_rect" : [ 415.0, 618.0, 65.0, 17.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
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
																					"numinlets" : 0,
																					"id" : "obj-1",
																					"patching_rect" : [ 144.0, 38.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "loadbang",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-2",
																					"patching_rect" : [ 188.0, 50.0, 48.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~ -1.",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-3",
																					"patching_rect" : [ 89.0, 88.0, 40.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "0.",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-4",
																					"patching_rect" : [ 185.0, 95.0, 17.0, 15.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "delta~",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-5",
																					"patching_rect" : [ 88.0, 58.0, 38.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "sah~",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-6",
																					"patching_rect" : [ 50.0, 142.0, 31.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-7",
																					"patching_rect" : [ 88.0, 38.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-8",
																					"patching_rect" : [ 50.0, 122.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"id" : "obj-9",
																					"patching_rect" : [ 50.0, 164.0, 15.0, 15.0 ],
																					"numoutlets" : 0,
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
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p samphold~",
																	"fontsize" : 9.0,
																	"numinlets" : 3,
																	"id" : "obj-78",
																	"patching_rect" : [ 344.0, 618.0, 65.0, 17.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
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
																					"numinlets" : 0,
																					"id" : "obj-1",
																					"patching_rect" : [ 144.0, 38.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "loadbang",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-2",
																					"patching_rect" : [ 188.0, 50.0, 48.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "*~ -1.",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-3",
																					"patching_rect" : [ 89.0, 88.0, 40.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "message",
																					"text" : "0.",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-4",
																					"patching_rect" : [ 185.0, 95.0, 17.0, 15.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "delta~",
																					"fontsize" : 9.0,
																					"numinlets" : 1,
																					"id" : "obj-5",
																					"patching_rect" : [ 88.0, 58.0, 38.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "sah~",
																					"fontsize" : 9.0,
																					"numinlets" : 2,
																					"id" : "obj-6",
																					"patching_rect" : [ 50.0, 142.0, 31.0, 17.0 ],
																					"fontname" : "Arial",
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-7",
																					"patching_rect" : [ 88.0, 38.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"numinlets" : 0,
																					"id" : "obj-8",
																					"patching_rect" : [ 50.0, 122.0, 15.0, 15.0 ],
																					"numoutlets" : 1,
																					"outlettype" : [ "signal" ],
																					"comment" : ""
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"id" : "obj-9",
																					"patching_rect" : [ 50.0, 164.0, 15.0, 15.0 ],
																					"numoutlets" : 0,
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
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-79",
																	"patching_rect" : [ 283.0, 726.0, 27.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "clip~ -0.5 0.5",
																	"fontsize" : 10.0,
																	"numinlets" : 3,
																	"id" : "obj-80",
																	"patching_rect" : [ 336.0, 705.0, 83.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "maximum~ 1",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-81",
																	"patching_rect" : [ 334.0, 461.0, 75.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-82",
																	"patching_rect" : [ 94.0, 208.0, 36.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 2,
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-83",
																	"patching_rect" : [ 198.0, 332.0, 27.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-84",
																	"patching_rect" : [ 159.0, 354.0, 27.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-85",
																	"patching_rect" : [ 198.0, 297.0, 27.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "/~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-86",
																	"patching_rect" : [ 223.0, 392.0, 27.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"id" : "obj-87",
																	"patching_rect" : [ 715.0, 302.0, 22.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-88",
																	"patching_rect" : [ 567.0, 241.0, 36.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 2,
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-89",
																	"patching_rect" : [ 649.0, 468.0, 36.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 2,
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route 0.",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"id" : "obj-90",
																	"patching_rect" : [ 715.0, 273.0, 49.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b f",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"id" : "obj-91",
																	"patching_rect" : [ 671.0, 273.0, 30.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0. 0",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-92",
																	"patching_rect" : [ 648.0, 423.0, 55.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route 0 1",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"id" : "obj-93",
																	"patching_rect" : [ 604.0, 383.0, 56.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 3,
																	"outlettype" : [ "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 0.",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-94",
																	"patching_rect" : [ 604.0, 360.0, 55.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "> 0.",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-95",
																	"patching_rect" : [ 604.0, 336.0, 27.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "snapshot~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-96",
																	"patching_rect" : [ 604.0, 314.0, 59.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "-1000099968.",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-97",
																	"patching_rect" : [ 541.0, 575.0, 90.0, 16.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line 0 30",
																	"fontsize" : 10.0,
																	"numinlets" : 3,
																	"id" : "obj-98",
																	"patching_rect" : [ 730.0, 422.0, 56.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 3,
																	"outlettype" : [ "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-99",
																	"patching_rect" : [ 534.0, 532.0, 27.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "hack to allow glissandi which aren't implemented in the controller window.",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"id" : "obj-100",
																	"patching_rect" : [ 244.0, 100.0, 374.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 0
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "linedrive 154 0.02 1.06 30",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-101",
																	"patching_rect" : [ 567.0, 218.0, 150.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-102",
																	"patching_rect" : [ 767.0, 561.0, 36.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 2,
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "> 0.",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-103",
																	"patching_rect" : [ 853.0, 564.0, 27.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "pack 0 10",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-104",
																	"patching_rect" : [ 853.0, 597.0, 59.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "line~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-105",
																	"patching_rect" : [ 853.0, 621.0, 36.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 2,
																	"outlettype" : [ "signal", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "-~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-106",
																	"patching_rect" : [ 613.0, 711.0, 27.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "*~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-107",
																	"patching_rect" : [ 633.0, 739.0, 27.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+~",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-108",
																	"patching_rect" : [ 585.0, 813.0, 27.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "signal" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 0.",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"id" : "obj-109",
																	"patching_rect" : [ 739.0, 510.0, 25.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "route 0.",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"id" : "obj-110",
																	"patching_rect" : [ 739.0, 486.0, 49.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "mtof",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"id" : "obj-111",
																	"patching_rect" : [ 917.0, 465.0, 32.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "- 60.",
																	"fontsize" : 10.0,
																	"numinlets" : 2,
																	"id" : "obj-112",
																	"patching_rect" : [ 917.0, 434.0, 37.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t f",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"id" : "obj-113",
																	"patching_rect" : [ 804.0, 456.0, 19.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "nothing osc2~ vib1.snd",
																	"fontsize" : 10.0,
																	"numinlets" : 1,
																	"id" : "obj-114",
																	"patching_rect" : [ 66.0, 259.0, 123.0, 18.0 ],
																	"fontname" : "Arial",
																	"numoutlets" : 1,
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"id" : "obj-115",
																	"patching_rect" : [ 220.0, 40.0, 25.0, 25.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"id" : "obj-116",
																	"patching_rect" : [ 585.0, 907.161499, 25.0, 25.0 ],
																	"numoutlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"id" : "obj-117",
																	"patching_rect" : [ 660.0, 907.161499, 25.0, 25.0 ],
																	"numoutlets" : 0,
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
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "read :thisthis",
													"fontsize" : 12.0,
													"numinlets" : 2,
													"id" : "obj-17",
													"patching_rect" : [ 650.0, 198.0, 79.0, 18.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s synth-params",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-48",
													"patching_rect" : [ 82.0, 420.0, 93.0, 20.0 ],
													"fontname" : "Arial",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak 1. 1. 1. 1. 1. 1.",
													"fontsize" : 12.0,
													"numinlets" : 6,
													"id" : "obj-47",
													"patching_rect" : [ 82.0, 392.0, 110.0, 20.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "preset",
													"numinlets" : 1,
													"id" : "obj-3",
													"patching_rect" : [ 504.0, 224.0, 120.0, 18.0 ],
													"margin" : 4,
													"bubblesize" : 8,
													"numoutlets" : 4,
													"spacing" : 2,
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
													"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ],
													"numinlets" : 2,
													"id" : "obj-4",
													"patching_rect" : [ 500.0, 499.0, 130.0, 130.0 ],
													"rounded" : 0,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number~",
													"fontsize" : 9.0,
													"sig" : 0.0,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"mode" : 2,
													"numinlets" : 2,
													"id" : "obj-5",
													"patching_rect" : [ 247.0, 491.0, 180.0, 17.0 ],
													"fontname" : "Arial",
													"numoutlets" : 2,
													"interval" : 250.0,
													"outlettype" : [ "signal", "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "bitsafe~",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"id" : "obj-7",
													"patching_rect" : [ 168.0, 522.0, 50.0, 17.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "signal" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.5",
													"fontsize" : 9.0,
													"hidden" : 1,
													"numinlets" : 2,
													"id" : "obj-12",
													"patching_rect" : [ 323.0, 313.0, 21.0, 15.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "60",
													"fontsize" : 9.0,
													"hidden" : 1,
													"numinlets" : 2,
													"id" : "obj-13",
													"patching_rect" : [ 391.0, 313.0, 20.0, 15.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "60",
													"fontsize" : 9.0,
													"hidden" : 1,
													"numinlets" : 2,
													"id" : "obj-14",
													"patching_rect" : [ 252.0, 313.0, 20.0, 15.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadbang",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"id" : "obj-15",
													"patching_rect" : [ 252.0, 271.0, 46.0, 17.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"fontsize" : 9.0,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"minimum" : 0.0,
													"numinlets" : 1,
													"id" : "obj-18",
													"patching_rect" : [ 449.0, 332.0, 52.0, 17.0 ],
													"fontname" : "Arial",
													"numoutlets" : 2,
													"triscale" : 0.9,
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"fontsize" : 9.0,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"minimum" : 0.0,
													"numinlets" : 1,
													"id" : "obj-19",
													"patching_rect" : [ 391.0, 332.0, 52.0, 17.0 ],
													"fontname" : "Arial",
													"numoutlets" : 2,
													"triscale" : 0.9,
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "mtof 1.",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"id" : "obj-20",
													"patching_rect" : [ 449.0, 356.0, 38.0, 17.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "mtof 1.",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"id" : "obj-21",
													"patching_rect" : [ 391.0, 355.0, 38.0, 17.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"fontsize" : 9.0,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"numinlets" : 1,
													"id" : "obj-22",
													"patching_rect" : [ 637.0, 332.0, 35.0, 17.0 ],
													"fontname" : "Arial",
													"numoutlets" : 2,
													"triscale" : 0.9,
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"fontsize" : 9.0,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"minimum" : 0.0,
													"numinlets" : 1,
													"id" : "obj-23",
													"patching_rect" : [ 574.0, 332.0, 52.0, 17.0 ],
													"fontname" : "Arial",
													"numoutlets" : 2,
													"triscale" : 0.9,
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"fontsize" : 9.0,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"minimum" : 0.0,
													"numinlets" : 1,
													"id" : "obj-24",
													"patching_rect" : [ 511.0, 332.0, 52.0, 17.0 ],
													"fontname" : "Arial",
													"numoutlets" : 2,
													"triscale" : 0.9,
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "shift $1 100",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"id" : "obj-25",
													"patching_rect" : [ 637.0, 380.0, 65.0, 15.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "vfr $1 100",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"id" : "obj-26",
													"patching_rect" : [ 574.0, 380.0, 59.0, 15.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "vib $1 100",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"id" : "obj-27",
													"patching_rect" : [ 511.0, 380.0, 58.0, 15.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "bw $1 100",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"id" : "obj-28",
													"patching_rect" : [ 449.0, 380.0, 55.0, 15.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "cf $1 100",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"id" : "obj-29",
													"patching_rect" : [ 391.0, 380.0, 53.0, 15.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"fontsize" : 9.0,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"minimum" : 0.0,
													"numinlets" : 1,
													"id" : "obj-30",
													"patching_rect" : [ 323.0, 332.0, 52.0, 17.0 ],
													"fontname" : "Arial",
													"numoutlets" : 2,
													"triscale" : 0.9,
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "amp $1 100",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"id" : "obj-31",
													"patching_rect" : [ 323.0, 380.0, 62.0, 15.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"fontsize" : 9.0,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"minimum" : 0,
													"numinlets" : 1,
													"id" : "obj-32",
													"patching_rect" : [ 252.0, 332.0, 35.0, 17.0 ],
													"fontname" : "Arial",
													"numoutlets" : 2,
													"triscale" : 0.9,
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "mtof 1.",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"id" : "obj-33",
													"patching_rect" : [ 252.0, 357.0, 38.0, 17.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "freq $1 100",
													"fontsize" : 9.0,
													"numinlets" : 2,
													"id" : "obj-34",
													"patching_rect" : [ 252.0, 380.0, 63.0, 15.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-120", 0 ],
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
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-118", 0 ],
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
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 4 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 5 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 2 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 3 ],
													"destination" : [ "obj-18", 0 ],
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
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 1,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-119", 0 ],
													"destination" : [ "obj-3", 0 ],
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-2", 0 ],
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
									"maxclass" : "comment",
									"text" : "5. map",
									"fontsize" : 12.0,
									"frgb" : [ 1.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"id" : "obj-19",
									"patching_rect" : [ 200.5, 153.0, 47.0, 20.0 ],
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
									"patching_rect" : [ 51.5, 217.0, 47.0, 20.0 ],
									"fontname" : "Arial",
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
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
									"patching_rect" : [ 87.0, 41.0, 214.0, 20.0 ],
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
									"patching_rect" : [ 174.0, 103.0, 50.0, 20.0 ],
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
									"patching_rect" : [ -1.5, 217.0, 50.0, 20.0 ],
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
									"patching_rect" : [ 387.0, 57.0, 190.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0.006882 0.027832 -1.010376",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-1",
									"patching_rect" : [ 337.0, 198.5, 200.0, 18.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "map 0.006882 0.027832 -1.010376",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-37",
									"patching_rect" : [ 118.5, 283.0, 211.0, 18.0 ],
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
									"patching_rect" : [ 5.0, 244.0, 37.0, 18.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p train-map",
									"fontsize" : 12.0,
									"numinlets" : 4,
									"id" : "obj-35",
									"patching_rect" : [ 103.0, 211.0, 71.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 3.0, 495.0, 746.0, 733.0 ],
										"bglocked" : 0,
										"defrect" : [ 3.0, 495.0, 746.0, 733.0 ],
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
													"maxclass" : "message",
													"text" : "60. 0.5 60. 1. 1. 1.",
													"fontsize" : 12.0,
													"numinlets" : 2,
													"id" : "obj-4",
													"patching_rect" : [ 390.0, 207.0, 306.0, 18.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"fontsize" : 12.0,
													"numinlets" : 2,
													"id" : "obj-3",
													"patching_rect" : [ 154.0, 256.0, 40.0, 20.0 ],
													"fontname" : "Arial",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"id" : "obj-2",
													"patching_rect" : [ 390.0, 40.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl join",
													"fontsize" : 12.0,
													"numinlets" : 2,
													"id" : "obj-5",
													"patching_rect" : [ 154.0, 312.0, 41.0, 20.0 ],
													"fontname" : "Arial",
													"numoutlets" : 2,
													"outlettype" : [ "", "" ]
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
													"patching_rect" : [ 246.0, 348.0, 81.0, 20.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "gswitch2",
													"int" : 1,
													"numinlets" : 2,
													"id" : "obj-24",
													"patching_rect" : [ 226.0, 100.0, 39.0, 32.0 ],
													"numoutlets" : 2,
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "add 42. 0.16 37. 91. 8. 16. 0.09935 0.922623 0.403412",
													"fontsize" : 12.0,
													"numinlets" : 2,
													"id" : "obj-23",
													"patching_rect" : [ 123.0, 507.0, 306.0, 18.0 ],
													"fontname" : "Arial",
													"numoutlets" : 1,
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-21",
													"patching_rect" : [ 61.0, 160.0, 32.5, 20.0 ],
													"fontname" : "Arial",
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend add",
													"fontsize" : 12.0,
													"numinlets" : 1,
													"id" : "obj-18",
													"patching_rect" : [ 154.0, 409.0, 78.0, 20.0 ],
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
													"outlettype" : [ "bang" ],
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
													"patching_rect" : [ 195.0, 665.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-18", 0 ],
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
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-5", 1 ],
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
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 1 ],
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
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-23", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
									"patching_rect" : [ 174.0, 133.0, 100.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "OSC-route /accxyz",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"id" : "obj-15",
									"patching_rect" : [ 288.0, 139.0, 111.0, 20.0 ],
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "list", "list" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/accxyz 0.006882 0.027832 -1.010376",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"id" : "obj-14",
									"patching_rect" : [ 337.0, 95.0, 228.0, 18.0 ],
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
									"patching_rect" : [ 288.0, 57.0, 99.0, 20.0 ],
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
									"patching_rect" : [ 51.5, 244.0, 34.0, 18.0 ],
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
									"patching_rect" : [ 62.5, 296.0, 25.0, 25.0 ],
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-21", 1 ],
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
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-35", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-2", 1 ],
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
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-8", 0 ],
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
					"maxclass" : "newobj",
					"text" : "print >>>ml",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-21",
					"patching_rect" : [ 288.0, 504.0, 71.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ml",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"id" : "obj-11",
					"patching_rect" : [ 11.0, 15.0, 23.0, 20.0 ],
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
					"id" : "obj-80",
					"patching_rect" : [ 709.0, 604.0, 39.0, 20.0 ],
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
					"id" : "obj-79",
					"patching_rect" : [ 708.0, 504.0, 39.0, 20.0 ],
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
					"id" : "obj-78",
					"patching_rect" : [ 708.0, 419.0, 39.0, 20.0 ],
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
					"id" : "obj-77",
					"patching_rect" : [ 704.0, 336.0, 39.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "toggle[1]",
					"numinlets" : 1,
					"id" : "obj-75",
					"patching_rect" : [ 850.0, 545.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "randomize_training_order $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-76",
					"patching_rect" : [ 850.0, 575.0, 164.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "number[5]",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-73",
					"patching_rect" : [ 709.0, 543.0, 50.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "validation_set_size $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-74",
					"patching_rect" : [ 709.0, 576.0, 129.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "number[4]",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-71",
					"patching_rect" : [ 1063.0, 448.0, 50.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "rand_training_iterations $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-72",
					"patching_rect" : [ 1063.0, 481.0, 153.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "umenu[2]",
					"fontsize" : 12.0,
					"items" : [ "LINEAR", ",", "SIGMOID", ",", "BIPOLAR", "SIGMOID" ],
					"types" : [  ],
					"numinlets" : 1,
					"id" : "obj-69",
					"patching_rect" : [ 883.0, 448.0, 102.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "output_activation_function $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-70",
					"patching_rect" : [ 883.0, 481.0, 167.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "umenu[3]",
					"fontsize" : 12.0,
					"items" : [ "LINEAR", ",", "SIGMOID", ",", "BIPOLAR", "SIGMOID" ],
					"types" : [  ],
					"numinlets" : 1,
					"id" : "obj-67",
					"patching_rect" : [ 708.0, 449.0, 102.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "hidden_activation_function $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-68",
					"patching_rect" : [ 708.0, 482.0, 169.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "umenu[1]",
					"fontsize" : 12.0,
					"items" : [ "LINEAR", ",", "SIGMOID", ",", "BIPOLAR", "SIGMOID" ],
					"types" : [  ],
					"numinlets" : 1,
					"id" : "obj-61",
					"patching_rect" : [ 957.0, 357.0, 102.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "input_activation_function $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-66",
					"patching_rect" : [ 957.0, 390.0, 159.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "flonum[4]",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-56",
					"patching_rect" : [ 816.0, 360.0, 50.0, 20.0 ],
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
					"id" : "obj-60",
					"patching_rect" : [ 816.0, 391.0, 131.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "toggle",
					"numinlets" : 1,
					"id" : "obj-54",
					"patching_rect" : [ 708.0, 362.0, 20.0, 20.0 ],
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
					"id" : "obj-47",
					"patching_rect" : [ 708.0, 392.0, 98.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "flonum",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-43",
					"patching_rect" : [ 1001.0, 272.0, 50.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "gamma $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-45",
					"patching_rect" : [ 1001.0, 303.0, 67.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "flonum[1]",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-35",
					"patching_rect" : [ 909.0, 272.0, 50.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "momentum $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-41",
					"patching_rect" : [ 909.0, 303.0, 87.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "flonum[2]",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-26",
					"patching_rect" : [ 810.0, 272.0, 50.0, 20.0 ],
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
					"id" : "obj-27",
					"patching_rect" : [ 810.0, 303.0, 94.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "flonum[3]",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-25",
					"patching_rect" : [ 704.0, 272.0, 74.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "min_change $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-23",
					"patching_rect" : [ 704.0, 303.0, 93.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "number",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-18",
					"patching_rect" : [ 1105.0, 160.0, 50.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "max_epochs $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-19",
					"patching_rect" : [ 1105.0, 193.0, 95.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "number[1]",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-16",
					"patching_rect" : [ 1010.0, 159.0, 50.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "min_epochs $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-17",
					"patching_rect" : [ 1010.0, 192.0, 92.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "number[2]",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-14",
					"patching_rect" : [ 912.0, 157.0, 50.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "num_hidden $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-15",
					"patching_rect" : [ 912.0, 190.0, 93.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "number[3]",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-13",
					"patching_rect" : [ 810.0, 157.0, 50.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "error",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-12",
					"patching_rect" : [ 704.0, 45.0, 36.0, 18.0 ],
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
					"id" : "obj-9",
					"patching_rect" : [ 704.0, 78.0, 39.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Object-Specific Messages",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-2",
					"patching_rect" : [ 795.0, 15.0, 151.0, 20.0 ],
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
					"id" : "obj-4",
					"patching_rect" : [ 253.0, 134.0, 135.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"id" : "obj-8",
					"patching_rect" : [ 253.0, 88.0, 20.0, 20.0 ],
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
					"id" : "obj-10",
					"patching_rect" : [ 253.0, 113.0, 69.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s mlp",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-65",
					"patching_rect" : [ 704.0, 240.0, 39.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getprobs",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-64",
					"patching_rect" : [ 387.0, 296.0, 57.0, 18.0 ],
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
					"patching_rect" : [ 231.0, 226.0, 111.0, 20.0 ],
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
					"patching_rect" : [ 318.0, 296.0, 65.0, 18.0 ],
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
					"patching_rect" : [ 256.0, 263.0, 20.0, 20.0 ],
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
					"patching_rect" : [ 256.0, 296.0, 57.0, 18.0 ],
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
					"patching_rect" : [ 187.0, 263.0, 20.0, 20.0 ],
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
					"patching_rect" : [ 187.0, 296.0, 65.0, 18.0 ],
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
					"id" : "obj-53",
					"patching_rect" : [ 105.0, 392.0, 39.0, 20.0 ],
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
					"id" : "obj-52",
					"patching_rect" : [ 78.0, 222.0, 39.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r mlp",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"id" : "obj-51",
					"patching_rect" : [ 106.0, 427.0, 37.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Object-Specific Attributes",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-50",
					"patching_rect" : [ 803.0, 121.0, 151.0, 20.0 ],
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
					"patching_rect" : [ 212.0, 6.0, 117.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "umenu",
					"fontsize" : 12.0,
					"items" : [ "classification", ",", "regression" ],
					"types" : [  ],
					"numinlets" : 1,
					"id" : "obj-44",
					"patching_rect" : [ 704.0, 158.0, 102.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mode $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-42",
					"patching_rect" : [ 704.0, 191.0, 57.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 0 1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-37",
					"patching_rect" : [ 435.0, 119.0, 37.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1 1 0",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-38",
					"patching_rect" : [ 410.0, 88.0, 37.0, 18.0 ],
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
					"patching_rect" : [ 490.0, 115.0, 67.0, 20.0 ],
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
					"patching_rect" : [ 489.0, 88.0, 67.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/tmp/mlp-test07.txt",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-36",
					"patching_rect" : [ 158.0, 88.0, 109.0, 18.0 ],
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
					"patching_rect" : [ 410.0, 159.0, 81.0, 20.0 ],
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
					"patching_rect" : [ 624.0, 159.0, 33.0, 18.0 ],
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
					"patching_rect" : [ 252.0, 159.0, 81.0, 20.0 ],
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
					"patching_rect" : [ 158.0, 159.0, 83.0, 20.0 ],
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
					"patching_rect" : [ 78.0, 159.0, 78.0, 20.0 ],
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
					"patching_rect" : [ 587.0, 159.0, 34.0, 18.0 ],
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
					"patching_rect" : [ 548.0, 159.0, 37.0, 18.0 ],
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
					"patching_rect" : [ 105.0, 296.0, 77.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route map attributes",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-6",
					"patching_rect" : [ 193.5, 543.0, 117.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "num_outputs $1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-5",
					"patching_rect" : [ 810.0, 190.0, 97.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2 1 1 0",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-22",
					"patching_rect" : [ 78.0, 88.0, 47.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1 0 0 1",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-20",
					"patching_rect" : [ 100.0, 119.0, 47.0, 18.0 ],
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ml-mlp",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-1",
					"patching_rect" : [ 106.0, 464.0, 46.0, 20.0 ],
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-46", 0 ],
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-87", 0 ],
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
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-86", 0 ],
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
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
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
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
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
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
 ]
	}

}
