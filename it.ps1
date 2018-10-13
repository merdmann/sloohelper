
function it
{
	Param (
		[string]$what,
		[ScriptBlock]$test
	)
	
	$result = Invoke-Command -ScriptBlock $test
	return $result;
}

<#example call#>

it("Fetch image from slooh") -test {
	./getslo.ps1 -image https://polaris.slooh.com/teide/1/highmag/2018/09/17/0215_025946p044751/025946p044751_20180917_021716_1_nlrl7i_l_cal.fit -object blueliner,
				 $path = "blueliner\teide\/1/highmag\17\09\2018\09\17\0215_025946p044751/025946p044751_20180917_021716_1_nlrl7i_l_cal.fit"
	
	if ((Test-Path $path).length -gt 1000kb)
	{
		Write-Host("Success")
	}
	Write-Host "This the test for $what "  return 1
}