Param(
    [Parameter(Mandatory=$true)]
    [string]$File1,
    [Parameter(Mandatory=$true)]
    [string]$File2
)

# Get file properties
$File1Props = Get-Item $File1 | Select-Object Name, FullName, Length, CreationTime, LastWriteTime
$File2Props = Get-Item $File2 | Select-Object Name, FullName, Length, CreationTime, LastWriteTime

# Get hash values
$File1Hash = Get-FileHash $File1 | Select-Object Hash
$File2Hash = Get-FileHash $File2 | Select-Object Hash

# Create table
$ComparisonTable = New-Object -TypeName PSObject
$ComparisonTable | Add-Member -MemberType NoteProperty -Name "Property" -Value "File 1"
$ComparisonTable | Add-Member -MemberType NoteProperty -Name "Value" -Value ""
$ComparisonTable | Add-Member -MemberType NoteProperty -Name "Property" -Value "File 2"
$ComparisonTable | Add-Member -MemberType NoteProperty -Name "Value" -Value ""
$ComparisonTable | Add-Member -MemberType NoteProperty -Name "" -Value "" -Force

$ComparisonTable | Add-Member -MemberType NoteProperty -Name "Name" -Value $File1Props.Name
$ComparisonTable | Add-Member -MemberType NoteProperty -Name "Value" -Value $File1Props.FullName
$ComparisonTable | Add-Member -MemberType NoteProperty -Name "Name" -Value $File2Props.Name
$ComparisonTable | Add-Member -MemberType NoteProperty -Name "Value" -Value $File2Props.FullName
$ComparisonTable | Add-Member -MemberType NoteProperty -Name "" -Value "" -Force

$ComparisonTable | Add-Member -MemberType NoteProperty -Name "Length" -Value $File1Props.Length
$ComparisonTable | Add-Member -MemberType NoteProperty -Name "Value" -Value $File2Props.Length
$ComparisonTable | Add-Member -MemberType NoteProperty -Name "" -Value "" -Force

$ComparisonTable | Add-Member -MemberType NoteProperty -Name "Creation Time" -Value $File1Props.CreationTime
$ComparisonTable | Add-Member -MemberType NoteProperty -Name "Value" -Value $File2Props.CreationTime
$ComparisonTable | Add-Member -MemberType NoteProperty -Name "" -Value "" -Force

$ComparisonTable | Add-Member -MemberType NoteProperty -Name "Last Write Time" -Value $File1Props.LastWriteTime
$ComparisonTable | Add-Member -MemberType NoteProperty -Name "Value" -Value $File2Props.LastWriteTime
$ComparisonTable | Add-Member -MemberType NoteProperty -Name "" -Value "" -Force

$ComparisonTable | Add-Member -MemberType NoteProperty -Name "Hash" -Value $File1Hash.Hash
$ComparisonTable | Add-Member -MemberType NoteProperty -Name "Value" -Value $File2Hash.Hash

# Format table
$ComparisonTable | Format-Table -AutoSize

