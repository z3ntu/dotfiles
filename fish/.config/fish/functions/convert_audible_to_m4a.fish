#!/usr/bin/env fish

function convert_audible_to_m4a --argument-names inputfile outputfile
    if not test -f ~/.audible
        echo "Please put your audible activation bytes into '~/.audible'. Use your favorite search machine on how to get them."
    end
    if not string match -q "*.aax" $inputfile
        echo "Wrong input file: $inputfile. Expected file extension .aax"
        return
    end
    if not string match -q "*.m4a" $outputfile
        echo "Wrong output file: $outputfile. Expected file extension .m4a"
        return
    end
    ffmpeg -activation_bytes (cat ~/.audible) -i $inputfile -vn -c:a copy $outputfile
end

