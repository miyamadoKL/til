def convert_hash_syntax(old_syntax)
  old_syntax.to_str.gsub('/:(\w+) *=> */', '\1: ')
end
