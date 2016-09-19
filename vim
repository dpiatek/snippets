# Save in vim with root priviliges
# :w write the buffer to a target, that can be shell command
# % means current file
# tee create a t-shaped pipe that writes to a file and to standard output (so to a pipe too)
# in this instance the stdout is ignored
:w !sudo tee %
