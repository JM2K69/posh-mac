Function Get-RandomMAC {
	[CmdletBinding()]
	Param(
		[Parameter()]
		[string] $Separator = "-"
	)

	[string]::join($Separator, @(
		# "Locally administered address"
		# any of x2, x6, xa, xe
		"02",
		("{0:X2}" -f (Get-Random -Minimum 0 -Maximum 255)),
		("{0:X2}" -f (Get-Random -Minimum 0 -Maximum 255)),
		("{0:X2}" -f (Get-Random -Minimum 0 -Maximum 255)),
		("{0:X2}" -f (Get-Random -Minimum 0 -Maximum 255)),
		("{0:X2}" -f (Get-Random -Minimum 0 -Maximum 255))
	))
}