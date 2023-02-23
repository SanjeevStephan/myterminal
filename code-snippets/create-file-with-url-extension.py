"""  ---------------------{ CHATGPT QUERY }------------------------------

.QUERY
   create file with extension (.url) in python
    
.RESPONSE
   To create a file with the '.url' extension in Python, you can use the open() function to create a new file and write the necessary data to it.

.SYNTAX
   

.DESCRIPTION
 

.EXAMPLE

    
.PARAMETER   


.INPUT

    
.CODE    
Here is an example that demonstrates how to create a URL shortcut file:
-------------------------------{ CODE_BELOW }-----------------------------"""



with open("example.url", "w") as file:
    file.write("[InternetShortcut]\n")
    file.write("URL=https://www.example.com/\n")


 
"""-------------------------------{ CODE_ABOVE }-----------------------------

.OUTPUT 


.HOW_THE_SCRIPT_WORK

This code creates a file named "example.url" in the current directory and writes the content [InternetShortcut]\nURL=https://www.example.com/\n to it.
 This content is the standard format for a URL shortcut file, which allows you to create a shortcut to a web page on your desktop or in your browser.

.LINK
   -> https://chat.openai.com/chat/

"""
