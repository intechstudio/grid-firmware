idf_component_register(

    LDFRAGMENTS
        "linker_fragment.lf"

				SRC_DIRS
				"src/c"
				"dep/littlefs"
				"dep/lua-5.4.3/src"
				"dep/tomlc99"

    INCLUDE_DIRS
        "."
        "src/c"
				"dep"
				"dep/littlefs"
				"dep/lua-5.4.3/src"
				"dep/proto"
				"build/lua"
)
