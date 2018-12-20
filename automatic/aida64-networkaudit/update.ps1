import-module au

$releases = 'http://www.aida64.com/downloads'

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "(^[$]url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^[$]checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            "(^[$]checksumType\s*=\s*)('.*')" = "`$1'$($Latest.ChecksumType32)'"
        }
     }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases
   
    $version = ($download_page.ParsedHtml.getElementsByTagName('tr') | Where-Object innerhtml -Match "AIDA64 Network Audit").childNodes | Where-Object className -Match "version" | Select-Object -First 1 -expand innerHTML
    $versionnumbers = $version -split '\.'
    $url = "http://download.aida64.com/aida64networkaudit" + $versionnumbers[0] + $versionnumbers[1] + ".zip"
    return @{ 
        URL32 = $url
        Version = $version 
    }
}

update -ChecksumFor 32
