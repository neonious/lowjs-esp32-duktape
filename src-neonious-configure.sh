#!/bin/bash

# -DDUK_USE_EXEC_TIMEOUT_CHECK=\*\(bool\ \*\) -DDUK_USE_INTERRUPT_COUNTER required so we can stop code

rm -rf src-neonious
python tools/configure.py --output-directory=src-neonious --platform=neonious   \
-DDUK_USE_EXEC_TIMEOUT_CHECK=\*\(unsigned\ char\ \*\) -DDUK_USE_INTERRUPT_COUNTER -DDUK_USE_DEBUGGER_SUPPORT   \
-DDUK_USE_DEBUGGER_PAUSE_UNCAUGHT   \
-DDUK_USE_DEBUGGER_INSPECT   \
-DDUK_USE_DEBUGGER_THROW_NOTIFY   \
-DDUK_USE_GLOBAL_BUILTIN   \
-DDUK_USE_BOOLEAN_BUILTIN   \
-DDUK_USE_ARRAY_BUILTIN   \
-DDUK_USE_OBJECT_BUILTIN   \
-DDUK_USE_FUNCTION_BUILTIN   \
-DDUK_USE_STRING_BUILTIN   \
-DDUK_USE_NUMBER_BUILTIN   \
-DDUK_USE_DATE_BUILTIN   \
-DDUK_USE_REGEXP_SUPPORT   \
-DDUK_USE_MATH_BUILTIN   \
-DDUK_USE_JSON_BUILTIN   \
-DDUK_USE_BUFFEROBJECT_SUPPORT   \
-DDUK_USE_ENCODING_BUILTINS   \
-DDUK_USE_PERFORMANCE_BUILTIN   \
-DDUK_USE_OBJECT_BUILTIN    \
-DDUK_USE_ES6_PROXY	\
-DDUK_USE_GLOBAL_BINDING \
-DDUK_USE_SYMBOL_BUILTIN	\
-DDUK_USE_SECTION_B \
-DDUK_USE_FASTINT \
-DDUK_USE_DEBUG_BUFSIZE=2048 \
-DDUK_USE_CPP_EXCEPTIONS
mv src-neonious/duktape.c src-neonious/duktape.cpp
