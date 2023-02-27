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




function getFileNames($fileno){
# Get file properties
$File1Props = Get-Item $File1 | Select-Object -ExpandProperty Name
$File2Props = Get-Item $File2 | Select-Object -ExpandProperty Name


    switch($fileno) 
    {
        "1"
        {
            return $File1Props
        }
        "2"
        {
            return $File2Props
        }
        default { Write-Host "Invalid Argument Received"}
    }

}

function showFileNames() {
$filename1 = getFileNames("1")
$filename2 = getFileNames("2")

# Display file names
Write-Output "File 1: $filename1"
Write-Output "File 2: $filename2"
}

function fullComparisonTable() {

# Create table
#---------------------------------------{ Separate Table Created }------------------------------------
$ComparisonTable1 = New-Object -TypeName PSObject
$ComparisonTable2 = New-Object -TypeName PSObject
$ComparisonTable1 | Add-Member -MemberType NoteProperty -Name "File" -Value "File 1"
$ComparisonTable1 | Add-Member -MemberType NoteProperty -Name "Value1" -Value ""
$ComparisonTable2 | Add-Member -MemberType NoteProperty -Name "File" -Value "File 2"
$ComparisonTable2 | Add-Member -MemberType NoteProperty -Name "Value2" -Value ""
$ComparisonTable1 | Add-Member -MemberType NoteProperty -Name "Space1" -Value "" -Force
#---------------------------------------{ File.Name }------------------------------------
$ComparisonTable1 | Add-Member -MemberType NoteProperty -Name "Name" -Value $File1Props.Name
$ComparisonTable1 | Add-Member -MemberType NoteProperty -Name "Value3" -Value $File1Props.FullName
$ComparisonTable2 | Add-Member -MemberType NoteProperty -Name "Name" -Value $File2Props.Name
$ComparisonTable2 | Add-Member -MemberType NoteProperty -Name "Value4" -Value $File2Props.FullName
$ComparisonTable2 | Add-Member -MemberType NoteProperty -Name "Space2" -Value "" -Force
#---------------------------------------{ File.Length }------------------------------------
$ComparisonTable1 | Add-Member -MemberType NoteProperty -Name "Length" -Value $File1Props.Length
$ComparisonTable2 | Add-Member -MemberType NoteProperty -Name "Length" -Value $File2Props.Length
$ComparisonTable2 | Add-Member -MemberType NoteProperty -Name "Space3" -Value "" -Force
#---------------------------------------{ File.CreationTime }------------------------------------
$ComparisonTable1 | Add-Member -MemberType NoteProperty -Name "Creation Time1" -Value $File1Props.CreationTime
$ComparisonTable2 | Add-Member -MemberType NoteProperty -Name "Value6" -Value $File2Props.CreationTime
$ComparisonTable2 | Add-Member -MemberType NoteProperty -Name "Space4" -Value "" -Force
#---------------------------------------{ File.LastWriteTime }------------------------------------
$ComparisonTable1 | Add-Member -MemberType NoteProperty -Name "Last Write Time" -Value $File1Props.LastWriteTime
$ComparisonTable2 | Add-Member -MemberType NoteProperty -Name "Last Write Time2" -Value $File2Props.LastWriteTime
$ComparisonTable2 | Add-Member -MemberType NoteProperty -Name "Space5" -Value "" -Force
#---------------------------------------{ File.Hash }------------------------------------
$ComparisonTable1 | Add-Member -MemberType NoteProperty -Name "Hash Value" -Value $File1Hash.Hash
$ComparisonTable2 | Add-Member -MemberType NoteProperty -Name "Hash Value" -Value $File2Hash.Hash

# Format table
$ComparisonTable1 | Format-Table -AutoSize
$ComparisonTable2 | Format-Table -AutoSize

}

function limitedComparisonTable() {

# Create table
#---------------------------------------{ Separate Table Created }------------------------------------
$ComparisonTable1 = New-Object -TypeName PSObject
$ComparisonTable2 = New-Object -TypeName PSObject
$ComparisonTable1 | Add-Member -MemberType NoteProperty -Name "File" -Value "File 1"
$ComparisonTable2 | Add-Member -MemberType NoteProperty -Name "File" -Value "File 2"
#$ComparisonTable1 | Add-Member -MemberType NoteProperty -Name "Space1" -Value "" -Force
#---------------------------------------{ File.Name }------------------------------------
$ComparisonTable1 | Add-Member -MemberType NoteProperty -Name "Name" -Value $File1Props.Name
$ComparisonTable2 | Add-Member -MemberType NoteProperty -Name "Name" -Value $File2Props.Name
#$ComparisonTable2 | Add-Member -MemberType NoteProperty -Name "Space2" -Value "" -Force
#---------------------------------------{ File.Length }------------------------------------
$ComparisonTable1 | Add-Member -MemberType NoteProperty -Name "Length" -Value $File1Props.Length
$ComparisonTable2 | Add-Member -MemberType NoteProperty -Name "Length" -Value $File2Props.Length
#$ComparisonTable2 | Add-Member -MemberType NoteProperty -Name "Space3" -Value "" -Force
#---------------------------------------{ File.CreationTime }------------------------------------

#---------------------------------------{ File.LastWriteTime }------------------------------------

#---------------------------------------{ File.Hash }------------------------------------
$ComparisonTable1 | Add-Member -MemberType NoteProperty -Name "Hash Value" -Value $File1Hash.Hash
$ComparisonTable2 | Add-Member -MemberType NoteProperty -Name "Hash Value" -Value $File2Hash.Hash

# Format table
$ComparisonTable1 | Format-Table -AutoSize
$ComparisonTable2 | Format-Table -AutoSize

}

function compareHashes() {

# Get hash values
$File1Hash = (Get-FileHash $File1).Hash
$File2Hash = (Get-FileHash $File2).Hash

    # Compare hashes
    if ($File1Hash -eq $File2Hash) { Write-Host "Both File hashes are matched! `nTechnically Both the files are Same." } 
    else { Write-Host " `nThe hashes are different." }

}

function initialize() {
figlet "File-Hashes Comparsion"

# Calling All AutoBot func()s
limitedComparisonTable
showFileNames
compareHashes

}

initialize # <--- Execution Begins from here