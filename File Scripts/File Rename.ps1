$path = "" 
$filepath = Get-ChildItem $path
$SerioesName = ""

ForEach ($file in $filepath)
{
$pieces = $file.FullName.Split(".").ToUpper()
$filename = $pieces[1] 
$extensionlocation = $pieces.count
$extension = $pieces[$extensionlocation-1]
Write-Host "File name will be $SeriesName  $filename.$extension"
Rename-Item -Path "$path\$file" -NewName "$SeriesName $filename.$extension"
}
