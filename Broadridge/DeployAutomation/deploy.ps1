param(
    [string]$WebBuildDir,
    [string]$WebDestDir,
    [int]$WebPort,
    [string]$WebApiBuildDir,
    [string]$WebApiDestDir
)

function Build-Angular 
{
    Write-Output "Running npm build"
    #npm run build.prod
}

function Copy-DirectoryChildren 
{
    [CmdletBinding()]
    param(
        [parameter(Mandatory=$true)]
        [string]$SrcDir,

        [parameter(Mandatory=$true)]
        [string]$DestDir
    )
    PROCESS 
    {
        Get-ChildItem $SrcDir | Copy-Item -Destination $DestDir -Recurse -Force
    }
}

function Copy-Web 
{
    Copy-DirectoryChildren -srcDir $WebBuildDir -destDir $WebDestDir
}

function Copy-WebApi 
{
    Copy-DirectoryChildren -srcDir $WebApiBuildDir -destDir $WebApiDestDir
}

function Change-WebPort 
{
    $appFile = Get-ChildItem $WebDestDir js\app.js
    foreach ($file in $appFile) 
    {

        (Get-Content $file.PSPath) |
        ForEach-Object{$_.replace(":83", ":" + $WebPort)} |
        Set-Content $file.PSPath
    }
}

function Deploy-Web 
{
    Build-Angular
    Copy-Web
    if ($WebPort) 
    {
        Change-WebPort
    }
}

Deploy-Web
#Copy-WebApi

#Build-Angular