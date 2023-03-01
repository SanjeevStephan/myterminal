function filterit($extension,$filter) {
# Pass any extension such as (py,ps1,bat)
# $textofilter => Text to filter
#& "$HOME\Documents\PowerShell\filter-anyfiles.bat" $extension $textofilter
#& .\filter-anyfiles.bat $extension $textofilter
#cmd.exe .\filter-anyfiles.bat $extension $textofilter  

#$extension = $args[0]
<#
figlet "Filter $filter"
Write-Output " Instructions => Follow the syntax below to filter anyfiles"
Write-Output" %%1 => Pass file.extensions such as (bat,py,ps1,json) and so on."
Write-Output " %%2 => Pass string to filter the filenames with "
Write-Output" anyfiles.* => pass '*' as the first agrument %%1  "
Write-Output " syntax => .\filter-files.bat %%1 %%2 "
Write-Output " example => .\filter-files.bat $extension $filter "

#python line.py --range 75
Write-Output " file-extension => $extension "
Write-Output" filter-text=> $filter "
Write-Output "Filtering filenames with text [$filter] and extension [.$extension]"
#>
$count = 0
Get-ChildItem *.$extension | ForEach-Object {
    if ($_.Name -match $filter) {
        $count++
        Write-Output "[$count] $($_.Name)"
        $file[$count] = $_.Name
        Write-Output $file[$count]
    }
}

Write-Output " Total Files Found with name [$filter]=> $count "


}