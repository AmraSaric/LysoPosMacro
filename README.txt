
This ImageJ/Fiji macro can be used to measure lysosome positioning in fluorescence micrographs of adherent cells in which lysosomes have been labeled.

This macro was used in the publication "SNX19 restricts endolysosome motility through contacts with the endoplasmic reticulum", Nature Communications, 2021.

Note that this macro will shrink each ROI (traced cells) by 1.6 microns (lines 25,27,29,31) and record the area of the fluorescent signal in the lysosomal channel (in this case, C1 - see line 14, and note that any other channels are closed - see lines 9 and 11) each time. 

Before using this macro:

-Note that the macro describes analysis of multi-channel confocal Z-stack micrographs, that are first converted to a maximum intensity projection (line 5) and then the channels are split (line 8). The user must delete line 5 if the images are not Z-stacks or line 8 if there is only a single channel.

-If the micrographs are multi-channel, the user will need to determine which channel corresponds to the lysosomal signal in their micrographs. Change lines 9-14 accordingly.

-User will need to determine the optimal shell "thickness" (change the 1.6 value in lines 25,27,29,31) and number of shells they wish to measure (change number of repetitions of the "Enlarge" functions) 

-In ImageJ/Fiji, go to Analyze>Set measurements... and select "Area", to ensure that area of the fluorescent signal is measured.

-Trace cells in ImageJ/Fiji, adding each cell outline to the ROI manager. Save all ROIs for a given image.

-When ready to conduct the analysis, open the image and corresponding ROIs and run the analysis.


After acquiring results:

-The results of the analysis (displayed in a results window) can be copied and pasted to a spreadsheet program for analysis.

-For each cell analyzed, subtract the lysosomal signal "Area" in each shrunken shell with the larger shell before it.

-Divide the lysosomal signal from each individual shell by the outermost ROI (the original whole-cell tracing) to get a fraction of the total lysosomal area in each region of the cell.
