S EQUS "Hello"

PRINT "\"\"\"\n"

PRINT """{S}
world
"""

PRINT """The multi-line string \ ; line continuations work
can contain:
- "single quotes"
- ""double quotes""
- even escaped \"""triple"\"" ""\"quotes\"\"\"
!"""

PRINT """\n"""

printarg: MACRO
	PRINTLN "arg <\1>"
	PRINTLN """arg (\1)"""
ENDM

	printarg "
	printarg """

EMPTY1 EQUS ""
EMPTY2 EQUS "\ ; comment
"
EMPTY3 EQUS """"""
EMPTY4 EQUS """\ ; comment
"""
	PRINTLN STRCAT("(", "{EMPTY1}", "{EMPTY2}", "{EMPTY3}", "{EMPTY4}", ")")

	warn "check the line number"
