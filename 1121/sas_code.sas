* Read the permanant SAS data (.sas4dbat);
LIBNAME LibraryName "path";

*************************************;
* Building a new dataset;

DATA new_data;						* OutputPath.filename (default output path is WORK, a temparory library);
	SET LibraryName.source_data;	* Reading Path.filename;
RUN;

*************************************;
* Print out the specific variable;
PROC PRINT DATA=LibraryName.source.data;
	VAR VariableName;				* print out the specific variable;
RUN;

/**************************************;
* TESTING AREA;
* Whether data= option can be ignored in the same step;
* For example:

DATA two; SET save.one;
PROC CONTENTS;				* Which drops "DATA=two" (without specify which dataset);
RUN;
****************************************/

