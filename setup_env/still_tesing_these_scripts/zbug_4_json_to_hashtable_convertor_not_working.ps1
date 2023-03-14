# function ConvertFrom-JsonToHashtable {
#    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]$Jsonfile
    )

    #$json = $Jsonfile.replace(".\"," ")	
    $object = ConvertFrom-Json $Jsonfile
    $hashtable = @{}

    foreach ($property in $object.psobject.properties) {
        $hashtable.Add($property.Name, $property.Value)
    }

     $hashtable | set-content converted_hashtable.ps1	
 #   return $hashtable
#}

