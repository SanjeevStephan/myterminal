 // define an asynchronous function that types out the given text to an HTML element
    async function typewriter(text, elementId, waitAfter) {
      // initialize variables and get the HTML element to display the text
        var n = 0,
            isTag = false
        addText = "";
        const el = document.getElementById(elementId);
       // define a Promise that waits for a given amount of time
        const wait = () => new Promise(r => setTimeout(r, waitAfter));
        // define a Promise that resolves immediately
        const nowait = () => new Promise(r => r());
       // define a function to render the current text with a blinking cursor
        const render = () => el.innerHTML = (text.slice(0, n + 1) + addText);

        const cursor = document.createElement('span');
        cursor.id = "blink";
       // make the cursor visible and iterate through each character in the text
        el.style.setProperty("--cursor-visibility", "visible");
        while (n < text.length) {
           // check if the current character is part of an HTML tag
            if (text.charAt(n + 1) === "<") isTag = true;
            if (text.charAt(n + 1) === ">") isTag = false;
          // if the current character is part of an HTML tag, skip it
            if (isTag) {
                n++;
                continue;
            }
             // render the current text and wait for the specified amount of time
            requestAnimationFrame(render);

            if (waitAfter === 0) {
                await nowait();
            } else {
                await wait();
            }

            n++;
        }
        // make the cursor invisible again
        el.style.setProperty("--cursor-visibility", "collapse");
    }
    // define a helper function to parse a string into an integer
    function parseDelay(d) {
        const parsed = parseInt(d, 10);
        if (isNaN(parsed)) return 0;
        return parsed;
    }

