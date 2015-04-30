<cfparam name="title" default="Insert Title Here Test" type="string">

<cffile action="upload" filefield="Filedata" destination="#ExpandPath('./')#" nameConflict="Overwrite" result="fileUpload"> 