$xml = ([xml](Get-Content .\nodeenv.nuspec))
$id = $xml.package.metadata.id
$version = $xml.package.metadata.version

Invoke-Expression "nuget pack -OutputDirectory build"
Copy-Item .\nodeenv.nuspec .\build
$hash = (Get-FileHash ".\build\$id.$version.nupkg" -Algorithm SHA512).Hash.ToLower()
$hash | Out-File ".\build\$id.$version.nupkg.sha512"
