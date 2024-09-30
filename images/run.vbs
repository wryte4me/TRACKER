' Create PowerPoint Application object
Set pptApp = CreateObject("PowerPoint.Application")
pptApp.Visible = True

' Open the PowerPoint presentation
Set pptPresentation = pptApp.Presentations.Open("C:\Users\admin\OneDrive\Desktop\GITHUB\TRACKER\images\TRACKER.pptx")

' Define the output folder
outputFolder = "C:\Users\admin\OneDrive\Desktop\GITHUB\TRACKER\images\"

' Array of filenames for each slide
Dim filenames(3)
filenames(0) = "gps_module.jpg"
filenames(1) = "ups_module.jpg"
filenames(2) = "18650_battery.jpg"
filenames(3) = "pin_headers.jpg"

' Loop through each slide and save as JPG
For i = 1 To pptPresentation.Slides.Count
    ' Make sure we don't exceed the filenames array
    If i <= UBound(filenames) + 1 Then
        ' Export slide as a JPG image with the given filename
        pptPresentation.Slides(i).Export outputFolder & filenames(i - 1), "JPG"
    End If
Next

' Close the presentation without saving changes
pptPresentation.Close

' Quit PowerPoint
pptApp.Quit

' Cleanup
Set pptPresentation = Nothing
Set pptApp = Nothing

MsgBox "Slides have been exported as JPG files!"
