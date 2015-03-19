function Get-Something
{
  <#
  .SYNOPSIS
  Describe the function here
  .DESCRIPTION
  Describe the function in more detail
  .EXAMPLE
  Give an example of how to use it
  .EXAMPLE
  Give another example of how to use it
  .PARAMETER computername
  The computer name to query. Just one.
  .PARAMETER logname
  The name of a file to write failed computer names to. Defaults to errors.txt.
  #>
	[CmdletBinding(
	   SupportsShouldProcess = $true,
	   ConfirmImpact = "High"
	)]
	
	param
	(
		[parameter(Mandatory = $true, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, HelpMessage = 'What computer name would you like to target?')]
		[string[]]$computername
	)
	
	begin
	{
		
	}
	
	process
	{
		
		# This allows you to use -WhatIf
		If ($PSCmdlet.ShouldProcess($computername))
		{
			Write-Host "do some command"
		}
	}
	
	End
	{
		
	}
}
