const fs = require('fs')
const main = () => {
	/*
		commentaire
	*/
	fs.writeFile('Grace_kid.js', str(), (err) => {})
}
const str = () => {return("const fs = require('fs')\nconst main = " + String(main) + "\nconst str = " + String(str) + "\nmain()")}
main()