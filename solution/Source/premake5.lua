project "Solution"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++14"
    staticruntime "on"

    targetdir("$(SolutionDir)Build/$(Configuration)")

    files { "*.cpp"}

    defines {
        "WINDOWS"
    }

    filter {"configurations:Debug"}
        buildoptions "/MTd"
        runtime "Debug"
        symbols "on"

    filter {"configurations:Release"}
        buildoptions "/MT"
        runtime "Release"
        optimize "on"