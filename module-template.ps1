
				
#REQUIRES -Version 2.0


#
# Define global variables here
#
Set-StrictMode -version 2
$ErrorActionPreference = "Stop"

<#
.SYNOPSIS
Manages ABC Operations
Version 1.00

.DESCRIPTION
A more verbose description of how to use this script

.PARAMETER  thisVar

.PARAMETER  thatVar

.EXAMPLE
ABC -thisvar "Hello" -thatvar 10

#>

function ABC {
[CmdletBinding(supportsshouldprocess=$True)]
param(
	[parameter(Mandatory=$True,ValueFromPipeline=$True,ValueFromPipelineByPropertyName=$True)]
	[ValidateNotNullOrEmpty()]
	[string]$CHANGEME
)

	BEGIN
	{

	}
	PROCESS	
	{
		
		# This allows you to use -WhatIf
		If ($PSCmdlet.ShouldProcess($changeme)) { 
			# do something here
		}
	}
	END
	{

	}	

}
