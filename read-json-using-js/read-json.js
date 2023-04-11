const fs = require("fs");
const Table = require("cli-table3");
const prettier = require("prettier");

// Load the JSON data from file
const jsonData = fs.readFileSync("settings.json", "utf8");
const settings = JSON.parse(jsonData);

// Create the table with headers
const table = new Table({
  head: ["Command", "Keys", "Action", "Input"],
});

// Add each action to the table
settings.actions.forEach((action) => {
  const command = action.command;
  const keys = action.keys || "";
  let actionText = "";
  let inputText = "";

  if (typeof command === "string") {
    actionText = command;
  } else {
    actionText = command.action || "";
    inputText = command.input || "";
  }

  table.push([actionText, keys, inputText]);
});

// Format the table output using Prettier
const tableOutput = table.toString();
const formattedOutput = prettier.format(tableOutput, { parser: "html" });

console.log(formattedOutput);
