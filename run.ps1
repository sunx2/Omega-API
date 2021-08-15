
$env:GIN_MODE=release
if ([IntPtr]::Size -eq 4)
{
    ./server_windows_32bit.exe
}
else {
    ./server_windows_64bit.exe
}