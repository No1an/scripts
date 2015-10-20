#!/bin/bash

mkdir list
grep -l '<?php if(!isset($GLOBALS.' /var/www/html/* > list
while read p;
   do sed -i -e 's/<?php if(!isset($GLOBALS.*/<?php/g' $p;
   #echo "cleaned file"; 
 done < list
