# setup_dir_system
this shell script uses bash variables and creates softlinks to set up a directory system and copy the scripts from an existing directory system with the same architecture. this is convenient when working with workflows where basically only the raw data changes. caution when working with absolute paths in your scripts! you could produce wrong data or overwrite a previous analysis if you run the copied scripts without adapting them to the new directory system!

soft-linking the results to scratch (not backed up) saves space and time in backing up data. large files like mapped bamfiles can easily be obtained by re-running the respective scripts.



