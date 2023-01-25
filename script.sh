################# TASK-1 #######################
### Creating multiple files by WELCOME in it ###
for f in ab{1..10}.txt
do
    echo Welcome > "$f"
done
echo "10 files created with the word Welcome"
mkdir final
mv ab*.txt final/
echo "Files moved to folder called final"
### USER INPUT #################################
$var1
$var2
echo "Please enter value for First variable"
read var1
echo "Please enter value for Second variable"
read var2
### COMPRESSING FILES ##########################
 if [ $var1 == $var2 ]
  then
   echo "Compressing files" 
   tar -cvf final.tar .
   echo "Uploading files to GITHUB"
   git init
   git status
   git add final.tar .
   git commit -m "first commit"
   git checkout -b master
   git remote add origin https://github.com/Veni92/guvi-task-round1.git
   git pull --rebase master
   git push -f origin master
   git branch 
  else
   echo "Values not equal"
   git init
   git status
   git add final .
   git commit -m "commit initial"
   git checkout -b develop
   git remote add origin https://github.com/Veni92/guvi-task-round1.git
   git push -u origin develop
   git commit -m "Second commit"
   git branch
 fi
