package = "cutorch"
version = "scm-1"

source = {
   url = "git://github.com/Schakirov/cutorch.git",
}

description = {
   summary = "Torch CUDA Implementation",
   detailed = [[
   ]],
   homepage = "https://github.com/Schakirov/cutorch",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE) -j$(getconf _NPROCESSORS_ONLN) install
]],
   install_command = "cd build"
}
