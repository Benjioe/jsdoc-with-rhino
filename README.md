# JSdoc with Rhino scripts in Docker
Jsdoc-with-Rhino is a docker image who generate jsdoc html documentation for Rhino scripts

## Usage
### Linux (ubuntu)
Create a directory with some JavaScript file inside.
`mkdir ~/jsdoc && echo "/** a test function */function test() {}" > ~/jsdoc/test.js` 

Launch the image and map this directory to */usr/src/app*.
`sudo docker run -v ~/jsdoc:/usr/src/app jsdoc-with-rhino`

The generate html is saved in *~/jsdoc/out*, open it in a browser.
`sensible-browser ~/jsdoc/out/index.html`


### Windows (powershell)
Create a directory with some JavaScript file inside.
`mkdir c:\jsdoc; echo "/** a test function */function test() {}" > C:\jsdoc\test.js` 

Launch the image and map this directory to */usr/src/app*.
`docker run -v c:/jsdoc:/usr/src/app jsdoc-with-rhino`

The generate html is saved in *D:\jsdoc\out*, open it in a browser.
`start D:\jsdoc\out\index.html`


### Configure
You can replace the default jsdoc parameters with your own by putting them a the end of the docker command line. Here we add a readme file :
`docker run -v c:/jsdoc:/usr/src/app jsdoc-with-rhino -c ./app -r -R  /usr/src/app/README.md`

All parameters are describe on the [jsdoc documentation page](https://jsdoc.app/about-commandline.html)

## Questions And Answers
**What's Jsdoc ?**
Jsdoc is a convention to document JavaScript code. It include a tool to generate html documentation.

[Jsdoc documentation](https://jsdoc.app/)
[github page](https://github.com/jsdoc/jsdoc)
**What's Mozilla Rhino ?**
Rhino is a JavaScript interpreter base on the JVM. You can mix JavaScript and Java code in the same file.  
[Mozilla Rhino documentation](https://developer.mozilla.org/fr/docs/Mozilla/Projects/Rhino)
[github page](https://github.com/mozilla/rhino)

**Why do you use the 3.3.3 version of Jsdoc ?**
3.3.3 version is the last jsdoc base on Rhino. Without Rhino, any Java instruction could prevent Jsdoc to treat our file.

