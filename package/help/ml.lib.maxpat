{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"openrect" : [ 34.0, 79.0, 811.0, 635.0 ],
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
		"toolbarvisible" : 0,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 0,
		"enablevscroll" : 0,
		"devicewidth" : 811.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 307.4791259765625, 367.0, 20.0 ],
					"text" : "Zero crossings count"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 307.4791259765625, 72.0, 22.0 ],
					"text" : "ml.zerox"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-65",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 486.0, 643.0, 50.0, 22.0 ],
					"text" : "help $1"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 486.0, 675.0, 53.0, 22.0 ],
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 606.0, 453.0, 197.0, 20.0 ],
					"text" : "Multilayer Perceptron"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 520.0, 453.0, 46.0, 22.0 ],
					"text" : "ml.ann"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 606.0, 415.0, 197.0, 20.0 ],
					"text" : "Logistic Regression"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 520.0, 415.0, 60.0, 22.0 ],
					"text" : "ml.logreg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 606.0, 379.0, 197.0, 20.0 ],
					"text" : "Linear Regression"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 520.0, 379.0, 60.0, 22.0 ],
					"text" : "ml.linreg"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Lato Regular",
					"fontsize" : 13.0,
					"id" : "obj-64",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.0, 346.0, 129.0, 22.0 ],
					"text" : "Regression"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 599.0, 268.9791259765625, 197.0, 20.0 ],
					"text" : "Hidden Markov Model"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 519.0, 268.9791259765625, 61.0, 22.0 ],
					"text" : "ml.hmmc"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 599.0, 232.5, 197.0, 20.0 ],
					"text" : "Dynamic Time Warping"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 519.0, 231.5, 53.0, 22.0 ],
					"text" : "ml.dtw"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Lato Regular",
					"fontsize" : 13.0,
					"id" : "obj-57",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.0, 197.5, 165.0, 22.0 ],
					"text" : "Time Series Classification"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 100.0, 596.0, 367.0, 20.0 ],
					"text" : "Support Vector Machines"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 596.0, 46.0, 22.0 ],
					"text" : "ml.svm"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 100.0, 562.0, 367.0, 20.0 ],
					"text" : "Softmax"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 562.0, 71.0, 22.0 ],
					"text" : "ml.softmax"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 100.0, 524.0, 367.0, 20.0 ],
					"text" : "Random Forests"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 524.0, 81.0, 22.0 ],
					"text" : "ml.randforest"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 100.0, 488.0, 367.0, 20.0 ],
					"text" : "Minimum Distance"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 488.0, 65.0, 22.0 ],
					"text" : "ml.mindist"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 100.0, 453.0, 367.0, 20.0 ],
					"text" : "K's nearest neighbour"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 453.0, 46.0, 22.0 ],
					"text" : "ml.knn"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 100.0, 415.0, 367.0, 20.0 ],
					"text" : "Gaussian Mixture Model"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 415.0, 52.0, 22.0 ],
					"text" : "ml.gmm"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 100.0, 379.0, 367.0, 20.0 ],
					"text" : "Adaptive Boosting"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 379.0, 77.0, 22.0 ],
					"text" : "ml.adaboost"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Lato Regular",
					"fontsize" : 13.0,
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 346.0, 129.0, 22.0 ],
					"text" : "Classification"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 263.4791259765625, 367.0, 33.0 ],
					"text" : "Output a vector of minima and maxima locations (peaks) from an input vector"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 263.4791259765625, 72.0, 22.0 ],
					"text" : "ml.minmax"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 227.0, 367.0, 20.0 ],
					"text" : "Output detected peaks from a continues stream of input values"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 226.0, 53.0, 22.0 ],
					"text" : "ml.peak"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Lato Regular",
					"fontsize" : 13.0,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 192.0, 129.0, 22.0 ],
					"text" : "Feature Extraction"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 116.0, 177.0, 20.0 ],
					"text" : "Copyright © 2019 IRL Labs"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato Regular",
					"fontsize" : 13.0,
					"id" : "obj-33",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 76.0, 312.0, 38.0 ],
					"text" : "Machine Learning Library for Max and Pure Data\nby Jamie Bullock and Ali Momeni"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato Regular",
					"fontsize" : 48.0,
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 10.0, 312.0, 64.0 ],
					"text" : "ml-lib"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 6.0, 643.0, 50.0, 22.0 ],
					"text" : "help $1"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 6.0, 675.0, 53.0, 22.0 ],
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"alpha" : 0.1,
					"autofit" : 1,
					"data" : [ 45966, "png", "IBkSG0fBZn....PCIgDQRA..Br...HvBHX....fYe8sy....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6ceGWTdku+.+yv.C8tzU5BBHHnfUrFvZzXA0XuGaqR1jrIlr2e680taxtatwDMFSQrKVhUzXuKpHFEqHnBRWPZRQJy.CyL+9ib0qEj1bddNOOCm2ud4qTDNmOVf46bdNmuGIZznQCXXXDMznQCjKWNpt5pQM0TCTnPAjKWNjKWNTnPwK9uUnPAZngFP80WOTpT4q7iFZnAnVsZnQiFnVs5W4eWiFMPO8zCRjH4U9mO+GFXfAuxOjISFzWe8gLYxfwFaLLxHiZz+oYlYFLyLyfAFX.s+sPFFlVI8oc.XXX9C0TSMnxJqDUTQEu3eVQEUfm8rmgpppJTc0U+hBDTqVMsiaalLYxfYlYFL2byeQADVZokvJqrBVYkUu3e2RKsjUXACi.gD1JKvvvOprxJQokVJd5Se5q7iRKsTTVYkgFZnAZGQAGyLyLXqs19J+nCcnCu3eJSlLZGQFl1EXEKvvPPJTn.EVXgn3hKFEUTQuxOpqt5nc7z4XkUVAGbvg23GcnCc.5omdzNdLL5LXEKvvzFnToRTXgEh7yOeTPAEfBJn.je94ixJqLZGMF.nu95CmbxI3ryNCWbwE3hKt.mc1YXiM1P6nwvHJwJVfgoYnPgB73G+Xjat4hbxIGjat4hm7jm.1W5H9XrwFCWc00W4GN3fCPhDIzNZLLBZrhEXXdIpToB4me9HiLx.YkUVHmbxAEUTQrBCzgYngFhN0oNAO7vC3omdBO7vCXs0VS6XwvHnvJVfocspqtZ7nG8HjYlYhLyLSjSN4f5qudZGKFJyZqsFd5omvSO8Dd4kWvUWcERkJk1whggZXEKvztxyd1yP5omNRKszPZokFJnfBncjXDALzPCgWd4E7wGefO93Cb2c2YEOvztBqXAFcZxkKGO7gODolZp3gO7gnvBKj1QhQGfLYxfmd5I7yO+f+96O5Tm5DaeOvnSiUr.iNE0pUiryNajZpohTSMUjUVYIpafQLhClYlYnKcoKve+8G96u+r87.iNGVwBLhd0TSMHkTRA28t2EojRJn1Zqk1QhocNmc1YDTPAgfBJH3gGdv54CLhdrhEXDkJrvBwcu6cwcu6cwidziXmVAFAKyLyLz0t1UDTPAA+82eXrwFS6HwvzpwJVfQzHu7xC27l2D27l2js2CXDkjJUJ72e+Q26d2Q25V2folZJsiDCSKBqXAFAsryNabiabCbqacKTRIkP63vvPL5omdvWe8Ecu6cGAGbvvBKrf1Qhg4shUr.ifSAET.t10tFt10tFd5SeJsiCCCmShDIvO+7C8rm8DgDRHvHiLh1Qhg4UvJVfQPn7xK+EEH73G+XZGGFFpw.CL.AETPnm8rmnqcsqPe80m1QhggUr.C8Te80iacqagDRHA7vG9PZGGFFAGSLwDzyd1Szu90O3pqtR63vzNFqXAFdWVYkERHgDPRIkDjKWNsiCCinfKt3B5W+5G5Uu5ELyLyncbXZmgUr.Cun1ZqEW4JWAW9xWFO4IOg1wggQzRpToHnfBBCbfCDcoKcg04HY3ErhEX3TYmc1H93iGW+5WGJUpj1wggQmh81aOFv.F.5ae6K6XXxvoXEKvPb0We83ZW6ZH93iG4latzNNLL57zWe8QXgEFF3.GH7vCOncbXzAwJVfgXpnhJvEtvEvEu3EQM0TCsiCCS6Rd3gGHhHh.gDRHraFSFhgUr.iVK6ryFm8rmE23F2.pToh1wgggA.Vas0XvCdvn+8u+vDSLg1wgQjiUr.SahFMZvcu6cwoN0ovidzincbXXXdKjISF5ae6KF5PGJr0VaocbXDoXEKvzpnRkJb8qecbxSdRTPAEP63vvvzBomd5gvBKLLrgML3hKtP63vHxvJVfoEo95qGIjPB3zm9zrVvLCiHWPAEDF9vGN7xKuncTXDIXEKvzjpu95Q7wGON4IOIppppncbXXXHHe80WL5QOZz4N2YZGEFANVwBLMJVQBLLsevJZfo4vJVf4UvJRfgo8Ke80WLlwLF3s2dS6nvHvvJVfA.+wFW7JW4J3HG4HnhJpf1wggggh5ZW6JF6XGK5Tm5DsiBi.AqXg14znQCt4MuIN3AOHJt3hocbXXXDP5YO6IFyXFCryN6ncTXnLVwBsic+6eeDWbwgbxIGZGEFFFAJoRkh92+9iQMpQAKrvBZGGFJgUrP6PEVXgXe6aeH4jSl1QgggQjvPCMDibjiDuy67Nv.CLf1wggmwJVncjZpoFb3CeXDe7wC0pUS63vvvHBYqs1hwO9wiPCMTZGEFdDqXg1AToREN+4OON5QOJps1ZocbXXXzA3kWdgIMoIA2c2cZGEFd.qXAcbO3AO.6ZW6BEVXgzNJL7.YxjASM0TXpolByLyLXlYlASM0THSlLHSlLnu95CYxjACLvfW7e+vG9Pb8qecnPgBZGeFQnvCObLtwMNXlYlQ6nvvgXEKnip7xKG6ae6CIkTRzNJLDfLYxfM1XyK9g0Va8K9mOun.yLyrV7yRtlZpAW4JWAm+7mm09tYzZlXhIXricrn+8u+PO8zi1wggCvJVPGiJUpvYO6YwQNxQPc0UGsiCSqfIlXBbzQGewObvAGfs1ZKrwFafolZJQli7xKObgKbA76+9uCkJURjwjg44b0UWwTm5TgGd3AsiBCgwJVPGRFYjA1912N61fTfyLyLCt5pqvYmcFN3fCun3.t5XooRkJbyadSbgKbA10INCuXfCbfXbiabvXiMl1QggPXEKnCPgBEHt3hCwGe7f8GmBKVXgEvUWcEt5pqvM2bCt5pqvFargWl6JqrRboKcIbwKdQTYkUxKyIMnmd5A6s2dTRIk.UpTQ63v7+xJqrBSYJSAAGbvzNJLD.qXAQt6bm6fctycxZQyB.5qu9vCO7.d6s2vSO8Dt5pqvJqrh2yQQEUDN0oNEt5UuJZngF384mO3niNB+7yO3me9Ae80WXjQFAkJUh7xKOjYlY9heTd4kS6n1tWvAGLlxTlBU9ZAFxgUrfHUUUUE14N2It4MuIsiR6VFarwvSO8DctycFctycFt4laTsY0jUVYgSdxShae6aqysBSlat4un3.+7yOXs0V2h97JszRQ5omNRKszP5omNJojR33jxzXLxHiPTQEE5e+6OsiBSaDqXAQnabiafctychpqtZZGk1UjISF70Weg+96O5bm6LbwEWDD6766cu6gSdxShzRKMZGEhQhDIvKu7BAETPHf.B.t3hKPhDIZ83Vd4kiG7fGfTSMUb+6ee1MqJOye+8GyblyrEWrGivAqXAQjpqtZrqcsK1wgjG4ryNi.BH.DP.AfN24NC80WeZGI.7GaZwabiafSbhSf7yOeZGGhvPCMDADP.HnfBBAFXfb941WiFMnfBJ.olZpH4jSFO5QOhsmG3AFarwXhSbhne8qezNJLsBrhEDIt8suM1912N6cBwwL1Xige942KJPPn8Nfpu95QBIj.N8oOsNQ+QvVasEAETPHnfBB93iOTsXL4xk+hBGt28tG6q03XAFXfX5Se5r8xfHAqXAAt5pqNr6cuajPBIP6nnyxLyLCAGbvHjPBA94mePpTozNRuAkJUh3iOdbhSbBQ+Kh4fCNfdzidfdzidfN1wNR63znTqVMxHiLvst0svsu8s0IJLSHxTSMEyXFy.gDRHzNJLMCVwBBXYmc1XCaXCrMkEGvRKsDAGbvn6cu6vGe7QPr2CZLJUpDW9xWFG+3GWTe7Gs2d6eQABcpSch1woUKu7xC23F2.IkTRrudjCDd3giIMoIACMzPZGEl2BVwBBPpUqFm3Dm.G9vGlc6PRXCYHCA8nG8.d4kWDYCywUZngFPBIj.N1wNln8XwZmc1gdzidfPCMTQYABuMYmc1HojRBIkTRrilIAYu81i4Mu4wtXpDnXEKHvTd4kiMrgMv5zdb.2byM7EewWP6XzjToRERLwDwQO5QQYkUFsiSql4laN5Uu5E5Uu5Eb0UWocb3TZznAomd5HwDSD27l2jcQbQ.RkJEiYLiACaXCSPWLe6QrhEDPt28tG17l2L6HQxQl5TmJF3.GHsiQiRsZ03pW8p3nG8nnzRKk1woUQe80GcqacC8oO8A96u+Bx87AWq95qG2912FIlXh392+95b84B9V.AD.l6bmK6lrT.gUrf.fJUpvgNzgvIO4IocTzYou95iu4a9FXhIlP6n7FtwMtAN3AOHJt3hocTZU7zSOQe5SePngFpf72WokxJqLjPBIfDRHA1ioPKXkUVgErfE.u81aZGEFvJVf5Ju7xw5W+5QFYjAsihNsvBKLL+4OeZGiWQFYjA1291GxLyLocTZwrxJqPe5SePe5SefCN3.siiflZ0pQJojB1291GJrvBocbDkzSO8v68duG6wRH.HL5vLsS8fG7.r90ud1icfGHjZ.LEWbw3.G3.3V25VzNJsHRjHA96u+X.CX.HnfBRvdxQDZzSO8PokVJJpnhncTDsTqVMhKt3vidzivbm6bYqfEEwVYAJ4Tm5T3.G3.rmsIOvFarAe0W8UT+E4pt5pwQO5QQ7wGunnSAZt4li90u9g92+9iNzgNP63HpnVsZbfCb.b5SeZZGEcF1YmcXwKdwvEWbg1QocIVwB7r5pqNr0stUbiabCZGk1MF0nFEFyXFC0lekJUhyctygie7iC4xkSsbzR4qu9hALfAfPBIj1kaVQsU80WO1zl1jnYkiDSjISFl4LmIBKrvncTZ2g8XH3QEUTQ3m+4eFO4IOg1Qock9129Rk4UiFM3ZW6Z3fG7fB9iAogFZH5W+5GFzfFDauHnEppppvO9i+HxJqrncTzIUe80iMrgMfbxIGL9wOdpuZgsmvJVfmb+6eeDSLwfZqsVZGk1U71auoxRnmSN4fcsqcI3eQCarwFLjgLDDd3gCiM1XZGGQshJpHrl0rFQ2QeUL5zm9zH+7yGevG7Ar+dKOg8XH3AW3BW.6d26l0MFaFd3gGnrxJins0X9t2JTSM0fCdvChKcoKIn2OJd5omHhHh.gDRHr2cFAjYlYh0t10hZpoFZGk1UbzQGwRW5Rg81aOsihNOVwBbHUpTg8rm8fKbgKP6nHn4t6tiQO5QC2c2c7IexmPrWjUO8zC+O+O+OvbyMmHiWSQiFMHgDR.wEWbB1S2hd5oG5d26NhHhHfGd3AsiiNijSNYDSLwf5qudZGk1kLwDSvhVzhfu95KsihNM1igfiTas0h0st0gG7fGP6nHX4latgQO5Qi.CLP..jXhIRz2MdW5RW3kBExN6rwt10tP1YmMmOWsExjIC8u+8GQDQDvFarg1wQmxUtxUPrwFKaUConZqsVr5UuZLkoLELfAL.ZGGcVrhE3.kUVYXMqYMrMx3awqWjvyc6aeahNOb8NltlZpAwEWb3xW9xBxG4fwFaLFzfFDhHhHXsMWNvINwIPbwEGuNmVas0PoRkB1UuhVTqVM1wN1AJszRw3F23XMvIN.qXABK2byEqcsqUTecByUbxImv3F23P25V2diet5qudjZpoRr4Re80GgDRHDa7dYpUqFW9xWFG7fGTP9LpMyLyPDQDAFzfFDayewAznQC1yd1CN24NGuNud6s2XQKZQPe80Gm5TmBm4Lmg8nOdMm7jmDkUVYX1yd1Pe8Yu7FIw9cSB5d26dHlXhA0UWczNJBJVZokXLiYLnu8suu0MSWpolJQ+FecsqckSdgxBJn.rsssMA4obvZqsFCcnCEgGd3PlLYzNN5jToRE1zl1DRJoj304su8suXZSaZu3E.eu268vfFzfvQO5QwktzkXOFjWx0u90QEUTAVxRVBqiORPrM3Hgb4KeYricrC1Wz9RjISFF5PGJF5PGJLzPCaxO1srksfDSLQhM2ye9ymnOFBUpTgie7iiicriI359h1ZqsXjibjnO8oOrlnDGp95qGwDSLH4jSl2lSIRjfILgIfHiLx25GSQEUDNzgNDqQu8ZbxImvxW9xY6SGBgUr.Ab7iebbvCdPZGCACIRjf90u9gwLlw.Kszxl8iWsZ03S9jOgXKouLYxv29seKwd20YkUVXaaaanfBJfHiGoXkUVgQNxQhvCObVQBbLEJTf0t10hzSOcdaNMxHiv7m+7ei81yayidzivt28tQt4lKGmLwCqrxJDczQCmc1YZGEQOVwBZAMZzf8u+8y5+6uD+82eDUTQ0p5e6O7gODe228cDKCgDRHXQKZQZ83Te80iCcnCgyd1yJn1.ilat4XXCaXXPCZPv.CLf1wQmW0UWMVyZVCxImb3s4rCcnCXoKcos5WjSsZ0HwDSDwEWbnppphiRm3holZJV1xVF63BqkXEKzFoVsZDarwhqbkqP6nHHXiM1fIMoI0l1Tg6d26lnaVrYO6Yi9zm9nUiw8u+8w1291ETciOSLwDDYjQh24cdml8w5vPFUTQEX0qd075IaxGe7AKbgKTqNAKJTn.G8nGEm8rmUv8XynACMzPr3EuX3me9Q6nHZwJVnMPoRkXCaXCD+n9IFIUpTDQDQf28ce217x9+4e9mSr6NAIRjfu8a+VXpol1l97qs1Zw9129PBIj.QxCIXngFhHhHBDYjQxNcC7nRKsTrpUsJdsfwd26diYNyYRrGqTQEUD10t1Et+8uOQFOwLoRkh4O+4it28tS6nHJwJVnUp95qG+zO8Sru3C+wsS3TlxTfSN4TadLxM2bwW8UeEwxjO93C93O9iaSet24N2A6XG6PvbrW0SO8P+6e+w69tuKrvBKncbZWonhJBe228cnhJpf2ly28ceWL5QOZNYru90uN1yd1Cd1ydFmL9hERjHAyd1yF8t28l1QQzgczIaEpqt5vZW6ZQZokFsiBUYokVhnhJJzyd1Ssdrt28tGARz+mfCN3V8mSc0UG1yd1Ct7kuLQyh1Hv.CDQEUTvQGcj1QocmBKrP7ce22waEMJUpTLiYLCs9Qm0TBKrvPW6ZWwAO3AQ7wGufZO3vmznQC1xV1BZngFP3gGNsiinBqXgVHEJTfe3G9A7nG8HZGEpZPCZPXricrDa4vSIkTHx37bMVCepojQFYfMu4MiRJoDhli1JWc0UDUTQw5y8TRAET.9tu663sMGnwFaLV3BWHu7rzM1XiwTlxTPe5SePrwFKd7ieLmOmBQZznAwFarPkJU75kLmXGqXgV.4xkiu+6+dAYi3guzgNzALqYMK3iO9PrwTtb4HyLyjXimKt3RK95nVkJU3nG8n3XG6XBh2kk0VaMF6XGK5Uu5EqU0RIO9wOFqZUqh2Zkx1XiM3O8m9SspSNDI3t6tiu3K9BbhSbBbzidz1sa.xctychFZnA7Nuy6P6nHJvJVnYHWtbrpUsJd8XSIzLjgLDLtwMNh2U.SM0TIZSrpk9HHJrvBwl1zlDD+YpgFZHFwHFAhHhHXGCRJJ2byEqd0ql2Ze2cpScBKaYKqE0GR3BRkJEiZTiBgDRHXqacqB1KAMt1d1ydfFMZPDQDAsihfGqXglfBEJv2+8euf3EUnA6s2dLqYMK3s2dyIiOo2uBsjGAw4O+4w92+9gRkJI5b2VDZnghnhJJXs0VS6nztVN4jCV8pWMps1Z4k4Kf.B.evG7AvHiLhWlulhyN6L9rO6yvoO8owu8a+FZngFncj3c6cu6ERkJECdvCl1QQPiUrvaQc0UG9ge3GZW9nGjHQBFxPFBF6XGKmdGCPxKNJyLyL3pqt9V+4qrxJwV25VI9djnsvImbBSYJSgsuDD.xO+740BEBKrvvblybDTcbS8zSOLrgMLzst0MAyJtw290e8Wg95qO5e+6OsihfEqXgFQ80WO9we7GaWtYFs0Vawbm6b4rUS34JrvBI5wRye+8+s9r9SN4jwl27lo9MDoQFYDF8nGMF7fGrf5EKZupvBKDqZUqh2JTXvCdvXxSdxB18jhiN5H9rO6yDT6kG9z1291g95qOmdpTDyXEK7ZTpTI94e9mwCe3CocT3cgEVXXZSaZ7Ri+4AO3ADc772e+ei+epToBG7fGDm5TmhnyUaQu6cuw3G+3o1ynl4UUbwEyqm5gwLlwfQMpQwKyk1PpToXLiYLHf.BPPcJg3KacqaERkJkHGKbcMrhEdIpUqFabiajnKOtXfgFZ3KNRU7ER2Tqd8hEJqrxv5W+5I5osnsvEWbAScpSkyWoFlVtm9zmhUspUwK8QAIRjfoLkoH5Nhdd4kW3+5+5+B6YO6QP0MS4ZZznAadyaFFarws3Kvq1KXEK7R1912Nt0stEsiAuxM2bCye9yG1au871bpVsZh1XqbwEWdk2wtP3wNnu95iQMpQggMrgwdjCBHkWd4369tuiXsW7lhToRw7l27PO5QO374hKXjQFgYNyYB+82eDarwBEJTP6HwKTqVMV25VG9vO7CYE4+RXEK7+Z+6e+sqpfF.XXCaX38du2i2ewrbyMWh9bhe9pJHTdrC93iOX5Se5vAGbfp4f4U8rm8Ld6tdPW5hKJzPCEt4laHlXhocy0esRkJwZW6ZwG+weL5Tm5Dsiif.6tg..m7jmDG3.Gf1wf2Xt4li4Mu4QsuQ1oN0ov92+9I13EczQCGczQp+XGLwDSvDlvDXsQVAnpqtZ7se62hBJn.NetL1XiQzQGsN2UhbCMz.1+92OQugXE5L2bywm9oeJutxqBUs6WYgDSLw1UEJ3omdhEtvEBqrxJpkAR9HHLv.CfBEJvW9keIUerC8nG8.u+6+9rK7IAnZqsVr5UuZdoPASM0T7ge3G1jGiWwJ80WeL4IOY3qu9hsrks.4xkS6Hw4ppppv2+8eO9rO6yZ2+01sqWYgTSMUr10t11Ms6zAMnAgIMoIQ0mgtZ0pwG8QeDw9FMRkJkp+4mUVYEl5TmZq9NofgenPgBr5UuZdoeoXt4li+7e9Oy6suYZnjRJA+7O+yH+7ym1QgW3latgO4S9DNsuyHz0tsXgG+3Giu4a9l1EaZGCLv.L8oOcAw0xZd4kG9xu7KocLHhd26di2+8eed4nlxz5oToR78e+2izSOcNetrzRKwG8QeT6paIz5qudrsssMb8qecZGEdQfAFHVxRVBzSO8ncTnh1k+pt7xKG+vO7CsKJTnCcnC3y9rOSPTn..3kuwMWybyMGKdwKFyYNygUnf.kZ0pwF1vF3k+9l0VaM9jO4SZWUn..fLYxv7m+7wDm3DaW7BnImbxXW6ZWzNFTS6t8rfb4xwZVyZHZ2CTnJv.CDyctyElXhIzNJufXuXgt28tioMsoAyLyLZGEllvN24Nwsu8s474wVasEezG8Qs3a6TcQQDQDvUWcEwDSL7VSthVt3EuHr0VawvG9vocT3c59kC9RTqVMV+5WOurQmnsgNzghktzkJnJT..TuII0VYhIlf4Mu4gEtvExJTPf6vG9v3RW5Rb97Xu81i+xe4uzttPgmyGe7Ae9m+4sK1uFwEWbs65GO.syJVXe6aeBhKRHtjToRwLm4LwDlvDDb8f9xJqLQ4J5DP.Af+6+6+aVKfUD3hW7h3HG4Hb97Xmc1gO9i+X1MF5KwVasEe5m9osK57gaZSaB4kWdzNF7p1MEKboKcIb1ydVZGCNkIlXBhN5nQ+5W+ncTZTYjQFzNBsJFXfAXpScpX4Ke4T8nlxzxbqacKryctSNedrwFavG8QeD6uSzHLxHivRVxRPjQFIsiBm54W1f7QKCWnncQwBokVZ57aLE6ryNrhUrBA80drX5QP3ryNiu3K9BQWO8u8pzSOcrgMrAN+lR74m5AarwFNcdDyzSO8PTQEElwLlgNcqNu7xKG+7O+yPoRkzNJ7Bc9hEJszRwu7K+hNcuTnyctyXEqXEB91KrXoXgANvAhu3K9B3ryNS6nvzBje94ie7G+QzPCMvoyi4laN9nO5ifc1YGmNO5JBO7vwxW9xgQFYDsiBmIqrxBwFarzNF7Bc5hEpu95wO+y+LU6rebsd26diO7C+PA+ltqgFZPv+L9LwDSvhW7hwTm5TgAFX.siCSKPYkUFVyZVCm2MAM0TSwe9O+ma2c7H0VcoKcA+k+xeQm9pY+2+8eWm+QbCniWrv1291wie7iocL3LCcnCEyYNyA5quv+Dv93G+XA8p63iO9f+1e6ugfCNXZGElVnpqtZ78e+2y4aZViM1X7ge3G1tXm9yE5XG6HVwJVAbxImncT3L6ae6inswdgHc1hEN24NG98e+2ocL3LSXBS.SXBSf1wnEKmbxg1QnQIQhDLlwLF7m+y+Y1NaWDQoRk3G+weDEVXgb57XngFhniNZcx65A9jM1XC9K+k+hN6U9rZ0pQLwDCJu7xocT3L5jEKjd5oi8t28R6XvIjHQBl0rlEF5PGJsiRqhP7ps84OC5QMpQ0tnCzoKYKaYKb9dfQlLYXYKaY5b2djzxyujszUW8tpppJrt0sNNeuyPK5beGxJqrRDSLw.0pUS6nPb5qu9XwKdwnu8suzNJsZYmc1zNBuBu81a7+6+2+O3iO9P6nvzJ8a+1ugjRJINcNzWe8wRVxRPm6bm4z4o8FCLv.7AevGfd0qdQ6nvIxJqrvd1ydncL3DB+G1cqfZ0pwF23Fwyd1yncTHNiLxHrzktTQ4KtoToRAUWyLhHh.ie7iWm9Xcoq5ZW6Z3nG8nb5bnmd5gEsnEA+7yONcdZuRpToXNyYNvHiLBwGe7zNNDW7wGO7wGePngFJsiBQoSUrvQO5QwCe3CocLHNyM2bDczQiN0oNQ6nzlje94KHVoGCMzPL6YOaz8t2cZGEl1fLyLSr0stUNedlwLlQ6htPHMIQhDL0oNUXrwFiSbhSP63PbwFarvUWcE1au8zNJDiNyig3AO3Ab963fFL2bywG+wernsPA.HHty6c1Ymwe8u9WYEJHRUVYkge5m9IN+4AOtwMNQ4i4SrZbiabXbiabzNFDmBEJPLwDiNUCaRmnXgm8rmgMtwMx4cuM9lEVXA9jO4SD8G4HZe7U6YO6I97O+yE7MsJlFmBEJvZW6Z47azvgLjgzt71Dj1F9vGNhJpnncLHt7xKOcpMZunuXAs4WiSM...H.jDQAQEZzfMsoMoysOErvBKvG+werNQSfgVEKHQhDL9wOdLu4MOHSlLpjAFsiZ0pwF1vF37UmJzPCESZRShSmCl2tHiLRcxBFhO93wMu4MocLHBQewBm4LmA2+92m1wfnrzRK0YJT.fNEK77MD5vF1v384lgb1291GRN4j4z4nKcoKXNyYNBtao01ahLxHwDm3DocLHtXiMVQ4ss6qSTWrPd4kGN3AOHsiAQoqUnPQEUDps1Z404zd6sGe9m+4rMolH2Eu3E471nqqt5JV7hWrnnKn1dPDQDgNWAC0VasXyadyh9GStnsXAkJUhMtwMpS0.LddgB5JOa8xKubr10tVdcN8yO+vJVwJzYJ1p8pG7fGv42Tr1YmcXYKaY5zWzQhQQDQD5bORhG7fGfyblyP6XnUDsEKru8sO7jm7DZGChwLyLCezG8Q5LEJ7zm9T7Mey2fhKtXdaNGxPFBV9xWNL0TS4s4jg7JszRw5V253zia6yONxVXgEb1bvz1EYjQh28ceWZGChJt3hSveY50TDkEKjRJofKbgKP6XPLFYjQH5niVm4cCWRIkfUtxUhm9zmxKymToRwLm4Lwjm7jYssYQNkJUhe4W9EN8QWYngFhku7kytpoE3F8nGMhHhHncLHFUpTgMtwMJZONkhtuypb4x0ot+v0We8wRW5R0YtnZJpnhvJW4JQYkUFuLeFarwH5niF8qe8iWlOFt0N1wN3z28kDIRvBVvBzY95MccSbhSDgGd3zNFDySdxSvgO7gocLZSDcEKrm8rGcla1K8zSO7AevGHJagyMlBJn.rxUtRdam+ZiM1fO8S+T3qu9xKyGC2J93iGIlXhb5bLwINQ1FeUjYZSaZHrvBi1wfXN0oNExJqrncLZ0DUEKjbxIiqbkqP6XPLyZVyBcqaci1wfHxO+7w29seKu0uKb0UWwJVwJfyN6LuLeLbqLyLSr6cuaNcNF3.GHdm24c3z4fg7zSO8vblybP.AD.siBQnQiFrksrEQ2iiPzTrPs0VqN0ieXxSdxn28t2zNFDQt4lK91u8aQ0UWMuLecsqcEe7G+wvRKsjWlOFt0yd1yv5V25fJUp3r4vO+7CSdxSlyFeFtkToRwBW3Bgat4FsiBQTXgEhCcnCQ6XzpHZJVXO6YOnxJqj1wfHF0nFEFxPFBsiAQjUVYgu669NTSM0vKyW+6e+wRW5RYG2McDpToBwDSLb5itxQGcDKbgKjcKiJxYngFh+ze5OoyrwTOyYNCxLyLocLZwDEEKb+6eeN+YYxW5Uu5EFyXFCsiAQjQFYfUu5UC4xkyKy23F23vzm9zYm3AcH6e+6Gomd5b13alYlg+ze5OAiM1XNaNX3OVXgEX4Ke4vLyLi1QQqoQiFDarwxoqnFII3+tt0We8XG6XGzNFDQm6bmwLm4LocLHhrxJK78e+2CEJTvKyWfAFH6R9QGy0u904zNznToRwhW7h0YdmnL+A6s2drrksLch66kBJn.QyUzsfuXgibjifRJoDZGCsl81auNSakM+7yGqYMqA0UWc71bpKcuvy7G+cnsssswoywLlwLf2d6MmNGLzg6t6Nl27lmNw84wwN1wPQEUDsiQyRPWrPd4kGN8oOMsigVyTSMEKaYKSmnyBVTQEgUspUw622CcnCcfWmOFtib4xwu7K+Bpu954r4XDiXDnO8oOb13yPeAGbvXbiabzNFZsFZnADarwJ3u6HDrEKnVsZDarwxos7U9f95qOVxRVhNw6L9oO8oXUqZUnppph2maas0VdeNY3Fae6amSaC3gDRH38du2iyFeFgigMrgg9129R6Xn0RO8zQBIj.siQSRvVrvktzkPN4jCsigVaVyZV5DKEZkUVIV0pVE0ZHVrUVP2PBIj.RJoj3rw2ImbByd1yVmX4oYZYl9zmN5bm6LsigVKt3hi2NUYsEBxhEpt5p0It5oG0nFE5YO6IsigVq5pqFqd0qlp6cDVwBheO4IOA+5u9qb13ajQFgEu3EyNVssyHUpTrnEsHQ+FYUn+5dBxhEhKt338mINoEXfAhQO5QS6Xn0jKWNVyZVCJnfBnVFL2byggFZH0leFsmRkJw5W+54z8ovblybzYt0VYZcLyLyvRVxRD8eeBg7JpK3JVHqrxBW9xWl1wPqXmc1g4N24J5WJz5qudr10tVp+WdYqpf32d26dQ94mOmM9ibjiDAGbvb13yH74ryNiYMqYQ6XnUznQC14N2ofbyNJnJVPsZ0Xm6bmzNFZEYxjgEu3ECSLwDZGEsRCMz.94e9mwidzincTXatQQtacqag3iOdNa7CHf.zIVEOFsWO5QOD88ikryNaA4lcTPUrPhIlHxM2bocLzJyZVyBt3hKzNFZE0pUi0u90iTSMUZGE.vVYAwrxJqLNseJXqs1h4Mu4w5pmLuv68duG72e+ocLzJG7fGj25LtsTBluBSgBEB5M2QKQjQFIBMzPocLzZ+5u9q31291zNFu.qXAwI0pUiMrgMvY6+HCLv.r3EuXch9WBC4nmd5g4O+4KpWQxpppJbricLZGiWgfoXgSbhSvaWuwbAe80WL9wOdZGCs1INwI3zkLtsvJqrh1QfoM3vG9vHiLxfyF+oO8oiN0oNwYiOi3kolZpn+xC6bm6bnzRKk1w3EDDEKTVYkIp6TiVZokXAKXAh9kB8ZW6ZHt3hi1w3MXgEVP6HvzJ8vG9Pb7iebNa7G7fGrNyU7NC2vM2bCSbhSj1wnMqgFZ.6e+6m1w3EDDu51ANvAPCMz.siQahDIRv7l27f4laNsihVIszRCacqak1wnQwJVPbo5pqFabiajy1Q2d6s2h5WDfg+L3AOXDRHgP6XzlcyadSAwlLGP.TrPVYkEt90uNsiQa1vG9vgu95KsigV4IO4I3m9oeRvVvFqXAwkctychJqrRNYrMwDSv7m+7E0KuLC+ZVyZVh588zd1ydncD.f.nXAg3xd2R4omdJ5OxVUVYkXMqYMBtcd6yYpolxdgAQjqcsqgabiavYi+rm8rg0VaMmM9L5dL1XiwBVvBDseejbxIGbyadSZGC5VrPpolJd3CeHMiPalwFarn+c3nPgBr10tVTVYkQ6n7VwVUAwiJqrRrqcsKNa7GxPFB5V25FmM9L5tb2c2E02PkG7fGj5WphTqXAMZzHpWUgYLiYHpOZNpUqFwDSLB99ZgkVZIsi.SKz11113riIoqt5JlvDl.mL1LsODQDQftzktP6XzlTTQEgqbkqP0LPshERJojD7uP0aS3gGN5QO5AsigVYG6XGHkTRg1wnYwVYAwgKcoKg6cu6wIisgFZHl+7mOzWe84jwmo8AIRjfYO6YKZ6ttG9vGFJUpjZyOUJVPkJU329seiFSsVyQGcDSdxSl1wPqbricLQy8uAqXAguRKsTr28tWNa7m1zlF6BhhgHr1Zqwzm9zocLZSpnhJv4N24n17SkhEt5UuJJt3howTqUddkoxjIi1QoM6l27l3PG5PzNFsXrhED1znQC1xV1Bpqt53jwuO8oOnW8pWbxXyz9TO5QODs8niScpSAEJTPk4l2KVPkJU3nG8n78zRDCcnCEd3gGzNFsY4kWdXyadyb5bXngFBiM1XhMdrhED1N6YOKRO8z4jw1QGcDSYJSgSFal12lxTlBrwFancLZ0pt5pwEtvEnxby6EKb0qdU7zm9T9dZ0ZN4jSh5iI4yd1yvO8S+Dpu954r4PpToXwKdwvHiLhXiIIK7fgrJrvB4rMor95qOVvBV.LzPC4jwmo8MiLxHLyYNSZGi1DZs5B7ZwBh0UU34O9ACLv.ZGk1jmecSy0GQxYNyYB+7yOh9WjYEKHLoRkJroMsINqQdMwINQzwN1QNYrYX..7yO+P3gGNsiQqVM0TCN+4OOuOu7ZwBIlXhhxUUXXCaXvc2cm1wnMa6ae6HyLyjSmiwO9w+hmCHIKVfjqRAC4bhSbBjSN4vIicfAFHFzfFDmL1LLurnhJJQYS95zm9z79pKvaEKnVsZA2UtYKgSN4Dd228cocLZyN24NGRLwD4z4XvCdvXXCaX..n95qmn2I.rhEDddxSdBmsBglZpoXFyXFbxXyv75L1XiEk+8sZpoFdeuKvaEKb8qecQ2pJnmd5Ipe7CokVZb5QZC.HjPBASZRS5E+2jtsQydLDBKZznAae6aGpTohSF+oMsowZDWL7p.BH.z291WZGiVsyblyvq8cAdoXAMZzfSdxSxGSEQ8Nuy6HZe7CkWd4HlXhgSaQnd6s2XdyaduxUyMoWZLVwBBKW5RWhytE75YO6onuYmwHNEUTQI5t4fqppp30t5HuTrv8t28P94mOeLUDi0Vasn8zOnToR7K+xufpppJNaNbxImvRVxRdiUcgjm2doRkJZWUGcQUVYk3.G3.bxXakUVg2+8eeNYrYXZNlZpohxq87ScpSwa2YD7RwBm3DmfOlFhZxSdxh1is0u9q+JxN6r4rw2byMGKe4KGlZpouwOGIeLDr8qfvxu9q+Jmc6jNyYNyF8uOwvvW5Uu5kn6tinzRKEIkTR7xbw4EK7nG8HNaYK4JAFXfHjPBg1wnM4xW9xbZqbVe80GKYIK4s1PSXmDBcS24N2gytlbGv.F.BHf.3jwlgo0XpScpht6fD95Miy4EKH11qBFXfAh1kCMu7xiSuhfA9iaaSO8zy25OOIeLDr8qfvfBEJvN24N4jw1N6rCQEUTbxXyvzZ4fCNfQLhQP6Xzpje94yKWJfbZwBEWbwH4jSlKmBhajibjnCcnCzNFsZxkKGqacqiyZRN..iXDinY6o5jrXA1JKHLbvCdPTQEUP7wUhDIXNyYNh1G2GitogMrgA6s2dZGiVkyblyv4yAmVrv4N24H5Ytmq4niNhgNzgR6Xzlr0stUTRIkvYievAGLdu268Z1ONRdj5DaKGntnrxJKN67bOzgNT3kWdwIiMCSakAFXvqbbvECRM0TwSdxS3z4fyJVPtb475w5fDlxTlhn7EnNyYNCt0stEmM9cricDyctyERjHoY+XI4NyUL9mE5RToREhM1X4jB9c1YmwXFyXH93xvPBAFXfht8QyYO6Y4zwmyJV3xW9xb10VKWH3fCVzsSXA.xLyL4riyFvebqOtzktzV7REyVYAcGm5TmhSNxyRjHAyblyj8muLBZSZRSBRkJk1wnE6pW8pn5pqlyFeNoXA0pUiyctywECMmPpToX7ie7zNFsZxkKGaXCafy5ldM2IenwvJVP2PokVJNxQNBmL1CZPCRTeUuyz9fiN5HFxPFBsiQKlRkJwEu3E4rwmSJV3t28tb9MbHIMvANP3fCNP6XzpEarwxosP6oO8o2p+l5jrXAVCYhd18t2MmrYYs1ZqwXG6XI93xvvEF0nFknpyNFe7wyYMoINoXg3iOdtXX4DFarwXTiZTzNFsZW5RWB23F2fyF+ANvAh9zm9zp+7H4eQ8kaizL7mjSNYb26dWNYrm1zlF6TtvHZXrwFKp1aMUTQEb1W6R7uabIkTBRM0TI8vxYF0nFELyLyncLZUJnfBvt28t4rw2CO7nMuafI4JKzR1PkLjkRkJ4r+tUngFJBLv.4jwlggqzu90OQ0JOyUuYchWrfXZUE5PG5.F7fGLsiQqhRkJw5W+54raaLyM2brvEtv179EfUrf31IO4I4jifqIlXBl7jmLwGWFFtlToRw3F23ncLZwRM0T4juFlnEKnToRQ0wkb7ie7htMQ292+9QAET.mL1RjHAKXAK.Vas0s4wfjEKvdLD7qRKsTNq0wFUTQAKrvBNYrYX3ZgDRHMYmqUngK1niD86FeiabCTSM0PxgjyXt4lK5t+GRIkTv4O+44rwebiabvWe8UqFCRtmEXqr.+Zu6cubxJV4qu9h90u9Q7wkggOIlZK4W4JWg3esLQKVfKu.iHspppJQ0w6r5pqFacqakyF+PBIDLrgMLsdbDScrSl+OO3AO.2912l3iq95qOl9zmNwGWFF9lWd4EBN3focLZQpt5pI9WOSrhEJojRP5omNoFNdQbwEGJrvBocLZQ1912NprxJ4jw1AGb.yd1ylHiEIezArBO3GpUqF6YO6gSF6QO5QK55y9LLuMhoSFAo2R.D66rmPBIPpgh2zPCMfMsoMwYM0HRIgDRfyZmyxjICKZQKhXGmMRVr.WcdgYdUW5RWhS5TiN6ryHxHij3iKCCs3hKtfdzidP6Xzhb+6eeh1uiHx2YWsZ0HwDSjDCEuKmbxg2tOvaKJszR4ziI4jm7jgyN6LwFOVwBhK0Vas329seiSF62+8eeQU6xkgok3ce22UTrepznQCQecYh7c1SM0T4jqvV9xQO5QQt4lKsiwaPiFMXqacqb1crQO5QOP3gGNQGSVwBBSpToBO8oOE4me9HiLx.YjQFH+7yGwEWbbR+jOzPCUq2rrLLBQN6ryHzPCk1wnEIwDSjXONWhbtAESGWxFiJUpvl1zlve8u9WETsX3ye9yizRKMNYrs0VawLlwLH93RxhEprxJgBEJXc7u1f7yOe7vG9PjVZogBJn.TRIkvaEeISlLQ0NGmgo05ce22EIkTRB98U0y2Kg93iOZ8Xo0EKHWtbbm6bGsNHz1SdxSvu8a+FlvDl.siB..Jt3hQbwEGmL15omdX9ye9vXiMlSFaRI0TSEe7G+wnKcoKnu8suH3fClsr1MgRKsTjXhIhe+2+cNoorzRMxQNRspWcvvHz4niNhd1ydhe+2+cZGkl0Uu5UEFEKbqacKN4BmgFN8oOM5V25F71auoZNTqVM15V2Jpu954jweLiYLbRCFQiFMD+DazPCMf6cu6g6cu6AKszRDYjQhANvABYxjQz4QLK+7yGG+3GWP7NcryN6XapQl1EF9vGtnnXgadyahoLkon0qZtV+1.EC+lUKkFMZvl1zlPs0VKUywYO6Ywidzi3jwtKcoKDoeJ75dzidD9W+q+EtzktDwG6mqxJqD6ae6C+0+5eEW8pWkylGwhpqtZDarwh+w+3efqe8qS8BE.9iMLqXqqnxvzV3ryNifBJHZGilkb4xQJojhVONZUwBUVYk3gO7gZcHDRd5SeJ1111F0l+RJoDbnCcHNYrMyLyvbm6bI5iJPoRkXW6ZW3a9lug21jnO6YOCadyaFqZUqBkWd47xbJzbiabC729a+MAUiPKv.CjcQQwztxHFwHncDZQHwapWqdUCgvxdxEt0stE0tPrhM1X4rKIp4Lm4.KszRhMdkWd4Xkqbk3BW3BDaLaMdvCd.9m+y+IRN4jox7SCJUpD6bm6DwDSLBpVqt95qO6hhhocGO8zShre.3Z28t2ExkKWqFCspXAcoGAwqaO6YObRipoob4KeYNakZF3.GH5ZW6JwFuG8nGgu5q9Jjc1YSrwrsnlZpA+3O9ihpV2cakb4xwZVyZDj2rqCcnCE1YmczNFLL7NwvpKzPCMn0M1u1bwBkVZoHmbxQqlbgrFZnADSLwvYaxvW2yed7bA6ryNhdJORKszvpW8pQUUUEwFSsgFMZvt28twgO7gocT3LUUUUXkqbkb1QoUaXs0VKJ9FlLLbA+82ezwN1QZGilURIkjV842lKV3l27lZ0DKFTXgEhe8W+UdYt14N2oVuLQMFIRjfYO6YCCMzPhLdYmc1Xsqcsb1iJQabjibDAc23rsRgBE3G9ge.O9wOl1QoQYpolR6HvvPUQDQDzNBMqG7fGnUuFCqXglQBIj.t10tFmNG27l2jStw+..hLxHI1QAsvBKDqYMqgy5njjPbwEGt90uNsiAwnVsZrt0sNA8p383G+XrwMtQVG2jocqPCMTXt4lS6XzjToRkV0SjZSEKTd4kirxJq17jJ1ricrCNqI2nPgBN6tevImbhX2RZ0UWc3W9keQPso5da15V2JuueS3JG4HGAolZpzNFMqae6aiidziR6XvvPEFXfAXfCbfzNFMKs4M42lJVfqtADEpTnPAV25VGmrz6+1u8abx8pgd5oGl6bmKwZe06cu6EO4IOgHiEWSoRkXiabiBxGURqwCe3CwwN1wncLZwN5QOJxLyLocLXXnhANvAJ36vrojRJPgBEsoO21TwBsWdDDur7xKOricrChNl4latb1t3ejibjvUWckHi0Ce3C4zlsDWH+7yWT8BsuNkJUhsu8sKpNZxZznAadyaVvekuyvvErvBKPO6YOocLZRMzPCs4iZdqtXgpqtZNq6BJzkXhIhye9ySjwRsZ0XG6XGbxKF3pqthQNxQRjwRsZ0b5UjMW5Tm5TT8NRPabpScJTbwES6XzpUbwE2t3XrxvzXF7fGLsiPypst+3Z0EKjbxIK3e2NN6ryb1Xu28tWhTrzktzk3jdTfToRwblybH1xgc0qdUQ6y+ugFZPTdbJqolZvIO4IocLZyN5QOJ0aY5LLzfat4FbyM2ncLZRojRJsoU+qMUrfPlYlYF9zO8S4rBFToREhIlXzpKLom8rmwY2njiXDifX+ZWsZ033G+3DYrnkqcsqI5dG5m6bmSPehSZNxkKGW7hWj1wfggJFv.F.siPSRtb4so2vaqpXAUpTQjKjBtTe6aegwFaLVvBV.mcyDVYkUh0st00le1rwEWbbROUvQGcjnMGmTRIEQ2Kz95znQC0ZG0sEpToRTk22lyctyw16BLsKEVXgAiLxHZGilzcu6ca0eNsphERKszZy6jR9R3gGN.9iGEAW1q5yHiLvd1ydZ0edYkUV3JW4JbPh.l9zmNQuw+DRWRQZiqd0qJZtF0SN4jQ0UWMsigVqxJqTTbjOYXHMCMzPzqd0KZGilDmWrPaYB3S95quvAGb3E+2gGd3HzPCkyluKbgKfDSLwV7GuFMZ3rNBY+6e+Qm6bmI13oPgBbu6cOhMdzTM0TCt+8uOsiQKhtzUuMW2LyXXDp5e+6OsiPSp3hKFEUTQspOmVUwBB88qPi8GPSe5SmSufa1912dKtAUckqbENYSMZokVhwO9wSzwL0TSUz7twaID5E5B7G6QDwRQMsDImbxrt5HS6RcpScRvuQGasuddKtXgRKsTA8wPyXiMFAGbvM5++4O+4yYMKiFZnA7i+3Ohm9zm1jebxkKmy1TiSdxSFlXhIDcL4pa+RZ4AO3AzNBMqbxIGA+i4q0Ptb4B16yBFFtVe6aeocDZRs1GSXKtXAg9yeLzPC8s1sBc2c2I9679kUUUUg0t101jaZwibjivI2RiAETPnG8nGDeb00Zm2EWbwB9VUcFYjAsi.w0dsmrvvDVXgIn6niomd5sptbqNSwB8oO8oI+4iHhHP25V23r4ufBJ.qe8quQW10hKtXh0LmdYFZngXpScpDebUqVMJnfBH93RaB82kagEVHsi.wIVZQ3LLjlolZJBJnfncLdqpu95aUEy2hJVPsZ0B5kw0N6rCd4kWM6G2blybf81aOmkiTRIkFcCLt+8ueN4Xj8du26Aqs1ZhOtUVYkh96UgFSokVJsiPSRWrXAw9QukgQaz6d2aZGglTqYOR0hJVH6rylS5K.jRyspBOmwFaLVzhVDm0+E..hO93ek1caZokFmb8S6jSNgAMnAQ7wE.bxEakPP4kWNsiPSRaZzWBU5p+cIFlVh.CLPXlYlQ6X7V0ZdhAsnhED5OBhVyk2gKt3Bl4LmIGlFf8rm87h1h8d26d4j4XJSYJb1yCSHWXn1Pnu4AEycsw2Fg9umyvvkjJUJmd780V4kWds38RWKpXgzRKMsJPbI2bysV8QiLrvBCuy67NbTh9i9ov5W+5wANvAPt4lKwG+dzid.e80WhOtOmt3if.3OdFcBY5hEKnK9qIFlVivBKLZGglTK802a1hEZngFDz2Q8s0+fXBSXBDsIF85pqt5voN0oH93JSlLDUTQQ7w8kQxt.oPhPdmICna9665h+Zhgo0vKu7BVYkUzNFuUDqXgrxJKA86zrsdrAkJUJ9fO3CDz+gXiY3Ce3vFargSmCCMzPNc7oEtbupPB5h+9tPuG4yvv0jHQBmb71IkzSO8VzGWyVrfP9QP3s2dqUuvoEVXA9fO3CD7uiymqCcnCXnCcnb97Xt4ly4yAMXgEVP6HzjDxaDp1JR2rvXXDiDxEKje942htOZD0EKz8t2csdL7xKu3jdU.WXRSZRu0FOEIw0qbAsHz+0EW1VxoEcweMwvzZ4omdxIGycRokr5BMYwBpToRPueEZr16baQ3gGNmtgGIg.BH.NsoR8xLv.CPG5PG3k4hO4ryNS6Hzjd4KAMcEN5nizNBLLTmP+QQzRVTflrXgbyMWA6NH2UWcE1ZqsDa7hJpnPfAFHwFORRO8zCSZRShWmS2c2cdc93ZFYjQB92kqGd3Asi.w4pqtR6HvvHHPp2bKWnkzIGaxhEZOrpBOmd5oGl+7muf7ceFd3gy6uCMu81adc93Zd6s2PO8ZUWxp7Nu7xKHQhDZGChQhDIb5INhgQLwKu7BlZpozNFMpG+3G2rKLfnsXgPBIDhOlFYjQXoKcoBpMZlgFZHF8nGMuOuB0UYosJf.Bf1QnYYhIlnSshNt5pqrM3HCy+K8zSOz0t1UZGiFkZ0pQ1YmcS9wHJKVvN6riyVAfNzgNfEu3EKXNe3QFYjTYW72gNzAzwN1Qded4JB4k.7kIj61asVB8lQCCCeiu12YsEM2q2+VKVnxJqDkUVYDOPj.WWcl2d6Ml9zmNmNGsDVXgE7xQk7sQneer2R0ktzEA+Ig34BMzPE7OtjVBIRjzpZC6LLsGDP.AHXOp9YkUVM4O+a86JkQFYP7vPJ7wR4zm9zGL7gObNedZJidzilpMpmd26dK3ajQsDCbfCj1QnEyJqrhHGIXZqacqavRKsj1wfgQPwHiLhSaU+Zil607eqEKzbUYPKxjIi29M6wN1whd0qdwKy0qyQGcD8qe8iJy8yYpolhALfAP0Lnsr2d6EMOBhmKxHij1QPqMhQLBZGAFFAIg59VnpppBkVZou0e92ZwB4jSNbRfzV95qu7RiIB3OVJ0YMqYA+82edY9dYiabiSPrbUCcnCUTu5BidziVXRqARH...B.IQTPT0sr9t6t6htBbdYcsqcUmZiZxvPRz30SZoZpK9v252EkKtsDIA9dWsKUpTrvEtPd87h6s2dKXdwBKszRLpQMJZGi1DO7vCQ6lrKpnhRPTrXqkToR48dBBCiXhSN4jfsaN1TKRPiVrPIkTBjKWNmEHsAMpJyHiLBKaYKi25pgbwwBUaDQDQHH6+DMEoRkhYLiYHZ6aA1YmchxhzF9vGtNYmnjggj7yO+ncDZTs5UVPntpBVYkUT6aDYgEVfku7kyK8fgCbfCfjRJINedZozWe8w7m+7ELGmzVhwLlw.WbwEZGCsxHFwHfmd5IsiQKlGd3gnr.GFF9lP8QQnyTr.sqFyAGb.KaYKiyeF9pToBaXCa.IlXhb57zZ3hKtfoLkoP6XzhDTPAggMrgQ6Xn0ddWEULbKfZhIlfErfEHJezILL7M+7yOA4pdVc0U+VaYBMZwBB0M2XW5RWncDf6t6NV3BWHmuo4znQC1xV1BtvEt.mNOsFgGd3HhHhf1wnI4omdh4O+4KH+Bw1Bas0VrjkrDA8p5nu95ikrjkPz6pEFFcYlYlYnScpSzNFMp21hEznuh2ie7i4zvzVQ6UV34bxIm3s4ZW6ZW3Tm5T7170bhJpnP3gGNsiQipicriXYKaYTs2TvEb2c2Erqtfd5oGVvBV.6NffgoURn90L4kWdM5++2nXgpppJTUUUw4Ap0xd6sWvzjWNyYNCTqVMuMe6e+6GG9vGl2lulhDIRvzm9zEbM5HWc0UDczQqSdWDjRJofxKubZGi2fLYxvRW5RELmbGFFwDgZwBETPAM5++2XsMeaefzlP4VPrlZpAW9xWl2m2ibjif5pqNDUTQw6y8qShDIXpScpvN6rC6e+6GZzngp4IrvBCyblyTT2OHZJW7hWj1Q3MXokVhEu3EqSdsZyvvGD8EKje94y4gosPnTrvEtvEZ1qxStxoO8ogb4xwzl1zDDMZnHiLR3latgMtwMhJpnBde90SO8vXG6X0I1LiuMUTQEH4jSl1w3U3u+9i4N24JXezHLLhAlYlYvQGcDEVXgzNJuhhJpHnTox2n4G9FuhiPsXAgPUX0We83bm6bTMCW9xWF+zO8STqfkWmO93C9a+s+FFv.F.utoBc0UWwW7EegNcgB..IjPBTekadNSLwDLsoMMr7kubVgBLLDfP300dcZznoQKf4MJVPH9XHrvBKf81aOsiARLwDQ0UWMsiARN4jw28cemfHK.+wcHwzl1zvm+4eNm22ykJUJl8rmM97O+yEr6lXRQsZ0T4Qd85Lv.CvPFxPv+7e9O48hBYXzk4iO9P6HznZrEMPTrmE7xKuncDfZ0pwoO8oocLdgrxJK70e8WiniNZdqyR1bbyM2vxV1xP1YmMhO93QRIkDwWADUpTgfBJHAwiggqkZpoR0qIdqrxJzm9zGLjgLDXgEVPsbvvnqRntmeZr5.dkhEprxJgBEJ3s.0RIDtTZtyctCJojRncLdEEWbw3q+5uFKe4KWP8trc2c2g6t6Nl7jmLRN4jQRIkDt8suMwF+bxIGAaGPijtzktDuOmN4jSvWe8EAGbvvWe8scQQYLLzhc1YGL0TSQM0TCsixqnnhJ5M9+oey8AHDHDp95rm8rzNBMpm8rmgu4a9Fr3EuXASen34LxHiPXgEFBJnfPzQGMwd16Ymc157EK7rm8Lb26dWhNlcoKcAN3fCu3MDXjQFAiM1XXqs1BGbvA3ryNy1KBLL7L2c2cjRJoP6X7JDkEKHQhD3latQ0LjWd4gzSOcplglRc0UG9ge3GvLm4LQu6cuocbdCFZngvQGcDO4IOgHiW1YmMQFGgrqcsqQ7d4wzm9zgc1YGQGSFFFsiGd3gfqXgRJoDnVs5WYkEek0XTHVrfiN5HLxHinZFn8IfnkPkJUXyady3fG7fBlcO+KijOJIgZ6HmjtxUtBQGutzktvJTfgQ.RH7X1ecMzPCuw9kRvWr.s+MxpppJbsqcMplgViie7ii0st0IXNZkOGIWcnJpnBTYkURrwSnI2byk3GgYgZK5lgo8NZ+ZbuMud8.B9hEb0UWo57ewKdQzPCMP0LzZcqacK7Mey2HnZQvj9QIkUVYQzwSHgz21nlYlYHjPBgniICCCYXt4lCarwFZGi2vasXA0pUiRKsTdOPMmN1wNRs4VkJUH93imZyu1H2byE+6+8+Vv7786Tm5DQ2Y8O5QOhXikPhJUpH9JY06d2aA8sVICS6ct3hKzNBughKt3W4+9Ee26JpnBnRkJdOPMGZVrvst0sH9xcymaVyJqrRrxUtRb8qecdaNeaLv.CfyN6LwFuLxHChMVBIImbxDuYawdDDLLBaz704dad8EO3EEK7zm9TdOLMGas0VpdKBR5UUPlLYH5niFu+6+97VWvSoRkXCaXC3vG9vTeiORxmMWt4lKTpTIwFOgBRuwF81au40qTcFFlVOg3JK750DHnKVflMZnBKrPjVZoQzwr28t2vTSMECdvCFye9yGRkJknieS4HG4H3G+weD0Vas71b95H4ppzPCMnycpHpolZv8t28H5X1u90OhNdLLLjmPbkEDUEKPy2QDWrWEFxPFxK92CMzPwxV1xfgFZHwmm2ljSNY7u9W+K73G+XdaNeYj9lCUW6QQbiabCh9n.kISF5d26NwFOFFFtgCN3ffaeEUWc08JORzWTrfPbyMRxmwcqQ80WOw2Q596u+uQwO94me3i9nOBlYlYDctZJkTRI3q+5uFW8pWk2lymyImbhnOVIcsM4Ho2XigDRHTuGkvvvz7znQCrzRKocLdCu7hHHnWYAGczQpLuW+5WGxkKmni4KupBuL2c2c7oe5mBas0VhNeMk5qudr4MuYrqcsKdcSsJQhDhdofkd5oS7tbHsTd4kS7he5Se5CQGOFFFxq7xKGqbkqTP9ZvMZwBz71s6sgVEKbwKdQhNd1au8M4U2rCN3.9zO8S48M4xEtvEvJW4JQEUTAuMmj7QQHWtbp8HUHsjRJIhtATsxJqfu95KwFOFFFxKkTRAe4W9kHyLyj1QoQ8x0E7hhEDZcDOas0VHSlLdedyO+7IduIXvCdvM6oevJqrBexm7ID+452bxLyLwW9keId3CeHuLej9We7Ut4ZbQuUfciQxvHLoVsZbnCcHrl0rFheToIoW9MRpGve7NzDZsGXZspBIjPBDc7jISVK9xcxDSLAQGcznacqaDMCMmpppJrpUsJbnCcHNeY8cyM2H5F4QWnXghJpHjat4Rzwj8HHXXDld1ydFV8pWMN1wNFsiRy5kWDA8..utLzsTz3RuQkJU32+8emniYngFZqZS8ISlLrnEsHDYjQRzbzbznQCN1wNFV4JWIm9HoLv.CHZ+VPWXeKP5UUvc2cmZEayvv71c+6eedckb0VuwJKvJV3Obm6bGhujPCX.CnU+4nmd5gnhJJLiYLCdsWL.7GGGw+4+7ehadyaxYyAIeTDJTnPz2uERJojH530yd1ShNdLLLZGUpTg8u+8iUu5UK3dj+Mk2nXAgX3oQwBjt644pqtBO7vi17me3gGNhN5n48tXYs0VKV25VG1wN1Am73o5bm6LQGu6e+6SzwiOUPAEfBKrPhMdRjHAgFZnDa7XXXzNEUTQ3+7e9O3Tm5TzNJsZrGCQinhJpf3cOu1xpJ7570WewJVwJf81aOARTqyEu3Ew+9e+uQAET.QG2N24NSzULIkTRgXiEeizqfiO93if77ZyvzdTBIj.9pu5qH9dRhuTWc0AEJT.f+2hEd1ydFUCTioCcnC757c0qdUhdz0LxHiH1xA6fCNfUrhUPkiBWAET.9W+q+EN+4OOw98GCMzP3omdRjwB3ONQGjtuXvWHcwBgEVXDc7XXXZ8polZPLwDC1111Fpqt5ncbzJOu9.8.ff6naXlYlw6GaRR2QCCKrvHZqb1TSMEQGczT4FDToRk3W+0eEqd0qlXa9Q+7yOhLN.+wwPRrrggdYEUTQH+7ymXimToRYs2YFFJ6d26d3e7O9G3F23FzNJDwyqOPPVrfM1XCuNe4lat3IO4IDcL4hKvGoRkhYLiYfnhJJd6Vq7k8fG7.72+6+chb7R6RW5BARz+Gw3ih3V25VDc772e+golZJQGSFFwlJqrRjWd4gzSOcbu6cOb+6eejYlYhhKtXNsi0pPgBr8suc7C+vOHHez9sUOu9.8e4+CgBqrxJdc9H8QWyImbRq1XiMmHiLR3fCNfMsoMw6K+tBEJv1111vst0svLlwLZyOeb2c2cXjQF8hmGl1RLVr.oemGrGAAS6MJTn.okVZ3AO3AHiLx.EUTQM42SThDInCcnCvCO7.d4kWnqcsqD4QdmVZogsrksHHaYyZqpppJ.HPKVfOWYA0pUS7hE5ae6KQGuFSPAED9hu3Kvu7K+BQWJ6VpjSNY72+6+cLkoLk1zKRIUpT3iO9f6d26Rj77zm9TTXgEJZ5u.kVZoDcSOou95y6MyKFFZPiFMHkTRAIlXh3N24NPoRkspO2RJoDTRIk7huuuqt5J5Uu5E5W+5GL1XiaUYQoRkHt3hCm8rmsU84IlHnWYAqs1Zdatd3CeHQO5n5omds3N1n1xd6sGqXEq.ae6am3MSpVhZpoFrgMrAbqacKL0oN0V8smoe94GwJV.3O5SFhkhEH8ifHf.BfcCSxnSSsZ035W+533G+3D8wFmat4hbyMWbnCcHDd3giQLhQ.Krvhl8yKszRCwFarn3hKlXYQH5EEKnToRA2t0jOeLDjdUE5ZW6ZK5unQJxjICyctyEd5omXO6YO75sH4yciabC7fG7.LwINwVUaFljaxQ.f6d26hgMrgQzwjqPxhj..aiMxnSKiLx.6XG6fSWE05qudbtycNjPBIfgO7gigMrg0nGwa4xki8u+8iKcoKwYYQH4EEKTas0R4n7lL2by4k4QoRkD+nqwEarwVhAMnAA2byM7K+xuPkMWSM0TC1xV1Bt5UuJl9zmdKpOY3jSNAarwFhcBKxHiLP0UWcqdEN3a0TSMD85nVpToHnfBhXiGCiPgRkJwd26dQ7wGOuMm0UWc3PG5PHojRByd1yFt5pqu3m61291XW6ZW5TafwlyyqQPORsAyHI9pXg6cu6QrMXGvebQPEXfARrwq0xCO7.+W+W+WD+jFzZ77SLwINwIZQqxAI+8KMZzP7FqEWHkTRgn2mE95qu7dW9jggq87NeHeVnvKK+7yGe8W+03xW9x3YO6YHlXhA+7O+ysqJT..+eMkIgXyrguVFeRuaz6QO5AueWN75L2byQzQGMF9vGN0xvy2zOe0W8UHqrxpI+XI86HlzKuOW3N24NDc7BIjPH53wvPaYlYl3+7e9O3wO9wTMGMzPCH1XiEewW7E5L8MgVqmWiffrXA9XkETpTIwegEgxE3id5oGF23FGV7hWbqd28RROux7csqc8VWAGe80Wh1.tt28tWqZ2Qy2ToREQOlmRjHAAGbvDa79+ydm2gEkWou+umJ8tzAoHMQvBnXWDMQwRTSLF2TccScSwDShYcyFiomnoYL52jrQSLaViIFKwnFMhHJ1QPr.BBHBHcP53PYJ+9CVlehhJCy4cNm2gymqq4BDXdN2gL7N2uOmmyyCGNzlKbgKfO+y+bvRaQNKeMEgF8lEXssgvZqs1jb24YlYlDsvNcxImH9.RxXYnCcn3Mdi2fnsVYCEc5zgCdvCh27MeytskZqPgBhVnis1Zq3BW3BDKdjlbxIGh1aLBJnfLoETKGNBI4me93q9puRPFfcb5cneaHXQyBlBDhFhCM5ph2I5W+5GVxRVBl4LmIU0W80WO99u+6wJW4JuoQJMo2JBRerDIIjNaV7rJvwbgJqrRrl0rFtQAFClslELElEZu81I99FOxQNRhFORhToRw8bO2Cd0W8UM4sR6aj7yOe7ge3Ghe7G+Q8cFLRWTnm8rmkJGgzdBj1r.uQLwwbf1auc7u+2+azbyMSaoPcL0cv36Ds0VaPiFMPJq0iELE6wNo2BBO8zS3iO9Pr3ITDTPAg27MeSL7gObppCc5zgibjifksrkgCbfC.as0V3me9Qr3esqcMjc1YSr3QJpnhJP0UWMwhmGd3gIeTtygiPv1111vUtxUnsLnJRkJEyblyDO2y8bzVJ2Ds0VaczTlXILEYVfzooVL0S9sxJqvS9jOIhHhHvl1zlnZC4RkJU3W9keAImbxD2M8oO8owfFzfHZLMVH87qf2aE3XNPAET.RJojnsLnJt4la3u829aHf.BfImuDs2d6PJqYVPnyrfVsZw4O+4IZLEicOuQO5QiksrkA+82eZKETVYkgrxJKhFyyblyvbaEA2r.GNcEsZ0hMtwMdSE9beIhM1XwxV1xzO7AYw11das0VeOyB4kWdDcew7zSOgmd5IwhmoDWc0U7Zu1qgoMsowjEmowPSM0DScpHZu81QN4jCwhm0VaMFv.F.whGGNzfzSOchNP0DSXu81iW3EdA7POzC0kiONKZVPsZ0rmYAEJTHnwmzE1nXLqBWOxjICyYNyAKYIKAt6t6zVNDERO2OLFxKu7HZUdGQDQ.oRkRr3wgCMXO6YOzVBTggMrggku7kiHhHha56ISlLHWtbJnpaMLYlEHYC5o6fzlEhN5nIZ7nECX.C.KaYKCSYJSwrIKCm8rmkYNFV7sffCmtxEu3E6yUTiVZokXAKXA3Ydlm41NCaXsrKzd6sCorxES6DgzrPokVJppppHV7byM2f2d6MwhGsQgBEXtyctXoKcoh1sV45o0Vak3lC6sP5t1X3gGNwhGGNzfSbhSPaIXRIxHiDKe4KGiYLi4N9yZgEVXBTTOm1aucHk0JBLgzr.er.2yve+8Guwa7FX5Se5h9TcyBaEQs0VKJszRIV772e+gM1XCwhGGNlZZu816yLqEr0Vawi+3ONd9m+46w84FgNC6FJpUqFxI4zuiDHj+RhO.e54HWtbL6YOaLrgML7C+vOP8A5RukLyLSpO1pIcOef0NRnb3Xnje94S0issohXhIFL+4OeC95OzdfDdinSmNHk0NxJB0ujZt4luiS.QCA6s2dh1HgXU5e+6Od8W+0w8bO2Cy8B3dBZznAm5TmhpZ3hW7hDMd7sffiXGVrooQRb1YmwK7Bu.d7G+w6U2nBqcsVsZ0BorVlEDphq6BW3BD8r7N3AOXylBA7NgLYxvLm4Lw+5e8uDkFjN1wNFUWeRZVvJqrR+4wlCGwJW5RWh1RPPPhDIXhSbh2xS5POEVa6e0oSG6sMDB0uj3Uitwi2d6MV5RWJNzgND1wN1AQmdhBIEUTQnjRJgJEiZUUUEpolZHV7BKrvXtKjvgigREUTAsk.wwCO7.O1i8XDo+mvyrPO.g3WR5zoinMnGROVkESHUpTDWbwg29seapOiILDnU1E3aAAGNckVZoETWc0QaYPbF+3GOwZTZLoYAVqlEDhT6WbwEi5qudhEuvBKLlqZUM03fCNfm7IeR7hu3KJJFlQm7jmjJs+YdwMxgSWoyoMq4Fjz.DSZVf1h3FQHLKP5sffOVf++S3gGNV9xWNl8rmMSafpwFaDqcsqk3yfh6DjLyBt5pqvEWbgXwiCGZPKszBskff.IGi.rX8vIm0DkPb2eYjQFDMdFSgqXNhBEJvzm9zwnF0nvV1xVX1yOclYlIxLyLgmd5IlzjlDF0nFkf2DvZngFHV7BMzPIVr3vgVXtdjIIY2PlEy3uTVqXoHcMTzVasg7yOehEOO8zS3jSNQr3YNgyN6Ldpm5ovK+xuLS2AHKqrxvF23Fw+3e7OvV1xVP0UWsfrN4latDMdbyBbLGf0l6AjBRNWiXsZITpTol+YVHu7xinwjumw2YBMzPwxV1xvgO7gwN24NQSM0DskT2x0t10PBIj.1+92OhHhHv3G+3QjQFIwNsA4kWdDINcB2r.GyAXs8imTPx44.q0YkkJUJjyZYVfz+RhWfYzAYxjgINwIhQNxQhcu6ciCbfCvb+APmnSmNb9yedb9yed3niNhwMtwgwN1w1iaMq2JHoYA2c2c3fCNPr3wgiolKcoKgibjifTSMUZKEAAqs1ZhEKVaaH5SjYARZVPtb4H3fClXwqu.VYkU39u+6GwFarXqacqH8zSm1R51Rc0UG10t1E18t2s9rMDQDQXv2MTs0VKQ6uB7rJvQLRSM0DNwINANxQNBJqrxnsbDTbyM2HVrXxsgvbNyBpToBEUTQDKdgDRHDceo5Kgqt5Jdlm4Yvktzkv1111HdJ5IMWe1FryN6PLwDCF8nGM70We6QOeR+eegDRHDMdb3HTnUqVbgKbAb7iebblybFnVsZZKISBt6t6DKVjrXIIARjHAxYs8OhjlExImbHZ5b3MDGimALfAfkrjkfyd1yhsu8sKJtaiFarQjXhIhDSLQ3iO9fQO5QiXhIFXu81eKeN75UfSeMtxUtBN9wONRIkTLa6kB2JjKWN7xKuHV7Zqs1HVrHAxjICxYs6Tlj+Rhz0q.2r.4XHCYHHxHiDG+3GG6bm6D0VaszVR8HJt3hwu9q+J15V2JBO7vwHFwHvPG5PuohahjlEbyM2tsFS3vgVTas0hScpSgSbhSfRJoDZKGpQfAFHQOF1rVlETnPA6YVfjMribxIGhEKas0Vh5bjSG6C1XG6XQLwDCN7gOL1yd1CQ6KABIZ0pEYjQFHiLx.xkKGQFYjXDiXDHxHiDZzngnW3LnfBhXwhCGik5qudjVZogTSMUy1ABkgRXgEFQiGqkYAyZyBpTohnWvN3fClI6pVlCnPgBLoIMILtwMNjTRIg8su8wrG2xtC0pUizSOcjd5oCKrvB3me9Qzs+hT8adNb5szPCMfzSOcjZpohbyMWlqZ8oMjdN4vMKzCfTlEtzktDQeAMeOiEdTpTIl5TmJhM1XQhIlH1+92Ot10tFskkAQqs1JQynE.OyBbnCUUUU3Lm4L3Lm4LD+5olSDP.APzhaTmNcbyB8DHoYARB2rfoCKszRLiYLCL4IOYbvCdPjPBIHpxz.IwFarAd3gGzVFb5iPQEUjdCB8kqAACgXiMVhFOVb1YnPgBHm0F9Oj5WTjr.yr0VaY51Wr4JVZokH93iGwEWbH4jSF6ae6SzTSCjB9VPvQHQkJUHqrxBYlYlHiLxvrbzQKj3hKtfXhIFhFSVLaplsYVPiFM3xW9xDPMcPngFJudEnHVXgE3tu66FSbhSDqe8qm4arSjDtYANjlRJoD8Em6ktzkX1NqpXfoO8oS71WMKZVPoRkPtUVYEs0QWfDlEJpnhH5QOg20FYCTnPAlwLlQeJyB8u+8m1RfiHmpqtZjc1Yq+QesdffPge94GFyXFCwiKqYVPlLYcjYARN7KHAj3Exjtg3vKvL1Ae80WDbvAS7I5HqxpW8p0+eyc9vVask1xhCCSM0TCxKu7vEu3EQ1YmsfMUU6KiDIRvC+vOLwF5bWOpToh3wzXnyDJvbYVn4laFZ0p0n9eBjbKHrvBKf2d6MwhGGimIO4I2mwrfNc5PQEUDJpnhPhIlH.5XLoe8lG3iL89tnSmNTVYkgbyMWjWd4g7xKOhNSR3z8L6YOa3me9IHwl0Jl6NSn.ykYAc5zglZpIipi0UPAEPL8DP.AHHtG4z6YHCYHvEWbAW8pWk1RgJTVYkgxJqLjbxIC..mbxI3u+9q+ge94GXsaBfCYnwFaDETPA3xW9x5+Hqk1ZycFzfFDhO93Er3yZEwsdyBr3EUZrwF60lEZrwFI5ahvKvL1CoRkh3hKNrksrEZKElfZqsVTas01kZ4vCO7.94meHf.B.96u+vau8lnsiVNBOM0TSn3hKFEUTQnfBJ.ETPA8YMHyJ3iO9fm7IeRAsf2YsZJgY2FBfNbV0aS8OIyp.PG87aNrGiabiC6bm6Ds1ZqzVJLIkWd4n7xKGm7jmD.crGqt5pqvau8tKOb0UW4YNixnUqVTUUUghKtXbkqbE8ejeLFYKb0UWwhVzhD7r1wMKX.XL+xhzlE3YVfMwJqrBidziFG7fGj1RQTfNc5PkUVIprxJ6RFHTnPA7xKuf2d6Mb2c2gat4Fb2c2gqt5JOSDDl1ZqMTQEUfxKubTVYko+iUTQE7iu3+ifBJHL9wOdTWc0gsu8sSa4nGe80WrnEsHSx.ci01FB8lErzRKgLYxXpWrZL+xhjE2nmd5IeueYXl7jmLNzgNDuMzZDzd6siBKrPTXgEdSeOGczQ3lat0kGt3hKvYmclehLtEzTSMgpppJTUUUgpqtZ8edUUUEOSA2BrwFavnF0nv3G+36RyuyUWcEe+2+8TeBLFQDQfm3IdBS16EvZlE57u0k24+n95qmpB55wX9kU2cQudKADP.DKVbHOt4laHpnhBokVZzVJlkTWc0g5pqttcVWHWtb3jSN0kGN6ryvImbB1au8vN6rC1ZqsvBKrfBJm7zRKsfFarQ8O5rNQtwGpUql1RUzPHgDBF+3GOF1vFF5tlCXzQGM7zSOw5W+5QwEWrIWeRkJEyYNyASYJSwj1T9ps1ZMYqUOAl1rPu8n+b0qdUhdrSDpiFCGxQ7wGO2r.EPsZ05ui4aGxkKWuwAas0V8et0VaMrzRKgEVXwM8wq+gLYxz+n2TaEZ0pEs0Van81auKeryGpToBW6ZWqKeryOugFZPu4.Ze2slKzu90OLpQMJL5QOZzu90u63OuWd4EV5RWJ1yd1C9y+7OMYlwBLv.wC8POD70WeMIqWmzRKsvbyFhaxr.KQusheuxUtBQ0A2r.6S+6e+Q3gGNtvEt.QiaPAEDTpTIxJqr3aygQfZ0p0eW2j.oRkBoRkp27PmsZWsZ01kG5zoS+G4PWrzRKQzQGMF8nGcupa3pPgBLqYMKL1wNV7a+1ugScpSIX++U2byMLiYLCLxQNRpzh+YwdjgYoYARlpJoRkBe7wGhEONBGwGe7D2rPokVJ9fO3CP6s2NRM0TwIO4IIdwyxwvoSy.7z8y1HSlLLnAMHLhQLBLzgNThTrrt3hK3we7GGyd1yFIlXhHkTRgXYRNzP8s2Ww...f.PRDEDUCEie7iGQGczT8zAwZaAA.iaVn95qGpUqFxkK2fddjLyBd4kWc69nwg8HzPCE96u+D8Myu10tFRHgDvrl0rvjlzjvjlzjPEUTARM0TQZokFe78xgyMfDIRPXgEFFwHFAF1vFFr1ZqEj0oe8qeX9ye939u+6GYkUV3rm8rHmbxAkWd483XXgEVffCNXDVXggniNZ3ryNKHZ0Pg4MKXmc1QUwzcTas0BWc0UC54PRyB96u+DKVbDdhO93wW+0eMQi492+9QbwEm9+9vc2cGyXFy.yXFy.kWd4HszRiabfSeZjHQBBJnfvvG9vQTQEkI4nE1IxjICQDQDHhHh..cbRTJqrxPkUVIps1ZQKszBZs0Vgb4xgkVZIr1Zq6xQClzSKRR.KNGO575exA53HRwZTc0UaPlEToREQ6tY75UPbwPFxPfGd3gAc2E2IZs0Vwd1ydvC7.OvM887vCOzabnnhJBu+6+9Dac4vgkQlLYHrvBCQEUTXvCdvlTCB2Nr0Va0OuTDqbmJXXSMxjIqqYVfEMKXnE5Aou6NScUvxw3PpToX5Se5369tuinw8PG5P3ttq6hYRSIGNz.KrvBDQDQfgMrggHhHBd+mQff0LK3fCNnuPOk24Wf0vP+kFI2BBIRj.u7xKhEONlFFwHFA9i+3OHZ1ETqVM18t2MdzG8Quk+LkVZoDa83vgUvM2bCQDQDHxHiDAGbv7Z3xD.KZVnSX1LKXnWvmjYVne8qelMMSl9RHUpTLiYLCr90udhF2icrigoLko.2c28t86SRyIb3PKjKWNBIjPzaPvM2bi1RpOEM2byL2DD858Fn+zPHUpTnUqVpIpaDC8Bvj7B17iLo3kgO7gicu6cSzWOnUqV76+9uim7Iext86yyr.GwJ93iOXfCbfHrvBCAGbv7aRhhvZYU.naxrfToRg81aOS06xqrxJgFMZ5wUrZYkUFwV6d6DujC8QnxtPpolJt669t61SICIesmKt3BZs0VIZmHkCmNwEWbQu4fvBKLl7jv0WERdcDRwMkYA..mbxIlxrfFMZP0UW8sL0uWOM0TSD8hqbyBhaDhrK..r4MuY7Zu1q0kuV6s2NQuifoO8oiwMtwgxKubjat4hbyMWjWd4QzS5Cm9N3gGdffCNXDTPAgPBIDdg5xvvhamoSN4j9OWuYAWbwEhNwFIAkWd48HyBjNMvbyBhajJUJl4LmIV25VGQi6ktzkvoN0ovHFwHz+0prxJIZqm0CO7P+G8vCOv3G+3APG8cjNMNjat4hxJqLdqLlSWPtb4vWe8ECX.CPuAAVqg6w4VCKtclt3hK5+b4c2WjUn7xKGCYHCoG8yQJTnPgA2Ln3vdDczQi8rm8P7iT61111vPG5P0WY3UVYkDM9cZV3FwImbBwDSLHlXhA.cLvYJpnhPgEVHJnfBPAET.S1PW3Hb3t6tC+82eDP.Af.BH.3iO9Xvc8VNrCr31PHZLKzS+kGI+kr6t6NU6M3bHCRkJE268duXMqYMDMt0TSMHgDR.Se5SG..UTQEDK11XiM836DzRKsDgDRHHjPBQ+Wq4latKlGtxUtBSNXZ3XXHQhD3gGd.e80W3iO9f92+9C+7yOAqcJywzS6s2NyY1WlLYceMKvhlE5oCFJRZV3VcmcbDeDYjQhfBJHjWd4Qz3t28tWL1wNV3fCNPTyBF6q8rwFaP3gGNBO7v0+0ToREJojRPokVJJojRz+4M2byFqb4H.Xqs1BO8zS3kWdAe80W3qu9Bu81adONvLGVbaEcxIm5xMNq2rPOY1hapozRKsGchHHYpf6I0HAGwC228ceXkqbkDMls1Zq329seCKXAKfnu1SHLpZkUVgfBJHDTPA0kud80WudiCUTQEnxJqDUUUUnlZpg4tnk4FRjHAN4jSvc2cGd5omc4AuFC5aBIapfjhaLABLclEznQCJszRussdYMZzPzTsxyrf4ECX.C.CcnCEm4Lmgnw83G+3Ht3hioxrfgfCN3.bvAG5RVH.5niUVc0UiJqrR8OppppP0UWMps1ZQ6s2tISihYTpTIb1Ymgqt55M8vEWbgmo.NcAQkYAEJT.GczQl53SB.TTQEcaMKTc0USz6DhmYAyOlyblCN6YOKQechNc5v+8+9eQiM1HwhIKXTUtb45OIFcGM0TSn1ZqE0UWcn1Zq8ldzXiMxbcgNRhDIRfs1ZKryN6fc1YGbzQGgyN6LbxImz+vYmcF1XiMzVpbDQvhlEtwB8uKkNq6t6NSZVXricr2xuOo65UbyBle3omdhwLlwfidziRz3VXgERz3IFZut1ZqsvVas81ZfWqVs568Ic2ilatY8iO3Neb8+agN6ExkKGJUpDJTn.VXgEvJqrBVYkUvZqsFVas05+bqrxJXiM1.6ryNXu81C6ryN8c6VNbHE5zoqGWedlRtw2KrKlEbyM2vEu3EMoB5NQQEUzs86SRyBN5nivRKsjXwiC6v8bO2CRIkTX5znyhaEXugN6Hr81QWrVsZ0aZPiFMPiFMPmNc5+bsZ0p+ic1h5kHQBjJUZ29PgBE5MGnPgB9a1ygoH6ryFszRKzVF2D2VyBr3cUWbwECsZ0dK+CbRZVPLbmcb5c3jSNgoLkofcu6cSaozs3niNx2G6+GRkJU+c6ygi4LojRJ3G9gef1xna4Fe+vt7NvrnYg1ZqsaaQjQxpQmEOQHbHGScpSkImvp.279CxgCGya14N2IV+5WOTqVMskxMgSN4DTpTYW9ZLuYAfNZyt2JHYirfaVv7FKrvBbu268RaYzsvesGGN8Mn81aGe629sXW6ZWzVJ2R5Nu.cwrP+5W+Xx8y61YVfjGaRyk8LlyslQNxQ1sSNRZCOyBb3X9SCMz.9zO8SQpolJskxsk6nYAYxjwjYW3VYV3ZW6Zn0VakXqC+t6L+QhDIX9ye9zVF2D7W6wgi4MkTRI3C+vOj4FXicGd5om2zW6lRi.KNwEqnhJ51QPcs0VKQWG9Er6aPfAFn9AxDq.OyBb3X9x4O+4wJVwJDMypktyGvMYVvKu7xjHFCktK6Bj7W7xkKGN3fCDKdbXatu669toB3glv2BLNbLO4.G3.XsqcsDMK3BM8HyBrXlE.DdyBt3hKPhDIDKdbXabxImvzl1znsL.PGa+WusmDvgCG1DMZzfe5m9I7K+xuHpl2JN3fCcaGHkmYg+GN4jSDKVbDGLkoLElnFcbzQG4FU4vwLhFZnArpUsJbnCcHZKEClakGfaxrP+5W+Xpzy1IETPAns1ZqKeMRVyBr54umivgb4xwC9fOHskA2nJGNlQje94i2+8eejSN4PaozqnGaVPpTocakPRaTqVMxM2b6xWijywBtYg9lLvANPL7gObppAtYANbLO3fG7f3S9jOg4lwRFB93iOc6WuaapB8u+8WPESukryN6t7uangFHVr4lE56xC7.O.UmIHbyBb3Htos1ZCe+2+8XSaZSPiFMzVNFE2p2+uaMK3me9Inho2RVYkUW920We8DK17KX22EGbvALqYMKps97W6wgi3kpppJrhUrBbhSbBZKEiF4xkeK2YAQUlEtxUth99sfFMZv0t10HVr4YVnuMwEWb2xzuIz3ryNSk0kCGNFGm+7mGevG7AL4Hlt2fO93CjISV2985VyBd6s22xm.soyshfjaAA.38Xg93HUpT7HOxiPkSk.2nJGNhKzpUK98e+2wZVyZH5MsRatc6pP2ZVPtb4L6QnryshfjaAA.2r.Gf.BH.LoIMIS95x6wBb3Hdn4laFqYMqgYG28FC2tcU3VN0nX0sh37m+7nlZpAM1XiDKlVas0L4.zhiom4Lm4Xxa621Ymclz0iCGN8N57XQlYlYRaoHHzqLKDP.AHHhwXo95qGu268dDcpcwuXMmNQoRk3QdjGwjsdVYkUPgBElr0iCGNFN5zoC+4e9m3S9jOAW8pWk1xQPPgBE21N37szrPfAFnfHHRPyM2LQq7TtYANWOCbfCDiYLiwjrV7sffCG1lFarQ7ke4WhssssI5OVj2N7yO+ts0pn7a02vSO8DVZoknkVZQPDFKgs1ZKsk.GFi4Mu4gLxHChWHs2HbyBb3vtjc1Yiu669NhWibrH2oDDbKyrfToRg+96Oo0CSBOyBbtQr1ZqMIsBZtYANbXOznQC1912NV0pVUeBiB.FgYA.fALfAPTwvpvyr.mtinhJJDczQKnqA2nJGNrEkWd43i9nOB6cu6UTMsHMVtSlEtkaCQO4Iat.2r.maEOzC8PHu7xSvt6BZ1lo4vgSWI4jSF+5u9q2zPKzbGWbwk6X6C31lYAV8DQPZ5tY2MGN.cXj7QezGUvh+AO3AQEUTgfEeNb3bmoolZBqcsqEabiarOmQAfd1tHbaMKXiM1PsVfqoDqrxJZKANLLQFYjXbiabBRraokVv27MeSexKPwgCKvYNyYva8VuEN24NGskB0H3fC9N9ybG6DQgDRHDQLrL7TAy4Nw7l27fKt3hfD6RJoDrwMtQAI1b3vo6QkJU36+9uGe0W8UDsI+IFom7972QyB8DGGhc3YVfycBKszRrvEtPAa1QbhSbBjbxIKHwlCGNckKbgKf25sdKyhIEowh81aO7vCOti+b7LK.tYAN8LBN3fwccW2kfE+e4W9ETXgEJXwmCm95zRKsfe5m9I7EewWf5pqNZKGlfd56weGMKXqs1xrCUJRAeaH3zSYBSXBBVrUqVM9lu4aPyM2rfsFb3zWkKbgKf29seabnCcHZKElBhYVvPBlXEdlE3zSQnKDwqd0qhu669t9TmuaNbDRZt4lwF1vFvW7EeApolZnsbXNHpYgANvAZThg0oppph1RfiHgVasUAeMxHiLve7G+gfuNb3XtS5omNd629swwO9wosTXRbvAGfmd5YO5msGYVHzPC0rdDN+du26gcricf1aucZKENLNlByB..6bm6DYjQFlj0hCGyMpu95w27MeC95u9qoZ6Zl0a3egGd383e1djC.qrxJy5FzjFMZve7G+Adm24cvEu3Eosb3vvXpFrZ5zoCqacqCkUVYlj0iCGyAzpUKN3AOHdy27MwoO8oolNTnPAd3G9ggu95K0zPOAhaVvPCpXkJqrR7Ye1mgMrgMflZpIZKGNLHlxlmjJUpvZW6Z4E7HGN8.Jt3hwJW4Jwl1zln5zR1Ku7Bu9q+5HhHh.Ymc1TSG8DLjRLfaVna33G+3X4Ke43XG6X7BMiSWvTsMDcRUUUE95u9qgFMZLoqKGNhEZs0VwV25Vw6+9uOt7kuLU0xDlvDv+7e9OgWd4EN9wONS+9G95quFzfr61NHotd72e+gUVYEToRUuRXhMZpolvO7C+.N7gOLdnG5gX9zIwwz.MtikbxIGroMsI7HOxiXxWaNbXYN8oOM17l2Lps1ZopNr1Zqwi9nOJhJpn.PGai3QO5QopltSXnI.nGaVPpToH7vCGokVZFrnDyje94i2+8eeLwINQL6YOa9wrrONl5LKzIG9vGFd4kWXRSZRTY84vgknhJp.aZSaBYkUVzVJHnfBBO9i+3vYmcV+WKmbxAW8pWkhp5NyfFzfLne9drYA.fAO3A2myr.PGtDSJojPpolJl6bmKF0nFkf01e4v1PyA9zl27lg6t6tA+G4b3XtPqs1J9i+3OPBIj.02ZNIRjfoO8oiYNyYdSmVPVOqBVYkUHnfBxfdNFjYgHhHBHQhDldeXDRZrwFwF1vFPxImLl+7mO72e+osj3XhglENkNc5v29seKV5RWZOpWtygi4DojRJXqacqLQaZ1M2bC+0+5esaGsypToBomd5TPU8bhHhHfLYxLnmiA07Dr0VaQfAFnAs.lije94iO7C+P78e+2yDuvkioCZsMDchJUpvZVyZ3mVGN8YnfBJ.qXEq.qe8qmItdarwFKV1xVV2ZT..3jm7jL+HmevCdvF7ywfxrPmKxktzkL3ExbjSbhSfSe5SioMsog69tuanPgBZKINBLrvEAppppvZW6ZwhW7hgRkJosb3vQPn95qGae6amY59hN5niXAKXA2wBC7fG7flFA0KQhDI8psxzfaKi8FGIlyzVasgcricf27MeSbpScp9raQSeEn89j1I4me93a+1uEZ0pk1RgCGhRas0F18t2MV1xVFyXTXjibjX4Ke42QiBYmc1LeiTKnfBB1XiMF7yyfyrfWd4Eb0UW4ySgafZpoFrt0sNr+8ueL24NWy9guUeUXo2b9bm6b3+9e+u3wdrGi1RgCGiFsZ0hie7iicricP0Vz70is1ZKd3G9g0ejHuSjTRIIvJx3YHCYH8pmmAaV..XXCaXXe6ae8pEzbmBJn.7oe5mhHiLRbe228Y1Odu6qAqjYgN4nG8nvQGcDyZVyh1RgCmdMYjQFXqacqnzRKk1RQOCdvCFO5i9nvd6suG8yWSM0fyd1yJvpx3YXCaX8pmWuxrPTQEE2rvcfye9yiLxHCL1wNVbO2y8.GczQZKIND.VJyBcxt28tgCN3.hM1XosT3vwfnvBKDaaaaioZKx1Zqs3u7W9KXDiXDFzy6PG5PL+1P2+92ezu90ud0ysWYVve+8GN4jSTuqYw5nSmNbjibDjRJofINwIh3iO9d0dEwgcfEMK..roMsIXu812quqANbLkTVYkgcricvbGwvQNxQhG3Ad.CdZQ1d6siibjiHPphbDczQ2qet8JyBRjHAQEUTHwDSrWuv8kns1ZC6ae6CImbx3ttq6B28ce2vRKsj1xhSu.VaaH5jNmRkuzK8RH3fCl1xgCmtkqd0qhctychSbhSvT2EtyN6LdjG4Q50M7rTRIEQwwY1XtYhdkYA.vMKzKnkVZA6ZW6BIkTRXpScpHt3hiez2DYvpYV..PsZ0Xsqcs30dsWiWqLlwnUqVTTQEg7xKOTd4kiJqrRTe80iVZoEzZqsBEJT.KszRXiM1.2byM3kWdAe7wGDbvACKrvBpn45qud7G+wefCe3CyTFtkHQBhKt3vblyb50+tQmNcHgDRfvJi73s2dC2c28d8yuWaVHv.CDN3fCLSUqJln4laFaaaaCIlXhH93iGie7imY5QC0We8c4BOxkKGVXgEvFarA8qe8yf65WlavRWnq6PkJUXUqZU3UdkWwntv.G1B0pUiLxHCjRJofLyLyaamDUkJUngFZ..nKSgQYxjgfBJHLzgNTLxQNRSxVhVe80i+7O+SjbxIi1aucAe8LD7zSOwi8XOlQ2nAO24NGyebIALtsf..PhNiHWPadyalmcABfCN3.lxTlBlvDlfIMSCs1ZqHmbxAYkUVH+7yGkUVY21KBIUpT3hKtf.BH.DbvAiANvABWc0USldYAd629sYpJ19VgiN5HVxRVRutXl3vFzbyMijRJIjTRIQzzbKWtbDczQi3iOdAIKTrrIA4xkioMsog3iOdHWdu99k0yJVwJP94mOATlvx69tuKbyM250OeixrPgEVH9fO3C50KNmthc1YGlxTlBhM1XErzEpUqVjc1Yiidzihybly.0pUaTwyO+7CwDSLXricr8IlHmKe4KGkWd4zVF8HbwEWvq9puZWlFdbDGzd6siDRHAr28tWAsEiKQhDDSLwfYMqYQDik0UWc5qOKVyj..PjQFIl+7mOwtIm7xKO7we7GSjXIj3u+9i+4+7eZTwvnLK..rrksLTYkUZThfSWwVasE28ce2H1XikXuArVsZQpolJ10t1EpnhJHRLudrvBKv3G+3wTm5T6wmKYwHuwa7FDqgjoToRAu8Q6latgW8UeU3fCNHnqCGxwEu3EwO9i+nIsw2oToRbu268h3hKtd0D0spppB+4e9m33G+3F8MfHD3ryNi4O+4igNzgRz3tl0rFb9yedhFSgfG3Ad.L4IOYiJFFsYgctychcsqcYThflHWtbl7E2.cLFQiM1XwjlzjLpK1mWd4gMtwMZRRetkVZIl9zmNl7jmLQRwGqwq+5uNwlS8O1i8XXW6ZWnlZpgHw6VgGd3AdkW4ULqMwYNfFMZvt10tvd1ydn1IEHjPBAO4S9j83WqTRIkf8t28xrs5dYxjgoLkofoO8oS7s3sjRJAuy67NDMlBARjHAqXEqvnugAYu0a8VukwD.mbxIQQKt7VQvAGLVvBV.JpnhPiM1HskSWPsZ0Hu7xCIkTRn1ZqEd5omFTQI0Zqshe8W+U7S+zOYx9uM0pUirxJKbtycNDbvAC6ryNSx5ZpHwDSDpTohHwZBSXBXRSZRHkTRQPSYaSM0DtvEt.F9vGN+z2vnzRKsfu9q+ZbricLppiqd0qhzRKMDVXgcaMLboKcI7y+7OiMu4MiRJoDSnB64Dd3gim+4edL7gObAovr2xV1By9e6WOCbfCDSbhSzniiQaVvFarAYjQFLwnCs2f81aOlyblCF+3GObvAGP94mOysWacdToRJojPYkUF5W+52criPVUUUgUspUQsTj0PCMfidziBmbxI3qu9REMHDjTRIgqcsqQjXMhQLBLfAL.DbvAiTRIEA8XY1XiMhrxJKLhQLBl4j2voCZrwFwpV0pPd4kGskB.53zTbxSdRDTPAAWbwE8ecsZ0hzSOc7e9O+GAa6LIAN5ni3wdrGC268duFbyUpmREUTA13F2nfDaRyLm4LIx0fMZyB.c7hHwv91zcXiM1fXiMVHQhD3u+9iwMtwg1aucTXgExjoUqzRKEG9vGFYmc15OG023dLlSN4fO+y+bAO812IzpUKN6YOKTqVMBKrv5U6EJqQRIkDZt4lIRrFwHFA7vCOfyN6L71auQpolJQh6sh5qudbwKdQL7gObyxsHRLhJUpvm+4eNtxUtBskRWPiFMHszRCgFZnvFarAG9vGFqe8qGImbxLam6UoRkXZSaZ3IdhmPvuAkMu4MihKtXAcMHAVXgEXAKXAD4u2IhYA2c2cjXhIxzMrlaEVYkUXRSZR5+2JUpDQDQDH5niFUVYkL6z0rlZpAolZpHkTRA.cblgkKWNxN6rwZVyZtsGARSM4kWdngFZvrX7lenCcHhcD1hN5ngmd5I.5ntBr2d6EbS20UWcHqrxBQEUT7sjfxnVsZr5UuZTPAEPaozszoggCbfCfSe5SSrLpIDLxQNR7rO6yhgLjgH3FgKqrxvO8S+jftFjhQMpQYz8WgNgHlETnPAJqrxDE6eyMhBEJvce228M80syN6vnF0nfe94GJrvBI1cSRZt10tFxLyLwgNzgP0UWM1111FysMJ.cbLau10tFhHhHnsTLJHoYgnhJptbF28yO+.PGYFRHo95qGYjQFXXCaXTqi9wA3m+4el4lMB2HpUqlIudRmDTPAgm9oeZDWbwYxN51aZSaRTzqU..9K+k+BwN5zRIRT.vXFyXHUnLobmN5ZCdvCFKe4KGyctykommCpToBG9vGlo+C6CbfCHpKFVfNZLUjhtaattm64dv3F23H1ZbqnjRJAe5m9oLaJkM24Tm5T3PG5PzVFhV5W+5Gdpm5ovRVxRf+96uIacKojRPZoklIa8LFb2c2QPAEDwhGwtxWXgElnr4uzSZ3IxkKGSYJSAu+6+9lsGIPSEadyaVvuyYgDRV2E2pss6ge3G1jrkMkWd43S9jOAUWc0B9Zw4+OM0TS3m+4el1xPThkVZItu669va8VuEwRutgvu+6+tIeM6sP5afmXlEjHQhnL6BZznoGe231Zqs3AdfG.uy67NXzidzlEErmoFsZ0hMrgMvT0Tgg.IyrvsxrfToRwS9jOoQ2y56ITc0UiO9i+Xlsx1MGYKaYKhhITHKgb4xwjlzjv68duGl5TmJUNQOEUTQ3Lm4Ll70s2fToRwnG8nIaLIYvF23FGQuXpoBC8MtbwEWve8u9WwxV1xLKJZOSMW8pWEaaaai1xnWAIypzsqYfoToRrnEsH80wfPRc0UG93O9iEk0bjXiRKsTbhSbBZKCQCcdSnu669tX9ye9Tsusr8sucps1FJCYHCg3csUh9N6N4jShx27r21jc71auwy8bOGdsW60H5dC0WfjSNYQ4aNQx6n4NkQKqrxJ7hu3KBe7wGhsl2JZrwFwm9oeJJrvBE70puL6bm6jIOR1rHCaXCCKe4KGKXAKf5awclYlItvEt.U0fgPrwFKwiIwSCfPHRgFiMk3CX.C.KYIKAO+y+7vau8lPpx7Fc5zIpbp2IlpLKzI1XiM3kdoWR+QrTHo4laFe9m+43hW7hB9Z0Wjqd0qx7m9AVfvBKL7O+m+S7LOyyXRdc+cBsZ0hsrksPaYziwM2bCgEVXDOtD2rfXbrESp12ajQFIdi23MvBW3B6RmOiS2y4O+4EEM1jqGSYlE5D6ryNr3EuXiZ7x1SQkJUX0qd03Tm5TB9Z0Wiidzixypvsg.BH.r3EuXr3EuXS5Ib3NwwN1wDMGURfNZi7BQ8zQbyBRjHQzkcgrxJKhEKoRkhQMpQg28ceWrfEr.SxE3EyH1NJkjLyBFxwb0AGb.u7K+xlDSnpUqFqacqCIjPBB9Z0Whie7iSaIvj3me9gm64dNrzktTA4NhMFZs0VEUm.B4xkKXGz.AoZDGyXFinp+ymPBIP7iOlLYxvXFyXva+1uMV3BWH7vCOHZ7MWHkTRoGc7UYEnkYAfNpInW9keY3jSNQLMb6XKaYKXyady76Fl.TZokR81uNqQfAFHdgW3Evq+5uNyVqa6ae6C0We8zVF8XFwHFgAMrAMDDDyB1XiMXTiZTBQnEDTqVsfsmTclogku7kim3Idhtzw93zQSwJyLyj1xnGCMMK.zQyn4ke4Wl3U57shDSLQ7se62xzM6Kw.YjQFzVBLCAGbv3kdoWB+i+w+fo6nq0UWcXe6aezVFFDSdxSVvhsfcNGu94sfXfzSOcjc1YKXwWpToXDiXD3Mey2DO8S+zljJbWrfX4rKC.h1dj6IE3X2gat4Fd4W9kMYGirzRKM7EewWvzyF.Vm7yOeZKApSngFJdkW4Uvq9puJF3.GHskycjsssscG6vurDgFZnB5.zRvLK3kWdgvCObgJ7BB+xu7KB9vvRhDIHpnhBKa1SlpY...H.jDQAQUYKCO6y9rljyQOqSt4lKskPOFRZVvXNENd3gGXwKdwlLCC4latXkqbk7To2KQrUHujjvCOb7Zu1qgW9keYDRHgPa4ziHmbxAm7jmj1xvfPHyp.f.ZV..3ttq6RHCOwozRK0j1u1GxPFBd8W+0whVzhXtB6wTRM0TinYeAYEyB.czmOVxRVBbzQGIjht8TVYkgUrhUvbiSYVm1auclc50JTHUpTLxQNR7FuwafW7EeQLfAL.ZKodLZznQzLUI6DWc0UDYjQJnqgfZVH7vCWzUXe6XG6vj+FWCZPCBKdwKFKaYKCiZTiBxjIyjt9r.hk67hkLK.zwvhYIKYIne8qeDPQ2Ypqt5vJW4JwoO8oMIqm4.M1XizVBlLrvBKvccW2Ed+2+8we6u82DzzhKTbfCb.TVYkQaYXPLoIMIAu6IKnQWhDIc63elkQkJUXyadyTYs8wGevBW3BwG7Ae.hO93g0VaMUzAMPrjdaVyr.PGE83RVxRLYFyaqs1v27MeCuaD1CouvbfvAGb.228ceXEqXEXdyadTuiK1aot5pC6bm6j1xvfvZqs1jLWlD7wm3nF0nvu+6+tnIMy..olZpXricrTqlKbzQGw8du2Kl9zmNN5QOJRLwDM6mLfkVZoPmNcL+v4hEMK.zwqYd0W8UwpV0pLYYoYW6ZWnzRKEKbgKDJUpzjrlhEZu81Qd4kGxJqrLqOIDd4kWXJSYJHlXhwrHin+5u9qhpixM.PbwEGrzRKE70QhNSvsFru8sOr0stUgdYHJt5pqX4Ke4LQ+hPqVs3Lm4LHgDRvrtpps1ZqQHgDBBMzPQngFJ7xKuXNyCYjQF3K+xujHwxVasEe5m9oDIVcRyM2L9xu7Kwku7kIZbuc3iO9fm64dNQ6cSRBzpUKJpnhP1YmMxJqrPd4kWu9ztHVHlXhAO9i+3zVFDirxJKrpUsJZKCCBkJUhO7C+PXqs1J3qkfmYAfNZ+j6YO6QTczqppppvd1ydvrl0rnsTfToRQTQEEhJpnPxImL13F2Hskjfv0t10vYNyYzeTJs0VaQvAGrdyCd5omT27fUVYEwhkPLlt6bVRrl0rFS1oLo3hKFevG7A3YdlmoOy.USiFMnnhJB4jSNH2byE4kWdDqswKVvbxbXas0ln75piabiyjXT.vDYVvRKsDSbhSD+we7GlhkiXr28tWL7gOblpQJ4t6tSaIXxnolZBomd55G9N1ZqsHzPCEAETPHf.B.95quDsII0SfjlETqVMznQCwSeqkVZIVzhVD9pu5qLYSJuFarQ7Ye1mgG9geXL1wNVSxZZJos1ZCETPAH2byE4jSNH+7yWTcF7EBH4eKPa98e+2EcmXEoRkZRqIPS1UZmzjlDRHgDDUcBNMZzfMrgMfktzkJ3UZZOERtm4hMZpolPZokFRKsz.PGcSw92+9i.BH.DXfAh.CLPA+tcHcqTs4laF1au8DMl.cjdxm64dNrt0sNS1jNTiFM3+7e9On3hKF2+8e+h58vtxJqD4me9H+7yGW9xWFEWbwBdOXQrgopsiKzb4KeYr+8ueZKCClXhIFSZ1cLYlEryN6vDlvDPhIlnoZIIBEVXgHgDR.ScpSk1RA.j+MqDynVsZ8WPuyWW4fCNn27PmYefj2ADoOgJBkYAfNLS8TO0Sge4W9EbvCdPAYM5NNvAN.JnfBvS8TOkn3MTpu95QgEVHJpnhPAET.xO+7QyM2LskEyCKL9nMVTqVM9ge3GDcmpGIRjfoMsoYRWSSZNbiO93QxImrnJ6B.cjhpgLjgvD8LBWbwEHSlLnQiFZKElj5qu9tT2C.cbzB80WegO93i9O1amdiJTn.xkKmXEulP+lRRkJEO3C9fvYmcFaaaaSPWqqm7yOe7du26g+1e6ugAMnAYxV26D0TSMnnhJBEUTQ5MHzPCMPaYI5PhDIlEaI5e7G+gnqmJ.zQVEL0uejI0rf81aOhM1XEco7oS2mKYIKg5aGgToRgqt5JJu7xopNDSTc0Uipqt5tjNdqrxptXdvGe7At6t68nifj0VaMwdCFS0cvN0oNU3jSNgMrgMXxLZ1TSMgu7K+RL8oOcLyYNSS5e6zTSMgRKsTTRIkfRJoDTZokhRKsz9bEgnPge94mneKQKt3hwd26dosLLXjHQBlwLlgIecMsUGF53hVG5PGRzkcgNS0MKzjo5e+6O2rfQhJUpPt4l6MchAbzQGgGd3Ab2c2gGd3g9O2YmcV+IwfjlELkMrmXhIF3fCNfu5q9JS1aZpSmNr6cuaboKcI73O9iSzsbQqVsnlZpAkWd4nhJp.UTQEn7xKGkWd4hp95hXDwvff51gFMZvO7C+fnLCswDSLTIqNlbyBh0rK..7a+1ugvCOb3s2dSUcDVXggTRIEppAyUpqt5Pc0U2MMARUnPAbyM2fGd3AQyFfoduwCMzPwRVxRvpW8pQc0UmIacyN6rw68duGdxm7IQvAGbO940Vasgqd0qpO6PW8pWEUUUUnhJp.UUUUl88x.VkAO3ASaIXTryctSTTQEQaYXvPqrJ.PAyB.cjcgjSNYQ2QORsZ0X8qe830e8W2jej8td5KOzonEs2d65SoMIgFERm2d6MV5RWJ9xu7KI9+8b6n95qGe1m8YXNyYNXJSYJPiFM5Mmc8Ops1ZQM0TCpt5p40S.Chat4FBLv.osL50jWd4IJ29A.fQNxQRsZEwjzAG6N9se62vd1ydnwRazLkoLEL24NWppgO5i9HSZW5iivPPAEDFyXFCrwFa5xCqs1ZAu6gpRkJ7Ue0WgKdwKJnqS2gUVYEu9ADobu268h3iOdZKidEpToBu669t3pW8pzVJFLxjICuy67NlrgF2MB0t83NqcAwTWcrSRHgDPjQFIUmM6idzilaVvLf7xKOjWd40seOkJUBKszR8OrvBK5xmqToRHWtbnPgB8O57eKUpT8OjHQRW9HPG0RfNc5v3F23PUUUkIePdwMJHNwRKsDSXBSf1xnWyl1zlDkFE.5nSHSKiB.TzrfUVYEl1zllnalQ.zwEZ+9u+6wa7FuA056AwDSLXaaaaBRKClCaPas0FZqs13ohmCyPbwEmncZ3lZpohSdxSRaYzqvBKr.Se5SmpZfpmCv3hKN3niNRSIzqolZpA+m+y+gZquUVYEhKt3n15ygCm9VXu81yLMmNCkZqsVQ4renStq65tDrl2VOEpZVPgBE3dtm6glRvn3Lm4L3.G3.Ta8m7jmrIYzjxgCGNyadySTNOHzpUKV+5WunbKuA5Xl3LkoLEZKC5ZV..XLiYLL0fZxPYqacqT6H3Xmc1gYO6YSk0lCGN8cXnCcnHlXhg1xnWwN1wNLYSfUgfYNyYxD2TH0MKHUpTLu4MOZKidMpUqF+6+8+lZ0NvDm3Dgu95KUVaNb3X9iKt3BVvBV.skQuhye9yKZOlj..d3gGLSAkRcyB..gGd3HhHhf1xnWSUUUE9we7GoxZKUpT7DOwSH5a8pb3zWA6ryNL7gOb7nO5iZPMnJZfkVZI96+8+tnrnFqolZv28ceGskgQAKM8VoWmE5FXdyad3BW3Bh1w.apolJBLv.wjm7jM4qsGd3Ad3G9gEE+gwnG8nwHG4HQ1YmMxN6rQgEVnnahuwgigfRkJQvAGLF3.GHF3.GH71au025viN5nwm8YeFS1MAkKWNd1m8YEkYtTiFM3a9luQzVmB.czRsiLxHosLzC0ZJScGaZSaxjNJcIMRkJEu7K+xT6tE14N2I10t1EUV6dBgEVXXQKZQcwo70t10PN4jCxN6rwEu3EQokVJEUHGNFORkJE96u+XfCbfHrvBCAFXf21N9ZSM0DV0pVEtxUthITk2dTpTIdlm4YXpIFpgvu7K+BUK9biEIRjfksrkQ8QKv0CSYVnolZBKaYKST6Fzd6sG+q+0+hZGITV0vke94GV7hW7crZpapolPd4kGxImbPt4lKtxUtBOyCbXZTpTIBLv.QPAEDBJnfPfAFnAusfs1Zq3a+1uEm+7mWfTYOGas0V7BuvK.+82eZKkdEolZp3a+1uk1xvnXBSXB3ge3Gl1xnKvTlE..NzgND9oe5mnsLLJBLv.wq9puJ01qosu8syTE0SXgEF96+8+duphdUoREtzktDxO+7wktzkvku7kQqs1p.nRNb5YXmc1o2XPPAED70WeIxeqqUqVricrC7m+4eRMCxAGbv3we7GGN4jSTY8MVtxUtBV4JWonatCc8Xqs1h24cdGp0v+tUvblEzpUK9vO7CYx8vyPH1XiEOzC8PTa8O3AOH17l2L0GAqibjiDO1i8XDavaoUqVTZokp2.QAET.pnhJ3Yefiffb4xgO93C72e+g+96OBLv.E7A4yktzkv2+8eOppppDz045Qtb4XFyXFH93iWeKAWrQiM1H9fO3CL4stbRyi9nOJF23FGskwMAyYV..3xW9x3i9nOh1xvn4AevGDSbhSjZqeAET.92+6+MU5E5VXgE3AevGDidziVvWqVZoETXgEhBJn.8eTr1+24POjISF7xKufe94G7yO+f+96O71auoRFBaqs1vANvAvd26dE74nwPG5Pw7l27n5bGvXQiFM3y9rO6VNmUDK3u+9iktzkpu.XYIXRyB..+3O9i3HG4HzVFFERkJEKZQKBCbfCjZZnkVZA6bm6DG3.GvjcRSFzfFD9K+k+BbyM2LIqW2QyM2LJt3hwUtxUz+n7xKm5YZgCafEVXA71augWd4k9LG3iO9H3S5SCklatYbfCb.b3CeXTe80Sr3JQhDDUTQgoMsoIJOsC2H+2+6+EG9vGl1xvnPhDI3e9O+mvO+7i1RoagYMKXNTri..Vas0XoKcoTaFj2IkTRI32+8eGm4LmQvVCu81aL24NWlsBpUqVMJqrxPokVZWdTc0USaowQfPlLYvCO7.d6s25MG3s2dCWbwEZKMCBMZzfye9yiScpSgKbgKzqttnDIRf+96OF9vGNhIlXn9rFfTbvCdProMsIZKCiFVrnFudXVyB..G8nGkpCqIRg6t6NV5RWJSzXSJszRQhIlHRKszHR5MkHQBFxPFBl3DmHUyfhwPqs1JJu7xQ4kWNpnhJPEUTAJu7xQkUVontPo5qS7wGOtm64dHV8xvJnUqV8a2VmleapolfJUpPKszBjKWNrzRKgM1XCbyM2f6t6N5e+6OBIjPDky1gaGW7hWDqZUqRz1ed5D6s2d71u8ayDuGwsBl1r..vm8YeFt3EuHskgQS20iAnIs2d63bm6bHyLyDYmc1Fzd7as0ViPCMTDYjQhHiLRyl6P4FQmNcn1ZqEUUUUnpppBUWc0c4yat4losD4bGvO+7Cyadyi46ThbLbJszRwJW4JE7Z5vTvS8TOEhN5nosLtsv7lEpnhJv67NuCTqVMskhQynF0nvBW3BosL5Vpu950eG0MzPCnkVZAs0VaPgBEvJqrBVas0vM2bCd6s2h1iUEo4i9nOBW9xWl1xfSOfgMrgg4N24BWc0UZKENDf5qud7QezGI5O4C..CdvCFO2y8bzVF2QXdyB..6YO6A+1u8azVFDgoMsog4Lm4PaYvg.r90udjRJoPjXISlLHQhDyBSw.cznhr1ZqgM1XCppppXhsyQlLYXhSbhXFyXFL2YXmSOmVZoE7we7GihKtXZKEiFKrvB7Vu0aAmc1YZKk6HhhMyaJSYJ3Tm5TnjRJg1RwnYO6YOvEWbAie7im1RgiQBIuKUu81a7u9W+Kzd6sCUpTgqcsq0kO1ZqshVasUzVaso+yas0VQ6s2NTqVcWdzd6sCMZz.c5zAsZ0dSeThDIPhDIPpToc4iRjHAxjICJTn.xkK+l9nRkJgEVXg9GVZok5+7Ny9TmFDt9saqhJp.aXCa.4me9D62W8FznQCRLwDwwO9wwLm4LwDm3DYlsEjSOiNm4ClCFE..lyblinvn.fHIyB.czy.VwJVgnuPV.5nn.etm64XpgDBGCmicrige3G9AhDKKszR7EewWPjXwhnUqVru8sO76+9uyLGeU2byML24NWLzgNTZKEN8P9ge3GvwN1wnsLHBAETP3UdkWQzzDrj8Vu0a8VzVD8DbzQGgFMZPt4lKskBQ3Lm4LHzPCUz3pjyMSKszBwtvkZ0pQrwFqY6nFWhDIHnfBBCcnCEW5RWBMzPCzVRn4laFolZp3BW3BvUWcUT2Th5KvN24NQhIlHskAQPoRkXQKZQvVask1RoGinwr.PGNwN6YOKZrwFosTLZznQCN8oOMhHhHLaOMAl6HSlLr+8uehEugLjgH5N++FJ1au85aks4me9LQa5t1ZqEG+3GG4kWdvCO7fW.uLHG3.G.ae6am1xfXb+2+8iHhHBZKCCBwQ9O9eHWtb7W+q+Uyl8YTkJU3K9hu.UVYkzVJb5E3fCNPzN9WEUTAwhEKiLYxvrl0rvq+5uNS0s5xN6rwG8QeDV6ZWKSMtn6qywN1wvu7K+BskAwH3fCFwEWbzVFFLhpLK.zwEn0pUKxImbnsTHBs1Zq3bm6bH5nitWMUF4POjHQBRIkTPSM0DQhmGd3ABO7vIRrDCXu81iwN1wBKrvBjWd4wL0iTEUTARN4jQwEWLb2c2gCN3.skTeVN8oOM9tu66nsLHFJUpDuzK8RhxSiinyr.PGaGQFYjAQ6U5zDUpTgLyLSL7gObnToRZKGNF.YlYlDKi.1YmcXDiXDDIVhE5rVFhN5nQwEWLSct4Ku7xwgO7gQQEUDb2c2giN5HskTeJxHiLv27MeCyXhjD7fO3CJZ6zshRyBRkJEgDRH3nG8nLSkUarzTSMgLyLSDczQyMLHhnfBJfXMlIIRjP0oTJMwVasEidziFN4jSHu7xCs2d6zVR5ohJp.G9vGFETPAvEWbgWTxl.xM2bwZW6ZMa56H.cLcOm6bmKskQuFQoYAfNt3h81aON24NGskBwnwFaDYkUVbCChHt5UuJN+4OOQhUKszBl1zlFSNdZMEHQhDz+92eL1wNVzXiMxbmk9JqrRbricLjUVYA6s2dpOb3LW4xW9xX0qd0LQi7hT3fCNfEsnEIputtn0r..P+6e+QwEWLJu7xosTHFMzPCH6ryFQGczL23xkyMSas0FwN9jZ0pEiYLigoGlLlBrvBKvPG5PQHgDBt7kuLwpIDRQs0VKRIkTP5omNrzRKgmd5on4rxy5je94iUu5UiVZoEZKEhxy7LOC71auosLLJD0lE..F3.GHN4IOIZs0VosTHF0We83hW7hX3Ce3bCCLNVXgEXe6aeDKdCbfCjeGq+O5W+5GF+3GOTnPAt7kuLyskiM1XiH8zSGG8nGEZ0pEd6s27+d0H3RW5RlkFEl7jmrYw1KJ5MKnToR3qu9hSdxSRaoPTpqt5P1YmMhJpnD0otxbGkJUhCdvCRrTl5s2dymPhWGRkJEAGbvXTiZTnt5pCkUVYzVR2DszRKHqrxBIkTRngFZ.d3gG84yNjgRd4kGV8pWsY0M8A.3qu9hm3IdByhi6un2r.PG2AhNc5LaNNkcRc0UGxLyLQTQEkYam8ybfye9ySrp32d6sGQEUTDIVlSXkUVgniNZDRHgfBKrPlrwroQiFb4KeYjTRIghJpHXqs1xmxk8.xImbL6pQAfNZg6KdwK1roo6YVXV.niFcQd4kGt5UuJskBQogFZ.m6bmCQEUT79v.iR94mOJpnhHV7hM1XIVrL2nyslvFarA4me9La0xWQEUfSbhSfTSMU..3omdB4xEEysOSJW7hWDqYMqwryn..vBW3BMqxRnYiYAIRjfvCObbhSbBytW30TSMgyblyfgNzgBqrxJZKGN2.UUUUHyLyjHw5ZW6ZH93imWvb2FjJUJBLv.w3F23Pas0FJpnhXh1Fc2QSM0DxHiLPRIkDps1ZgiN5HuIO8+37m+73+6+6+ioNlrjhXiMVL0oNUZKChhYiYAfNR6i4X8K.zwahjd5oiHhHBQ0vGou.szRKD60b5zoCCe3CG1YmcDIdlynToRDYjQhgO7giZpoFltcYqQiFTXgEhjSNYjQFY.oRkB2c289rYa3Dm3DXcqacLWQqRB70WewS8TOkYQcJb8XVYV..vUWcERjHAW7hWj1Rg3nRkJjZpohPCMTd2jigPlLYDcZ3EbvAK5OlUlRr0VaQLwDCBIjPvUtxUXhIZ4si5pqNb1ydVjTRIgZpoFXu812m5umSLwDwF23FY1rAYLXkUVgEu3EaVZ12ryr.PGWr8JW4JL8cZzaos1ZCojRJve+8mW7TLBVYkUHwDSjX6etGd3ABKrvHRr5KQm0yfat4FtxUtBToREskzsE0pUiBKrPbjibDjVZogVasU3pqtZVWaR+1u8aXG6XGzVFBBRjHAO8S+zHf.Bf1RQPvrzrfDIRPDQDAN8oOMZt4losbHNZznAolZpvUWckeGnLBYjQFD6DQXs0V2maFQPJjHQB7wGePrwFKryN6PQEUjnnFlZpolPVYkE1+92Ot7kuLjJUJb0UWMaRksVsZwF23FIZF3XMl0rlk9wut4HlklE..TnPABKrvvINwILK2WLc5zgzSOcXkUVg.CLPZKm97bkqbEhMiHTqVMl7jmLQhUeUjJUJBHf.vDlvDfRkJQgEVHydxItQprxJwoO8owANvAPYkUFTnPAbwEWDsE8Z6s2NV25VmYYsj0ICdvCFOzC8Pl0spcyVyB.cLE+b2c2QZokFskhfwEtvEPSM0DFzfFjY8KTYcpu95wYO6YIRrToREhKt33MiKBfb4xQHgDBF+3GO.5vTmX4lGznQCJojRPJojBNzgNDpolZfEVXAbxImDM+sdiM1HV8pWMxJqrnsTDLbyM2vhVzhL66dml0lE.537MqSmNjat4RaoHXTPAEfhJpHL3AO39rUWMKvgO7gIVrF3.GHulTHHJUpDgGd3X7ie7PmNcn3hKVzXZ.niZUpfBJ.G+3GGImbxn5pqFJUpDN6ryLqwgxJqL7oe5mhRKsTZKEACqrxJ7xu7KCmbxIZKEAGydyB..gDRHnzRKkIaUrjhJqrRjQFYfAO3Ay6ECT.qs1Zr28tWhUg2d5omlUMzEVAKrvBDd3giwMtwAsZ0hhKtXnUqVZKKCh1ZqMTXgEhie7iiCcnCgJqrRHUpT3ryNyL03PVYkE9hu3KX9SlhwfDIRvy9rOqYaAMdizmvrfDIRvfG7fQlYlIpu95osbDLZngFzezJ4M9ESKxjICokVZDqMDakUVggO7gSjXw4lwBKr.CZPCBicriE..kTRIhpLMzIc1TpRIkTv92+90WaFN4jSTaarNxQNBV25VmYYyV55Y9ye9HlXhg1xvjQeByB.cbw7HiLRbpScJytgUx0SKszBNwINA+jRPAxO+7QIkTBQhU6s2NuHGMAXokVhvCObLgILAnPgBTbwEKZeSNMZzfxKubblybFjPBIn+liTpTIbvAGD7sqPqVsX6ae6Xaaaalk8PgqmILgIfYO6YSaYXRQhNy8+u5MPAET.9jO4SDsWPvPH93iGyd1yVzVE0hM1291G15V2Jwh2m9oeJuacZhokVZAG5PGB6e+62rJE51YmcH7vCGQDQDHrvBi3C2nqcsqg0u90iLxHChFWVjvBKLrnEsHlYKeLUzmIyBchiN5H7xKuLqOgDcRd4kGJrvBwfG7fM6qTWVf1ZqMbhSbBhEOdQNZ5Qtb4HnfBBwEWbvEWbAUVYknolZh1xxnos1ZCkTRIH8zSGIjPBH8zSGUTQEPqVsvAGbvnJL5RJoD74e9miBJn.xIXFEu7xK7hu3K1m7jJ0mKyBcRRIkD94e9mosLLI3t6ti+9e+uCO8zSZKEyZToREdoW5kHV7t268dQ7wGOwhGGCGc5zgLxHCru8sOjSN4Pa4HHHUpT3u+9ifCNXDbvAifBJndbQRmVZogMrgMHJZ7UFKN5ni3e7O9GvYmcl1RgJzm0r..vV1xVPBIj.skgIAkJUhG8Qez9TEjCM3Mey2jXsY7gMrggm4YdFhDKNFOEVXgHgDR.m9zmVTVLj8TjHQB71auQHgDBFv.F.BLv.uo2fry5SXe6aeTRklVrvBKvRVxRfu95KskB0nOsYAc5zg0st0oely2WfINwIh4Mu4w6GCBDe228cDqS04fCNfUtxURjXwgbTe80iCcnCgjSNYhc5WXcbvAGPfAFHBHf.P+6e+we9m+oYciV55QlLY34e9mGgGd3zVJTk9zlE.5npy+xu7KMKmRk2J72e+wS+zOce1zoIjP5s25C9fO.t3hKDKdbHGpUqFolZpHojRpOw902WkEtvEhQMpQQaYPc5yUfi2HxjICCaXCCYkUVl08fgqm5pqNbhSbB3gGd.O7vCZKGyNNxQNBwhk+96O+HvxnHUpT3iO9fwO9wiHhHBnQiFTYkUZVuEE803AdfG.SXBSf1xfInOuYAfNp.5gMrggycty8+q8tyioou++Cf+rEZssbzVtjaDFTf1MnHGxF3WEPcdtiLmaNm6V2xNLaY2K6dYISybNRLYKrrirDcyYh5Hy4Ly3F5.Yb43pfHfPobTkhR4nfk196O9MIyueUGnef2eZ+75QxmPMY6kO+GLO6mOu+79sGwJedpvtc6nxJqDCO7vHojRRv8Z.MSwO+7CG9vGlydOyUpTItka4V3jYQl4nVsZnWudjWd4AUpTgAFX.AyinvS0pV0pvJVwJXcL3MnxB+MoRkhTSMUTSM0fwFaLVGmYMczQGn1ZqEIjPBvO+7i0wwsmXwhQs0VKmcWpb5zI8MabiHQhDDarwhEu3ECsZ0R2sA2TKZQKBqcsqk0wfWgJK7OHWtbby27MipppJAwqBzkLzPCgxJqL3qu9hXhIFVGG2dlLYhydF1CMzPXoKcozBR0MT.AD.RKszPd4kGBN3fwvCOLN+4OOqiE4eQlYlI13F2Hu8.5hUnxB+W70WegNc5PUUUkfXWd7Rb5zIpu95gQiFQRIkDlyblCqijaqgGdX7W+0ewIyxkKWH4jSFAETPbx7Hy9jHQBhN5nQt4lKxJqrvblybP+k7CHgA..LQBIQTPT82uf5NX5tHszRCO9i+3zik8JfJKbE3u+9CsZ0hpppJLwDSv53LqxrYynrxJCAETPH7vCm0wwsjLYxvQO5Q4r4ERHgPm.kdH70WeQxImLJnfBPBIj.DKVLN24Nmf6emgOJkTRAO4S9jTQgqBprvUgRkJQhIlnfrvfc61Q0UWMN6YOKRLwDEjaso2H7wGevwN1w3rCrLIRjfErfEvIyhvOHRjHDbvAC850ikrjkfnhJJ3vgCze+861cjY6IPmNc3odpmhdbeWCB98Yg+Ms1ZqnvBKTPsFF9mTpTIdvG7AQJojBqihakhJpHN67GQtb43S9jOgNPvD.FczQwIO4IQ0UWMZt4loEF4rfjRJI7rO6yRmeN+Kn6rv+h.BH.jPBIfpqtZA4u3N93iiJqrRzWe8AMZzPqkgonAGbPzXiMxIyZhIl.50qGJUpjSlGg+5RqugErfEf7xKODVXgAGNbfAFX.5NNLCHojRBOyy7LzcOcJfJKLEDXfABMZzfZpoFA2ij3R5omdPokVJTpTIhLxHYcb387xKuvwO9w4r4M24NWbS2zMwYyiv+IQhDDUTQgrxJKje94ivCObHRjHLv.CHH+hKbMc5zQEElFnGCwzPGczAJrvBwniNJqiBSoUqVrgMrAZE5eM3zoS77O+yyYqaga4VtE7rO6yxIyh3dahIl.m5TmB0Vasn1ZqEW3BWf0QxsykVLizZTXpiJKLM0UWcgO8S+TAyN83UiDIRvJW4JwxV1xneg6pnvBKDFLXfSlkLYxvN1wNn0s.4+gQiFQc0UGZrwFwYNyY3rcOTOUokVZXSaZSza8vzDUV35P2c2MJrvBELmkDWKgDRHX8qe8B9SjsqjCdvChhKtXNadu9q+5Xdyadb17HddFYjQfACFPiM1HZrwFgUqVYcj3UxJqrvi7HOBUT35.slEtN3u+9C850i5qudA+ijXjQFA+4e9mn2d6EwEWbPtb4rNR7Ftb4Bm3DmfylWHgDBhO934r4Q77HUpTDQDQ.850ivCObXvfAA6ax0+s7xKOrwMtQ5tycchtyB2.FbvAQgEVH5t6tYcT3EjJUJV9xWNV5RWJsng.vEu3EwK7Bu.msnX0oSG1xV1BmLKhmKylMi8t28h5qudVGEdiUu5Ui0rl0v5X3ViJKbCZzQGE6bm6Ds0VarNJ7FADP.3tu66FYkUVrNJL21291QKszBmLq4Lm4fcricP2BUxUjMa1vAO3AwQO5Qo2Vh+g669tOje94y5X31idLD2fjHQBxLyLgISlvYO6YYcb3ErYyFN4IOILXv.hHhHfZ0pYcjXlye9yiScpSwIyxgCGPmNcHf.BfSlGwyfSmNwe7G+A9rO6yPSM0Ds.G+ad4kW3wdrGC4latrNJdDnxBb.u7xKjQFY.qVsBiFMx53vab9yed7G+wefd6sWDYjQBe80WVGoYcd4kWnzRKkylmJUpPhIlHmMOh6sZqsVTTQEgRKsTZsI7OHWtb7LOyyfTSMUVGEOFzigfi8y+7Oie7G+QVGCdGwhEibxIGr5UuZnRkJVGmYMNb3.uvK7Bb19sPrwFKdsW603jYQbec5SeZr+8ue5wedEnRkJrksrEDQDQv5n3QgJKLCn7xKGe629szyM7JPhDInfBJ.29se6PgBErNNyJ14N2ImsXyDIRD93O9iEj2kFBfISlvANvAnEu3UQDQDAdtm64DzO5yYJTYgYHM2by3y+7OG1rYi0QgWRtb4nfBJ.ETPAd7kFNxQNB16d2KmMum3IdBjYlYxYyiv+Y1rY7S+zOgJqrRZMIbUnUqVr4MuY502dFBUVXFjYylwN24NoE930fb4xQ94mOJnfBfO93CqiyLBSlLgO3C9.Nad25sdq3QdjGgylGg+pmd5AG5PGhJI7uHu7xCqacqi1CElAQkElgMxHifhJpHzbyMy5nvqISlrIuSCdZkFb4xEdoW5k3rsHb+82ersssMHRjHNYdD9GSlLge9m+YTSM0PkDtFDKVLV+5WO9O+m+CqihGOprvr.GNbf8rm8fRJoDVGEdOoRkhbyMWrzktTOpWQvu3K9BTUUUwYy6Mey2DQEUTb17H7Cc1Ym3fG7fn1Zqk0Qg2SgBE3IexmDIkTRrNJBBTYgYQkTRIXO6YOzBebJPrXwHyLyD29se6dDqp4SbhSfu4a9FNad28ce2X4Ke4b17HriKWtPCMz.90e8W4r8jCOcgEVX3oe5mFgDRHrNJBFTYgYYs1ZqnnhJhNDplFzoSGVxRVBRN4jcau06VsZEu7K+xb17znQCdwW7E4r4Ql8Y2tcTd4kiibjif95qOVGG2Fye9yGO7C+vPlLYrNJBJTYAFXvAGDe9m+4n81am0QwsRngFJxO+7Q1YmMlyblCqiyz1G9geHmsocIVrXr8sucO92jDOQCMzP32+8eG+9u+6B9i59oCQhDg65ttK5NpwHTYAFgVGCW+jKWNxImbvhW7hQvAGLqiyTVwEWLN3AOHmMuG+web572vMRqs1JN1wNFpt5p4rCWLgBe7wGroMsIjbxIy5nHXQkEXrxKubrqcsKZqZ85TxImLV3BWHzqWOu+.Vps1ZCaaaaiylW5omN17l2LmMOB2arwFC+4e9mnjRJgNcZuNMu4MOr4MuYDXfAx5nHn4MqCfPW1YmMhIlXPQEUD5omdXcbb6zTSMglZpI3me9ga61tMjat4xaWzSwFarPgBEXzQGkSlWiM1HlXhIf2dS+ZLeSWc0EJojRPEUTAmsUeKDUPAEf64dtGd+WDPHftyB7DW7hWDe228cnrxJi0QwsmFMZP1YmMRO8z4cKBJt9UnbKaYKPmNcb17HW+rZ0JpnhJvINwIfISlXcbbqoPgB7vO7CC850y5nP9aTYAdF5wRvcjHQBzqWOxN6rgVsZ4E6takWd43q+5ulyl2hVzhvC7.O.mMOxzic61Qc0UGNwINAZrwFgSmNYcjb6EarwhMsoMQO1AdFpr.OjYylwW9keI5ryNYcT7X3u+9iLxHCjQFYf3hKNl8JXZ0pU7JuxqvY6JepToBacqakSlEYpwoSm3zm9znxJqDUUUUz4+BGQjHQX4Ke4XMqYMzicfGhJKvS4vgCTbwEiCe3CSa2qbLUpTgzSOcjd5oyjhCacqakSesYei23MPLwDCmMOx+KmNchVZoETc0UiSdxShgFZHVGIOJADP.3QezGEZzng0QgbUPkE34ZokVvW8UeEN+4OOqihGI0pUizRKMjRJo.MZzLq7MZN7gOL1291GmMuUspUg63NtCNadj+eNb3.szRKnlZpgJHLCJiLx.aXCaf1yP34nxBtAFczQwt28tQkUVIqihGM4xkCc5zgTSMUnSmtYrCzJylMi29seaNadgEVX3ce22kylmP1vCOLZngFP80WOZrwFoGwvLH4xki6+9uejc1Yy5nPlBnxBtQpolZvt28tougyr.whEi3hKNnUqVnUqVDSLwvoKPx24cdGNcK98cdm2AgGd3b17DRLYxDpu95Qc0UGNyYNC8X+lEnSmNrwMtQnVsZVGExTDUVvMyvCOL18t2Mpt5pYcTDTTnPARN4jgVsZQRIkDBJnftgl292+9wu7K+BGkNfUu5Ui0rl0vYyySlEKVPyM2LZt4lwoN0onyokYQxjIC268duH2byk0QgLMQkEbSUUUUgu669NZukmQTqVMRHgDfFMZPBIj.BMzPmV++elybF7QezGwY4IzPCEu268db177jL3fChVZokIKHze+8y5HIHkbxIiG5gdHOpiddgDprfargFZH7C+vOfJpnBVGEAO+7yODe7wiXiMVDarwhXhIlq4gckKWtvq9puJm9sZe629s8HNNuuQ3zoSXxjIzVasg1auczd6sSkCXLEJTf0t10hbxIGVGExM.prfGfFarQrqcsKXwhEVGExeSjHQH7vCexxCQFYjHhHh.RjHYx+a10t1EN1wNFm82oP6shvkKWn+96GFMZDFMZDs2d6niN5f1Py3QxLyLw5V25f+96OqiB4FDUVvCwEu3EQwEWLNxQNBs.s3oDIRDBMzPQjQFIhLxHgMa13z0svbm6bw6+9uOmMO9D61sid6sWzUWcM4kISlvXiMFqiF4JHf.B.aXCa.27MeyrNJDNBUVvCiQiFwt28twYNyYXcTHLva8VuEhLxHYcLttY0pUzWe8g95qOX1r4I+rEKVnRvtA7xKuP94mOVyZVy07wvQb+PkE7.4xkKTZokh8u+8SK.RAlUrhUf65ttKVGiqHWtbggFZHXwhELv.CfAFX.XwhkI+yVrXg1WCbikXhIh0u90ivBKLVGExL.prfGrQFYDbfCb.b7ieb5akIP3me9gTSMUnPgB3iO9bE+oLYxfDIRfDIRtt16Hb5zIFe7wgMa1vXiM1kcYylMLzPCcYWVsZcxOSGzRddToREV6ZWKxLyLYcTHyfnxBB.c1Ym36+9umSOOBHdFDKV7jEG71augDIRfWd4Eb5zIb3vwU7ZhIlf0wlvC3s2di7yOerpUsJd2QAOg6QkEDPprxJw9129v.CL.qiBgPbikVZog64dtGDbvAy5nPlkPkEDXra2NNxQNBNzgNDFe7wYcbHDhajniNZrt0sNjPBIv5nPlkQkEDnrZ0JJt3hQokVJ8bjIDx0jZ0pwcdm2IxN6rm0OR2I7CTYAANylMiCbfCfZpoFVGEBgvy3iO9fUrhUfEu3EeYanXDgGpr.A..czQGX+6e+n4lal0QgPHLlToRwRVxRvxV1xfb4xYcbH7.TYAxkoolZB+3O9izl5DgH.4s2diEtvEhUtxURaQyjKCUVfbE0PCMfe5m9Ipz.gH.3s2dibyMWr7kubnVsZVGGBODUVfbMQkFHDOWTIAxTEUVfLkzPCMfCcnCgVasUVGEBgbCRpToH2byEKaYKiJIPlRnxBjok1ZqM7K+xuf5pqNVGEBgLMoPgBje94i7xKO3qu9x53PbiPkEHWW5t6twgO7gQkUVIsOMPH7bpToBKcoKEKbgKjNMHIWWnxBjaHCLv.329seCG+3GmNw.IDdlXhIFTPAEfLxHC3kWdw53PbiQkEHbhwGebTVYkgidzihyd1yx53PHBVhDIB50qGKYIKAwGe7rNNDODTYABmxkKWn95qG+1u8avfACrNNDhfgBEJPN4jCV7hWLBJnfXcbHdXnxBjYLm6bmCkTRInrxJCiLxHrNNDhGoXiMVrnEsHjQFYPaIyjYLTYAxLN61sipqtZTRIkf1aucVGGBwsmToRQVYkEVzhVDhN5nYcbHB.TYAxrpd5oGTVYkgxKubLzPCw53PHtUhKt3PN4jCxHiLfLYxXcbHBHTYABS3vgCTe80iRKsTzPCMPu9kDxUgRkJwBVvBPN4jCBMzPYcbHBTTYAByY0pUTQEUfJpnBzYmcx53PHLmToRgd85QVYkEzoSGDKVLqiDQfiJKP3ULa17jEGnWAShPhXwhgVsZwBVvBPpolJs4IQ3UnxBDdqN5nCTUUUgZpoFXwhEVGGBgyIRjHjXhIh4O+4izSOcZKXlvaQkEHtELZzHpt5pQM0TCcGGHt07xKuPRIkDl+7mOzqWOUPf3VfJKPb6zc2ci+5u9KTas0RqwAhaAYxjAc5zgTRIEjRJo.EJTv5HQHSKTYAhasAGbPTe80i5pqNzTSMgKdwKx5HQH..HnfBZxxAZzngNaFHt0nxBDOF1saGm5TmBFLX.FLX.81aurNRDADoRkhDRHAnUqVnSmNDVXgw5HQHbFpr.wi0EtvEfACFPSM0DLXv.Fd3gYcjHdXhJpnPxImLzpUKhO93osaYhGKpr.QPvkKWnmd5AszRKnkVZAm9zml1AIISKhDIBQDQDPiFMPiFMHgDRfVbhDACpr.Qvp2d6EszRKn0VaEs0VazqmI4x3s2dinhJJbS2zMAMZzf3iOd3iO9v5XQHLAUVfP9aVsZEs2d6Sd0YmcRKXRAD0pUi3hKtIuhN5ng2d6MqiEgvKPkEHjqBmNchd6sWXznQzYmcBiFMht5pKp.gG.0pUiXhIFDczQO4kRkJYcrHDdKpr.gLM3zoSX1rYzUWcgt6tazSO8ft6ta5QXvSIUpTDZnghHhHhIuhN5no0Z.gLMQkEHDNvXiMF5s2dQO8zC5qu9fYylgYylw4N24fCGNXc773oPgBL24N2IuBO7vQ3gGNBJnfnCgIBgCPkEHjYPNc5DVrXAlMaFm8rmE82e+vhEKS9Sa1rw5H5VPjHQPkJUHv.CDAFXfHnfBBAGbvHjPBAyctyktSADxLLpr.gvP1rYC82e+XfAF.W3BW.CN3f3BW3BW1m8z2eH71augRkJgRkJgJUpfJUpl7ypUqFAFXfPsZ0zNfHgvPTYABgmyoSmX3gG9JdM5niBa1rAa1rgwFarK6miO93vtc6vtc6yn4SrXwPhDIPpToPlLYPlLYPtb4W1OUnPA7wGefu956jW94mevWe8ExjIaFMeDB4FGUVfPD.tTogKcMwDS.mNcBWtbAmNcdYe1kKWPrXwPjHQW1OuzkDIRtrK5a7SHd99+.7G8Myh.zKWD.....jTQNQjqBAlf" ],
					"embed" : 1,
					"id" : "obj-37",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 619.0, -1.5, 177.0, 177.0 ],
					"pic" : "Macintosh HD:/Users/jamie/Documents/Max 8/Packages/ml.lib/icon.png"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [ 19.5, 485.73956298828125, 15.5, 485.73956298828125 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"hidden" : 1,
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"hidden" : 1,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"hidden" : 1,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"hidden" : 1,
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"hidden" : 1,
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"hidden" : 1,
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "icon.png",
				"bootpath" : "~/Documents/Max 8/Packages/ml.lib",
				"patcherrelativepath" : "..",
				"type" : "PNG",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
