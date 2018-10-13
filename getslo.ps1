<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2018 v5.5.154
	 Created on:   	06/10/2018 17:24
	 Created by:   	michaelerdmann
	 Organization: 	
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		THis script downloads an image file from Slooh and puts the stuff at the right place in the 
		file system.
#>
<# 
 https://polaris.slooh.com/teide/1/highmag/2018/09/17/0215_025946p044751/025946p044751_20180917_021553_0_5b8erj_l_cal.fit
#>

param (
	[string]$image = "http://defaultserver",
	[string]$object = ""
)
$Meta = $image.split("/")
Write-Host $Meta
$folder = $Meta[3] + "_" + $Meta[4] + "_" + $Meta[5] + ".\" + $Meta[6] + "\" + $Meta[7] + "\" + $Meta[8]
if ($object)
{
	$oname = $object;
	Write-Host "object set" + $oname
    $folder = ( $oname + "\" + $folder )
}
if(!(Test-Path -Path $folder ) ) {
		New-Item -Path $folder -ItemType directory
}
$folder = $folder + "\" + $Meta[10]

(Invoke-WebRequest -Uri $image -OutFile $folder )
