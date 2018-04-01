pg_dump $0  -h $1 -p $2 -U $3 -W -Z 1 -f $4
echo $4 >> saved_files
