def convert_hash_syntax(old_syntax)
	old_syntax.gusb(/:(\w+) *=> */, '\1: ')
end