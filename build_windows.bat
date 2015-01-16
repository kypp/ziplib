call "%programfiles(x86)%\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" x86
msbuild /p:Configuration=Release_profiling;Platform=Win32 ZipLib.sln
msbuild /p:Configuration=Release;Platform=Win32 ZipLib.sln