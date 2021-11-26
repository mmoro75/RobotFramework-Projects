*** Settings ***
Library    OperatingSystem


*** Variables ***
${outputdirectory} =    outputs
${directory_1} =    directory_1
${directory_2} =    directory_2
${file_1} =    file1
${file_2} =    file2
${file_3} =    file3

*** Keywords ***

Create base directory
    create directory    ${outputdirectory}
    should exist    ${outputdirectory}

Create directory 1
    ${directory_path} =    join path    ${outputdirectory}    ${directory_1}
    create directory    ${directory_path}
    should exist    ${directory_path}

Create directory 2
    ${directory_path} =    join path    ${outputdirectory}    ${directory_2}
    create directory    ${directory_path}
    should exist    ${directory_path}

Create file 1
    ${file_path} =    join path    ${outputdirectory}    ${directory_1}   ${file_1}
    create file    ${file_path}    This is a text in file 1
    should exist    ${file_path}

Create file 2
    ${file_path} =    join path    ${outputdirectory}    ${directory_2}   ${file_2}
    create file    ${file_path}    This is a text in file 2
    should exist    ${file_path}

Create file 3
    ${file_path} =    join path    ${outputdirectory}    ${Directory_2}  ${file_3}
    create file    ${file_path}    This is a text in file 3
    should exist   ${file_path}

Move File 3 from directory 2 to directory 1

    ${source_path} =    join path    ${outputdirectory}    ${directory_2}   ${file_3}
    ${target_path} =    join path    ${outputdirectory}    ${directory_1}   ${file_3}

    move file    ${source_path}    ${target_path}

    should not exist    ${source_path}
    should exist    ${target_path}


Copy File 1 from direcory 1 to directory 2

    ${source_path} =    join path    ${outputdirectory}    ${directory_1}   ${file_3}
    ${target_path} =    join path    ${outputdirectory}    ${directory_2}   ${file_3}

    copy file    ${source_path}    ${target_path}

    should exist    ${source_path}
    should exist    ${target_path}

