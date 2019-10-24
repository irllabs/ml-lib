# ml.lib release instructions:

## Deken

The instructions for Deken are [here](https://github.com/pure-data/deken/blob/master/developer/README.md)

To create a deken build:

- Add all platform binaries to a directory called ml.lib
- Add help files and examples to the ml.lib directory
- Run: 
    deken package -v <version> ml.lib
    deken upload ml.lib[<version>](<platform>).dek

## Max package 


