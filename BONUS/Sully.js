var i = 5
const fs = require('fs')
const { exec } = require('child_process')
if (i > 5 || i < 0)
	return 0
if (!fs.existsSync('Sully_5.js') && i == 5)
	i++
i--
var sully = 'Sully_' + i + '.js'
const main = () => {
	var execSully = 'node ' + sully
	var touchSully = 'touch Sully_' + i
	fs.writeFile(sully, str(), (err) => {})
	if (i > 0)
		exec(execSully, (err, stdout, stderr) => {})
}
const str = () => {return("var i = " + i + "\nconst fs = require('fs')\nconst { exec } = require(\'child_process\')\nif (i > 5 || i < 0)\n\treturn 0\nif (!fs.existsSync(\'Sully_5.js\') && i == 5)\n\ti++\ni--\nvar sully = \'Sully_\' + i + \'.js\'\nconst main = " + String(main) + "\nconst str = " + String(str) + "\nmain()")}
main()