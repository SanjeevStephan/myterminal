$manual_home = "$HOME\Documents\PowerShell\.manual"

$manual_url = @{
        "func-paste-temp" = "$manual_home\func-paste-temp"
        "code-snippets"   = "$manual_home\code-snippets"

}


#$manual_url.GetEnumerator() | Format-Table @{label="Title"; expression={$_.Key}}, @{label="Path"; expression={$_.Value}} -AutoSize
