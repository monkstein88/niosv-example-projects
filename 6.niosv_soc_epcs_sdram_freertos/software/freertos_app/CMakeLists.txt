cmake_minimum_required(VERSION 3.14)

add_subdirectory(../freertos_bsp freertos_bsp)

include(../freertos_bsp/toolchain.cmake)

project(freertos_app)

add_executable(freertos_app.elf)

target_sources(freertos_app.elf
    PRIVATE
        main.c
)

target_include_directories(freertos_app.elf
    PRIVATE
    PUBLIC
)

target_link_libraries(freertos_app.elf
    PRIVATE
        -T "${BspLinkerScript}" -nostdlib
        "${ExtraArchiveLibraries}"
        -Wl,--start-group "${BspLibraryName}" -lc -lstdc++ -lgcc -lm -Wl,--end-group
)

# Create objdump from ELF.
set(objdump freertos_app.elf.objdump)
add_custom_command(
    OUTPUT "${objdump}"
    DEPENDS freertos_app.elf
    COMMAND "${ToolchainObjdump}" "${ToolchainObjdumpFlags}" freertos_app.elf >
            "${objdump}"
    COMMENT "Creating ${objdump}."
    VERBATIM
)
add_custom_target(create-objdump ALL DEPENDS "${objdump}")

# Report space free for stack + heap. Note that the file below is never created
# so the report is always output on build.
set(stack_report_file freertos_app.elf.stack_report)
add_custom_command(
    OUTPUT "${stack_report_file}"
    DEPENDS freertos_app.elf
    COMMAND niosv-stack-report -p "${ToolchainPrefix}" freertos_app.elf
    COMMENT "Reporting memory available for stack + heap in freertos_app.elf."
    VERBATIM
)
add_custom_target(niosv-stack-report ALL DEPENDS "${stack_report_file}")
