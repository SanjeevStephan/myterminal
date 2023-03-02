# Sample Dictionary Formatter 
#$func_name.GetEnumerator() | Format-Table Name, Value -AutoSize
# $func_name.GetEnumerator() | Format-Table @{label="Command"; expression={$_.Key}}, @{label="Syntax"; expression={$_.Value}} -AutoSize

