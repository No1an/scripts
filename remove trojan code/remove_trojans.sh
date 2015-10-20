#!/bin/bash

while read p;
   do sed -i -e 's/<?php if(!isset($GLOBALS.*/<?php/g' $p;
   #echo "cleaned file"; 
 done < list
