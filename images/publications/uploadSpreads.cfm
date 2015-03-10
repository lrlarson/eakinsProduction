<cfparam name="title" default="Insert Title Here Test" type="string">

<cffile action="upload" filefield="Filedata" destination="#ExpandPath('./spreadsCompressed/')#" nameConflict="Overwrite" result="fileUpload"> 
	