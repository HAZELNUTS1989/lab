#!/bin/bash

## create some files at one time.
# mkdir ic{1..28}
j=1
name=0
for car in outputs/20230723/**/
    do
        echo $car
        ## math form
        name=$(( $name+$j ))
        echo $name

        mkdir outputs/task_assign/${car}

        for var in $car/case*/cfg/*.yaml
            do
                echo $var
            ## in the following, tried to create a file with the $car variable on its name.
            ## but it did not work.
            # touch outputs/task_assign/ic_${name}/$car.txt

            ## making a directory with a serial number.
                # cp $var outputs/task_assign/ic_${name}

            ## making a directory by the variable.
            ##  cp file directory
                cp $var outputs/task_assign/${car}
            done
    done
