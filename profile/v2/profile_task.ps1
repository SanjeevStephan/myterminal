$targetDir = Get-Item 'C:\Users\Sanju\Desktop\shortcuts' -Force


function shortcut($action)
{
    switch($action)
    {
     "hide" {$targetDir.attributes='Hidden'}
     'show' {$targetDir.Attributes='Normal'}
    }
}
