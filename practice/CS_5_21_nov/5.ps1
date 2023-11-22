$file = Import-Csv .\marks.txt -Delimiter ","

<#
    The first -Sum is for calculate
    The second .Sum is for getting attribute of obj
#>
(($file | Select-Object -Property mark) | Measure-Object -Property mark -Sum).Sum