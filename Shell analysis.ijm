
rename("Image");


run("Z Project...", "projection=[Max Intensity]");


run("Split Channels");
selectWindow("C3-MAX_Image");
close();
selectWindow("C2-MAX_Image");
close();

selectWindow("C1-MAX_Image");


setAutoThreshold("Default dark");


num = roiManager("count")-1;
roi = 0;
while (roi <=num) {
    roiManager("select", roi);
    run("Measure");
    run("Enlarge...", "enlarge=-1.60");
    run("Measure");
    run("Enlarge...", "enlarge=-1.60");
    run("Measure");
    run("Enlarge...", "enlarge=-1.60");
    run("Measure");
    run("Enlarge...", "enlarge=-1.60");
    run("Measure");


    roi = roi + 1;
    }


roiManager("Deselect");
roiManager("Delete");


close();
selectWindow("Image");
close();
