/*
	Commentaire 1
*/
const f = () => {
	console.log("/*\n\tCommentaire 1\n*/\nconst f = " + String(f) + "\nconst main = " + String(main) + "\nmain()")
}
const main = () => {
	/*
		Commentaire 2
	*/
	f()
}
main()
