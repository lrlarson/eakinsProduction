<cfparam name="title" default="Insert Title Here Test" type="string">

<cffile action="upload" filefield="Filedata" destination="#ExpandPath('./uploads/')#" 
	
	nameconflict="makeunique" result="fileUpload"  />
	
	<!---
	<!--- accept="audio/mpeg" --->
    <cfif fileUpload.fileWasSaved> 
		<cfset retName = fileUpload.serverFilename  & "." &  fileUpload.serverFileExt/>
        <cfscript>
		uuid = CreateUUID();
		</cfscript>
		<cfoutput>OK#uuid#</cfoutput>  
        <cfquery datasource="cage" >
   		 INSERT INTO dbo.tbl_PianoUploads
        ( fileName, UUID,title)
		VALUES  
        ( '#retName#', -- fileName - nvarchar(100)
          '#UUID#', -- UUID - nvarchar(100),
          '#title#'
          )
    </cfquery>
		
		<cfreturn/>  
        <!--- If it is not a valid mp3 file, delete it from the server. ---> 
        <cfelse> 
            <cffile action="delete" 
                file="#fileUpload.serverDirectory#/#fileUpload.serverFile#"> 
            <cfoutput>The file you uploaded, #fileUpload.clientFile#, was not a valid mp3.</cfoutput> 
    </cfif>
    
    --->