del __tex__Final__*.pdf
FOR /F "tokens=*" %%P IN ('dir /b ..\*.pdf') DO (
	echo %%P
	gswin64c -sDEVICE=pdfwrite -dCompatibilityLevel=1.5 -dNOPAUSE -dQUIET -dBATCH -dPrinted=false -sOutputFile=__TeX__Final__%%~nP.pdf ..\%%P
)
