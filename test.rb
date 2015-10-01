name = "test"
table = "users(username, fname, lname, email)"
domain = "@test.com"
file_name = "test_data.sql"

f = File.new(file_name, "w")

for i in 1..30 do
	f.write( "INSERT INTO #{table} VALUES ('#{name}#{i}', '#{name.capitalize}#{i}', '#{name.capitalize}#{i}_last', '#{name}#{i}#{domain}'\n" )
end

f.close