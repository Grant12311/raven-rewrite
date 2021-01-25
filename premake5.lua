workspace "Raven"
    language "C++"
    cppdialect "C++17"
    toolset "gcc"
    configurations {"Debug", "Release"}
    platforms {"LinuxARM,", "LinuxX86", "LinuxX64", "WindowsARM", "WindowsX86", "WindowsX64"}
    startproject "Raven"

    flags {"MultiProcessorCompile"}
    buildoptions {"-pipe", "-Wall", "-Wextra", "-Wnon-virtual-dtor", "-Winline", "-Wunreachable-code", "-Wshadow", "-Wconversion", "-Wno-switch", "-Wno-unused-variable", "-Wpedantic"}
    defines {}

    links {}
    includedirs {}

    filter "platforms:Linux*"
        system "linux"
    filter "platforms:Windows*"
        system "windows"

    filter "platforms:*ARM"
        architecture "ARM"
    filter "platforms:*X86"
        architecture "x86"
    filter "platforms:*X64"
        architecture "x86_64"

    filter "configurations:Debug"
        symbols "On"
        buildoptions {"-pg", "-fsanitize=address", "-fsanitize=leak", "-static-libasan"}
        linkoptions {"-pg", "-fsanitize=address", "-fsanitize=leak", "-static-libasan"}
        defines {"NDEBUG"}

    filter "configurations:Release"
        optimize "On"

    project "Raven"
        kind "ConsoleApp"
        location "%{wks.location}"
        targetdir "%{prj.location}/bin/%{cfg.platform}/%{cfg.buildcfg}"

        files {"%{prj.location}/src/**", "premake5.lua", ".gitignore"}


