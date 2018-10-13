
<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2018 v5.5.154
	 Created on:   	10/10/2018 06:33
	 Created by:   	michaelerdmann
	 Organization: 	
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>
It("copies an image from slooh to a context path") --test {
	
	./getslo.ps1 -image https://polaris.slooh.com/teide/1/highmag/2018/09/17/0215_025946p044751/025946p044751_20180917_021716_1_nlrl7i_l_cal.fit -object blueliner,
	$path = "blueliner\teide\/1/highmag\17\09\2018\09\17\0215_025946p044751/025946p044751_20180917_021716_1_nlrl7i_l_cal.fit"
	
	if ((Test-Path $path).length -gt 1000kb)
	{
		Write-Host("Success")
	}
} 



