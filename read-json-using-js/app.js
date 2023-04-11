// Load the JSON data from a file
fetch('settings.json')
  .then(response => response.json())
  .then(data => {
    // Get the table body element
    const tableBody = document.querySelector('#data_table tbody');

    // Loop through the data and add rows to the table
    data.actions.forEach(action => {
      const command = action.command;
      const keys = action.keys;

      const row = tableBody.insertRow();

      const commandCell = row.insertCell();
      const keysCell = row.insertCell();

      commandCell.textContent = JSON.stringify(command);
      keysCell.textContent = keys;
    });
  })
  .catch(error => console.error(error));
