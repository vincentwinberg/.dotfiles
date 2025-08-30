local module = {}

function module.find_cmakelist_path()
    local absolute_dir = vim.fn.expand("%:p:h")

    while absolute_dir ~= "/" do
        local cmake_path = absolute_dir .. "/CMakeLists.txt"

        if vim.fn.filereadable(cmake_path) == 1 then
            return absolute_dir
        end

        absolute_dir = vim.fn.fnamemodify(absolute_dir, ":h")
    end

    return nil
end

function module.cmake_build_path()
    local cmake_dir = module.find_cmakelist_path()

    if cmake_dir == nil then
        print("Could not find CMakeLists.txt")
        return
    end

    return cmake_dir .. "/build"
end

function module.cmake_build()
    local build_path = module.cmake_build_path()

    if build_path then
        vim.cmd("cd " .. build_path)
        vim.cmd("!cmake ..")
        vim.cmd("!make")
    end
end

return module
