<?php
/**************************************************************************
*	Author: Paul Girard, Ph.D., UQAC
*	Date:	March 2016
*	Course:	8trd157-TUT
*	Objective: Show an example of SQL request activated by an html page 
*		on the table part of a user schema defined in cndb
***************************************************************************	
*	1. Creation of a connection identifier in the user schema to the Oracle
*	   database. OCIError returns false if there is a connection error.
*	   The function header with the parameter Location can REDIRECT the execution to 
*	   another html page. 
*/
$bd = "cndb";
$connection = OCI_connect("username", "password", $bd);
if(OCIError($connection)) 
	{
	$url = "connection_error.html";
	header("Location: $url");
	exit;
	};

/* 	The complete content of the result is formatted in html by the concatenation
*	of all information in the string variable $chaine0.  If we use echo, the redirect
*	is no more possible.  So echo is used only at the end. The header function
*	specifies a new HTTP header to use a redirect and this header must be sent before
*	any data to the client with echo. The final string is sent to Apache which will transmit
*	it to the HTTP client.
*/

$chain = "<HTML><HEAD><TITLE>Request SQL</TITLE></HEAD><body>\n";
$chain .= "<P align = \"left\"><font size=4> A form on an html page calls a PHP program executing an&nbsp"; 
$chain .= "SQL request to an Oracle server. The PHP output is sent to Apache like a CGI program.  Apache &nbsp";
$chain .= "redirects this output to the HTTP client <i>(ex. Internet Explorer)</i> which displays the result\n";
$chain .= "</font><br><br>\n";
$chain .= "<center><b><font size=+3>Result of the SQL request</font></b></center>\n";

/*	2. Analysis of the SQL request 	*/

$curs1 = OCIparse($connection, "SELECT part_id, part_name FROM part where part_id like '$partid%'");
if(OCIError($curs1))
	{
	OCIlogoff($connection);
	$url = "err_base.html";
	header("Location: $url");
	exit;
	};

/*  	3. Assign Oracle table columns names to PHP variables
*	   note 1: The definition of these columns must always be done before an execution; 
*	   note 2: Oracle always uses capital letters for the columns of a table
*/
OCI_Define_By_Name($curs1,"PART_ID",$part_id);
OCI_Define_By_Name($curs1,"PART_NAME",$part_name);

/*	4. Execution of the SQL request with an immediate commit to free locks */
OCIExecute($curs1, OCI_COMMIT_ON_SUCCESS);
$chain .= "<b>PART ID  PART NAME</b><br>\n";

/*	5. Read each row from the result of the Sql request */	
while (OCIfetch($curs1))
	$chain .= "$part_id  &nbsp &nbsp &nbsp &nbsp &nbsp $part_name<br>\n";

/*	6. Terminate the end of the html format page */
$chain .= "</body></html>\n";
print "<b>Version of this server :</b> " . OCIServerVersion($connection);
/*	7. Free all ressources used by this command and quit */
OCIFreeStatement($curs1);
OCIlogoff($connection);

/*	8. Transmission of the html page ==> Apache ==> client */
echo($chain);
?>
