# Set up intersight environment this action is required once per powershell session
$config = @{
    BasePath = "https://intersight.com"
    ApiKeyId = "xxxxx27564612d30dxxxxx/5f21c9d97564612d30dd575a/5f9a8b877564612xxxxxxxx"
    ApiKeyFilePath = "C:\\secretKey.txt"
    HttpSigningHeader =  @("(request-target)", "Host", "Date", "Digest")
}
# Set intersight configuration    
Set-IntersightConfiguration @config

# get the Organization.
$org = Get-IntersightOrganizationOrganization -Name default 

$result = New-IntersightNetworkconfigPolicy -Name "netwrokConfigPolicy" -Description "test network config policy" -EnableDynamicDns $true `
            -DynamicDnsDomain "xyz.com" -EnableIpv6 $false -AlternateIpv4dnsServer "22.22.22.22" -PreferredIpv4dnsServer "171.70.98.1"`
            -Organization $org 