
#!/bin/sh
moves=0     
tower_hanoi()
{
    if [ $1 -gt 0 ] ; then
      tower_hanoi "$(($1-1))" $2 $4 $3
      echo move $2 "-->" $3
      moves=$(( $moves + 1 ))
      tower_hanoi "$(($1-1))" $4 $3 $2
    fi
}
printf "Towers of Hanoi. How many disks? "
read disks
tower_hanoi $disks 1 2 3
echo "It has taken $moves moves to solve Towers for $disks disks."
