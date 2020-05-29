solution "MyApplication1"
location "allmake"   --生成的makefile .make 存储路径 不会覆盖
language "C++"  --语言
objdir "Intermediate" --中间的 各个版本生成中间目录.o .d ...
configurations { "Debug", "Release" } --版本

configuration "Debug"
defines { "DEBUG" }
flags { "Symbols" }

configuration "Release"
defines { "NDEBUG" }
flags { "Optimize" }

--A project defines one build target
project "MyProject1" 
kind "ConsoleApp"
files
{
    "./Project/Project1/**.h", 
    "./Project/Project1/**.cpp"
}
targetdir("./Project/Project1/") --生成的可执行文件目录
includedirs       --包含的目录
{
    "./Project/include/"
}
links { "pthread" }
linkoptions { "-rdynamic" }
buildoptions { "-x c++" }

project "MyProject2"
kind "ConsoleApp"
files
{
    "./Project/Project2/**.h",
    "./Project/Project2/**.cpp"
}
targetdir("./Project/Project2/")

--[[includedirs
{

}
--
libdirs
{

}
--]]

--buildoptions {"-std=c++11 -Wall"}
