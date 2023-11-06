a<h1>Self - Note: <span style="color: red">LINUX AND STUFF</span></h1>

> This is just what I think I will need to use it in the class and in the exam, not all the things about Linux...
<hr>

> INDEX
<ol>
    <li><a href="#1">pwd</a></li>
    <li><a href="#2">ls</a></li>
    <li><a href="#3">create new file</a></li>
    <li><a href="#4">manual / info</a></li>
    <li><a href="#5">print to console in bash</a></li>
    <li><a href="#6">directory</a></li>
    <li><a href="#7">copy, move and remove files</a></li>
    <li><a href="#8">others operation on files and folders</a></li>
    <li><a href="#9">check if a file, details of file and folder</a></li>
    <li><a href="#10">head and tail</a></li>
    <li><a href="#11">word count</a></li>
    <li><a href="#12">sort</a></li>
    <li><a href="#13">cut</a></li>
    <li><a href="#14">? i dont know what to name</a></li>
    <li><a href="#15">sending files (execute in win)</a></li>
    <li><a href="#16">zip, tar</a></li>
    <li><a href="#17">linux process</a></li>
    <li><a href="#18">File linking</a></li>
    <li><a href="#19">chmod</a></li>
    <li><a href="#20">i forgot the name!</a></li>
    <li><a href="#21">sed - string editor</a></li>
    <li><a href="#22">trim file with sed</a></li>
    <li><a href="#23">lowers to uppers and vice versa with sed</a></li>
    <li><a href="#24">awk</a></li>
</ol>

<hr>

<h2>Now let's go!</h2>


<h3 id="1">present working directory - pwd</h3>

- `pwd` : show where you are right now (short hand for Present Working Directory)

<h3 id="2">list - ls</h3>

- `ls` : list all things in current working directory
- `ls -a` : show all hidden files in current working directory
- `ls -l` : show all DETAILS of files in current working directory

<h3 id="3">create new file - touch / vi / vim</h3>

- `touch <file_name>` : create a file
- `touch .<file_name>` : create a HIDDEN file
- `vi <file_name>` : create a file
- `vim <file_name>` : create a file
- NOTE: with vi/vim, after open the file, click `i` to switch to `insert` mode
- NOTE: with vi/vim, for saving, click `Esc` then `:wq` and hit `enter` to save and quit

<h3 id="4">man (manual) / info</h3>

- `man <command>` : show information about the command
- `info <command>` : show information about the command

<h3 id="5">print to console in bash</h3>

- `echo "something"` : print `something` to the console
- `echo "something" > "file"` : overwrite `something` to `file` (write MODE)
- `echo "something" >> "file"` : write `something` to `file` (append MODE)

<h3 id="6">directory</h3>

- `.` : current directory
- `..` : parent directory
- `cd <path>` : go to `<path>` (path must be a path to a directory!)
- `mkdir <name>` : create a directory with 'name'

<h3 id="7">copy, move and remove files</h3>

- `cp "file" "folder"` : copy `file` to `folder`
- `mv "file" "folder"` : move `file` to `folder`
- `mv "old_file" "new_file"` : move content of `old_file` to `new_file` (~ rename)
- `rm "file"` : remove file
- `rm -r "folder"` : remove folder (flag `-r` means recursion)
- `rmdir "empty_folder"` : remove empty folder !!!

<h3 id="8">others operation on files and folders</h3>

- `mkdir -vp d1/d2/d2` : create `d1` then `d2` in `d1`, then `d3` in `d2`
- `rmdir -vp d1/d2/d2` : remove `d3` in `d2`, then `d2` in `d1`, and `d1`

<h3 id="9">check if a file, details of file and folder</h3>

- `file "file_name"` : check if `file_name` is a file or directory
- `stat "file"` : details of file/directory

<h3 id="10">head and tail</h3>

- `head -n "file"` : the first n lines
- `tail -n "file"` : the last n lines

<h3 id="11">word count</h3>

- `wc -l "file"` : count number of lines in a file
- ... : and other flags

<h3 id="12">sort </h3>

- `sort -g "file"`: ASC order
- `sort -r "file"`: DESC order

<h3 id="13">cut</h3>

- `cut -f <column> <file_name>` : get data at `column` in `file_name`
- `cut -f <column1>-<column2> <file_name>` : get data from `column1` to `column2` in `file_name`
- `cut -f <column1>,<column2> <file_name>` : get data at `column1` and `column2` in `file_name`

<h3 id="14">? i dont know what to name</h3>
- `du` : disk use

<h3 id="15">sending files (execute in win)</h3>

- `scp <file> qmibhu@comsys.inf.elte.hu:/afs/inf.elte.hu/user/q/qm/qmibhu/<more_path>` : send from win to linux
- `scp qmibhu@comsys.inf.elte.hu:/afs/inf.elte.hu/user/q/qm/qmibhu/CS_5_3_oct "path in win"` : get from linux to win

<h3 id="16">zip, tar</h3>

- `zip <name> "file1" "file2" "..."` : zip files to zip named `name`
- `unzip -d <folder> <zip_file>` : unzip to folder
- `tar cvf "file_name.tar" "file1" "file2" "..."`
- `tar xvf "file_name.tar"` : take back file
- `tar cvzf "file_name.tar.gz" "file1" "file2" "..."` : archive and then zip

<h3 id="17">linux process</h3>

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

<h3 id="18">File linking</h3>

- `ln <file1> <file2` : link `file1` with `file2`, change one of them will change the other one too
- `ln -s  <file1> <file2` : link in soft mode, if remove `file1`, the link will be broke and `file2` can not be use

<h3 id="19">chmod</h3>
- `chmod u+x info.sh` : `user` now can `execute` file `info.sh`

<h3 id="20">i forgot the name!</h3>

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

<h3 id="21">sed - string editor</h3>

> DistroTube tutorial
- `sed 's/<find>/<replace>/'` : replace any first <find> by <replace> in every lines (not actually change to the original file)
- `sed 's/<find>/<replace>/g'` : replace all <find> by <replace> in every lines (not actually change to the original file)
- `sed -i 's/<find>/<replace>/g'` : replace all <find> by <replace> in every lines (change to the original file also)
- `sed '/<find>/d'` : delete the line that contains <find> pattern
- `sed -e 's/<find>/<replace>/g' -e 's/<find>/<replace>/g'` : apply multiple REGEX with sed
- `sed -n '/<find>/p'` : print all lines that contains <find> pattern ~~ similarly to grep, so to speak

<h3 id="22">trim file with sed</h3>

> DistroTube tutorial
- `sed -i 's/ *$//' <file_name>` : removing all unnecessary spaces at the end of the line
- `sed -i 's/[[:space:]]*$//' <file_name>` : removing all unnecessary tabs at the end of the line

<h3 id="23">lowers to uppers and vice versa with sed</h3>

> DistroTube tutorial
- `sed 's/[a-z]/\U&/g' <file_name>` : all lowers to uppers
- `sed 's/[A-Z]/\L&/g' <file_name>` : all uppers to lowers

<h3 id="24">awk</h3>

> DistroTube tutorial
- `awk {print $1}` : print the first column of row
- `awk {print $2}` : print the second column of row 
- `awk {print $3}` : print the third column fof row
> More... print

- `awk {print $0}` : print the entire row
- `awk {print}` : print the entire row

<br>

- `awk -F <delimiter> '{print $1}' <file>` : print the first column of each row of a file with delimiter = `delimiter` (or default delimiter = ` ` - space)
<br>

- `awk -F <delimiter> '{print $1" "$2" "...}' <file>` : print the first col, the second col ... of each row of a file with delimiter = `delimiter` and using `" " (space)` as a delimiter between cols in the result
<br>

- another way `awk 'BEGIN {FS=<delimiter>; OFS=<delimiter2>} {print $1,$2,...}' <file>`: the same as above, `OFS` is shorthand for `Output Field Separators`

- `$NF` : n-th field -- to get the last col of each row

> Find some row satisfy the condition and print some cols in that row?
- `awk '\<regex pattern>\ {print <something>}'` : remember that `'\ \'` is a <strong style="color: red">need</strong> in the command

> Even do some math?
- `awk '\<regex pattern>\ {print $1 + $2}'` : incase data in col1 and col2 <strong style="color: red">can be added</strong> together!

> Some built-in functions ? Why not
- `awk 'length($0) > 10'` : print all row that its length is greater than 10

> If condition
- `awk '{ if ($NF == <something>) print $0}'` : if last col in row is satisfied condition then print the entire row

> For loop
- `awk 'BEGIN { for(i=1;i<=10;i++) print i*i;}` : print square of numbers from 1 to 10

