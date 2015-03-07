%declare date `date`
A =  load '/Users/arun/pigrepo/input/test' as (id:int,name:chararray,age:int);
B = FOREACH A GENERATE $NAME;
DUMP B;
DESCRIBE B;
STORE B INTO '/Users/arun/pigrepo/output/$date';
