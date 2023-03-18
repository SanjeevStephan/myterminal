function readthisfile() {

  fetch('terminal_logo.txt')
  .then(response => response.text())
  .then(text => {
    const fileContentDiv = document.getElementById('figletContent');
    fileContentDiv.innerText = text;
  })
  .catch(error => console.log(error));
}

  function readTextFile(file)
  {
      var rawFile = new XMLHttpRequest();
      rawFile.open("GET", file, false);
      rawFile.onreadystatechange = function ()
      {
          if(rawFile.readyState === 4)
          {
              if(rawFile.status === 200 || rawFile.status == 0)
              {
                  var allText = rawFile.responseText;
                  alert(allText);
              }
          }
      }
      rawFile.send(null);
  }

  readTextFile("terminal_logo.txt")



  fetch('terminal_logo.txt')
  .then(response => response.text())
  .then(text => console.log(text))
  // outputs the content of the text file