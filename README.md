# Self - Note: LINUX AND STUFF

### present working directory - pwd
- `pwd` : show where you are right now (short hand for Present Working Directory)

### list - ls
- `ls` : list all things in current working directory
- `ls -a` : show all hidden files in current working directory
- `ls -l` : show all DETAILS of files in current working directory

### create new file - touch / vi / vim
- `touch <file_name>` : create a file
- `touch .<file_name>` : create a HIDDEN file
- `vi <file_name>` : create a file
- `vim <file_name>` : create a file
- NOTE: with vi/vim, after open the file, click `i` to switch to `insert` mode
- NOTE: with vi/vim, for saving, click `Esc` then `:wq` and hit `enter` to save and quit

### man (manual) / info
- `man <command>` : show information about the command
- `info <command>` : show information about the command

### print to console in bash
- `echo "something"` : print `something` to the console
- `echo "something" > "file"` : overwrite `something` to `file` (write MODE)
- `echo "something" >> "file"` : write `something` to `file` (append MODE)

### directory
- `.` : current directory
- `..` : parent directory
- `cd <path>` : go to `<path>` (path must be a path to a directory!)
- `mkdir <name>` : create a directory with 'name'

### copy, move and remove files
- `cp "file" "folder"` : copy `file` to `folder`
- `mv "file" "folder"` : move `file` to `folder`
- `mv "old_file" "new_file"` : move content of `old_file` to `new_file` (~ rename)
- `rm "file"` : remove file
- `rm -r "folder"` : remove folder (flag `-r` means recursion)
- `rmdir "empty_folder"` : remove empty folder !!!

### others operation on files and folders
- `mkdir -vp d1/d2/d2` : create `d1` then `d2` in `d1`, then `d3` in `d2`
- `rmdir -vp d1/d2/d2` : remove `d3` in `d2`, then `d2` in `d1`, and `d1`

### check if a file, details of file and folder
- `file "file_name"` : check if `file_name` is a file or directory
- `stat "file"` : details of file/directory

### head and tail
- `head -n "file"` : the first n lines
- `tail -n "file"` : the last n lines

### word count
- `wc -l "file"` : count number of lines in a file
- ... : and other flags

### sort 
- `sort -g "file"`: ASC order
- `sort -r "file"`: DESC order

### cut
- `cut -f <column> <file_name>` : get data at `column` in `file_name`
- `cut -f <column1>-<column2> <file_name>` : get data from `column1` to `column2` in `file_name`
- `cut -f <column1>,<column2> <file_name>` : get data at `column1` and `column2` in `file_name`

### ? i dont know what to name
- `du` : disk use

### sending files (execute in win)
- `scp <file> qmibhu@comsys.inf.elte.hu:/afs/inf.elte.hu/user/q/qm/qmibhu/<more_path>` : send from win to linux
- `scp qmibhu@comsys.inf.elte.hu:/afs/inf.elte.hu/user/q/qm/qmibhu/CS_5_3_oct "path in win"` : get from linux to win

### zip, tar
- `zip <name> "file1" "file2" "..."` : zip files to zip named `name`
- `unzip -d <folder> <zip_file>` : unzip to folder
- `tar cvf "file_name.tar" "file1" "file2" "..."`
- `tar xvf "file_name.tar"` : take back file
- `tar cvzf "file_name.tar.gz" "file1" "file2" "..."` : archive and then zip

### linux process
- `top` : the whole process
- `ps`, `ps -aux`
- `sleep <num>` : sleep for `num` seconds
- `Ctrl-C` : cancel, remove the process
- `Ctrl-Z` : stop, can wake up the process
- `jobs` : list all tasks
- `fg id` : move task to foreground
- `bg task_id` : move task to background
- `sleep 20 &` : sleep for 20 seconds in BACKGROUND
- `kill <process id>` : kill process with id
- `killall <command>` : kill all processes start by using `command`

### File linking
- `ln <file1> <file2` : link `file1` with `file2`, change one of them will change the other one too
- `ln -s  <file1> <file2` : link in soft mode, if remove `file1`, the link will be broke and `file2` can not be use

### chmod
- `chmod u+x info.sh` : `user` now can `execute` file `info.sh`

### i forgot the name!
- `set hello dear sir`
- `echo $0` -> `-bash`
- `echo $1` -> `hello`
- `echo $2` -> `dear`
- `echo $3` -> `sir`
- `echo $4` -> `' '` (nothing)
- `echo $*` -> `hello dear sir`
- `echo $#` -> `3` (count)
- `set --` -> reset, clear command line
- `unset var_name` : unser value in var_name
- `printenv` : print global var
- `export $var_name=...` : make var_name as glob var and assign it ...
- `expr` : expression command
- `expr 5 + 5` = 10
- `expr 5 \* 5` = 25
- `a=5;b=2;`
- `sum=expr $a + $b`
- `echo $a + $b | bc` : bc means bash calculator

### sed - string editor
- `sed 's/<find>/<replace>/'` : replace any first <find> by <replace> in every lines (not actually change to the original file)
- `sed 's/<find>/<replace>/g'` : replace all <find> by <replace> in every lines (not actually change to the original file)
- `sed -i 's/<find>/<replace>/g'` : replace all <find> by <replace> in every lines (change to the original file also)
- `sed '/<find>/d'` : delete the line that contains <find> pattern
- `sed -e 's/<find>/<replace>/g' -e 's/<find>/<replace>/g'` : apply multiple REGEX with sed
- `sed -n '/<find>/p'` : print all lines that contains <find> pattern ~~ similarly to grep, so to speak

### trim file with sed
- `sed -i 's/ *$//' <file_name>` : removing all unnecessary spaces at the end of the line
- `sed -i 's/[[:space:]]*$//' <file_name>` : removing all unnecessary tabs at the end of the line

### lowers to uppers and vice versa with sed
- `sed 's/[a-z]/\U&/g' <file_name>` : all lowers to uppers
- `sed 's/[A-Z]/\L&/g' <file_name>` : all uppers to lowers

### awk
