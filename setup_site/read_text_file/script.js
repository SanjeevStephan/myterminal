const fileInput = document.getElementById('fileInput');
const fileContentDiv = document.getElementById('fileContent');

fileInput.addEventListener('change', event => {
  const file = event.target.files[0];
  const reader = new FileReader();

  reader.onload = event => {
    const text = event.target.result;
    fileContentDiv.innerText = text;
  };

  reader.readAsText(file);
});
