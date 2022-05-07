workspace "Solution"
    architecture "x86"

    configurations{
        "Debug",
        "Release"
    }
    startproject "Solution"
outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

include "Source"

newaction {
    trigger = "clean",
    description = "Remove all binaries and intermediate binaries, and vs files",
    execute = function()
        print("Removing binaries")
        os.rmdir("Build")
        print("Removing project files")
        os.rmdir("./.vs")
        os.remove("**.sln")
        os.remove("**.vcxproj")
        os.remove("**.vcxproj.filters")
        os.remove("**.vcxproj.user")
        print("Done")
    end
}