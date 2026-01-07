declare
	cursor c1 is select * from football;
	name football.pname%type;
	totalgoals number;
	totalmatches number;
	countgoals number;
	countmatches number ;
	meanpercent number;
	footdata football%rowtype;
	meanofgoals number;
	meanofmatches number;
begin
	open c1;
	loop
		fetch c1 into footdata;
		exit when c1%notfound;
		select sum(goals),sum(matches),count(goals),count(matches) into totalgoals,totalmatches,countgoals,countmatches from football;
		meanofgoals   := totalgoals/countgoals;
		meanofmatches :=totalmatches/countmatches;
		meanpercent := (meanofgoals/meanofmatches)*100;
	end loop;
   	dbms_output.put_line('totalgoals'           || '  ' || totalgoals);
	dbms_output.put_line('totalmatches'         || '  ' || totalmatches);
	dbms_output.put_line('mean of goals is :  ' || '  ' || meanofgoals);
	dbms_output.put_line('mean of matches is :' || '  ' || meanofmatches);
	dbms_output.put_line('mean percent is ' || '  ' || meanpercent);
	close c1;
end;
/





========================================================================================================
				SQLCommand 

SQL*Plus: Release 21.0.0.0.0 - Production on Wed Dec 10 17:04:28 2025
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: user1/pass1
Last Successful login time: Wed Dec 10 2025 15:05:30 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> Select * from football;

       PID PNAME                       AGE COUNTRY      POSITION      GOALS
---------- -------------------- ---------- ------------ -------- ----------
   MATCHES CLUB            GRA
---------- --------------- ---
         9 Halland                      28 France       forward         200
       173 Baal Bharati

         1 lionel messi                 36 Argentina    forward         106
       180 Inter miami

         2 Christiano Ronaldo           39 Portugal     forward         128
       205 Al-Nasar


       PID PNAME                       AGE COUNTRY      POSITION      GOALS
---------- -------------------- ---------- ------------ -------- ----------
   MATCHES CLUB            GRA
---------- --------------- ---
         3 Neymar-jr                    33 Brazil       forward          79
       128 al-Hilal

         4 Kylian mbappe                26 France       forward          52
        80 Real-madrid

         5 De bryian                    33 Belgium      Midfield         26
       100 Manchester city


       PID PNAME                       AGE COUNTRY      POSITION      GOALS
---------- -------------------- ---------- ------------ -------- ----------
   MATCHES CLUB            GRA
---------- --------------- ---
         6 Luka modric                  39 Croatia      midfield         24
       175 Real madrid

         7 Harry kane                   31 england      forward          63
        89 Bayern munish

         8 Chhetri                      40 India        forward         120
       200 Indian club


       PID PNAME                       AGE COUNTRY      POSITION      GOALS
---------- -------------------- ---------- ------------ -------- ----------
   MATCHES CLUB            GRA
---------- --------------- ---
        10 Mohammad Salah               31 Egypt        Forward         150
       200 Liverpool

        11 Robert Lewandowski           35 Poland       Forward         220
       310 Barcelona

        12 Kevin De Bruyne              32 Belgium      Midfield         60
       250 Manchester City


       PID PNAME                       AGE COUNTRY      POSITION      GOALS
---------- -------------------- ---------- ------------ -------- ----------
   MATCHES CLUB            GRA
---------- --------------- ---
        13 Virgil van Dijk              32 Netherlands  Defender         15
       180 Liverpool

        14 Sadio Mane                   31 Senegal      Forward         130
       220 Bayern Munich

        15 Erling Haaland               23 Norway       Forward         120
       150 Manchester City


       PID PNAME                       AGE COUNTRY      POSITION      GOALS
---------- -------------------- ---------- ------------ -------- ----------
   MATCHES CLUB            GRA
---------- --------------- ---
        16 Karim Benzema                35 France       Forward         200
       340 Al-Ittihad

        17 Toni Kroos                   34 Germany      Midfield         40
       320 Real Madrid

        18 Casemiro                     31 Brazil       Midfield         30
       310 Manchester


       PID PNAME                       AGE COUNTRY      POSITION      GOALS
---------- -------------------- ---------- ------------ -------- ----------
   MATCHES CLUB            GRA
---------- --------------- ---
        19 Raheem Sterling              29 England      Forward         110
       270 Chelsea

        20 Paulo Dybala                 30 Argentina    Forward          90
       200 Roma


20 rows selected.

SQL> edit C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql

SQL> edit C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql\

SQL> edit C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql\

SQL>  @ C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql\
SP2-0310: unable to open file "C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql\.sql"
SQL>  @ C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql

PL/SQL procedure successfully completed.

SQL> set serveroutput on ;
SQL>  @ C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963

PL/SQL procedure successfully completed.

SQL> edit C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql\

SQL> edit C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql

SQL>  @ C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963
totalscores1963

PL/SQL procedure successfully completed.

SQL> edit C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql\

SQL>  @ C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql
totalscores  1963

PL/SQL procedure successfully completed.

SQL> edit C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql\

SQL> edit C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql

SQL>  @ C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql
                result  = totalscores/totalmatches;
                        *
ERROR at line 14:
ORA-06550: line 14, column 11:
PLS-00103: Encountered the symbol "=" when expecting one of the following:
:= . ( @ % ;
The symbol ":= was inserted before "=" to continue.


SQL> edit C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql\

SQL> @ C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql
totalscores  1963
totalmatches  4080
result is : .4811274509803921568627450980392156862745

PL/SQL procedure successfully completed.

SQL> edit C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql\

SQL> edit C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql

SQL> @ C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql
                meanofscores := totalscores/count(*);
                                            *
ERROR at line 15:
ORA-06550: line 15, column 31:
PLS-00204: function or pseudo-column 'COUNT' may be used inside a SQL statement
only
ORA-06550: line 15, column 3:
PL/SQL: Statement ignored
ORA-06550: line 16, column 32:
PLS-00204: function or pseudo-column 'COUNT' may be used inside a SQL statement
only
ORA-06550: line 16, column 3:
PL/SQL: Statement ignored


SQL> edit C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql

SQL> @ C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql
                select sum(goals),sum(matches),count(goals),count(matches) into totalgoals,totalmatches from football;
                                                                                *
ERROR at line 14:
ORA-06550: line 14, column 67:
PLS-00201: identifier 'TOTALGOALS' must be declared
ORA-06550: line 14, column 91:
PL/SQL: ORA-00904: : invalid identifier
ORA-06550: line 14, column 3:
PL/SQL: SQL Statement ignored
ORA-06550: line 15, column 3:
PLS-00201: identifier 'MEANOFGOALS' must be declared
ORA-06550: line 15, column 3:
PL/SQL: Statement ignored
ORA-06550: line 16, column 32:
PLS-00204: function or pseudo-column 'COUNT' may be used inside a SQL statement
only
ORA-06550: line 16, column 3:
PL/SQL: Statement ignored
ORA-06550: line 18, column 61:
PLS-00201: identifier 'TOTALGOALS' must be declared
ORA-06550: line 18, column 5:
PL/SQL: Statement ignored
ORA-06550: line 20, column 58:
PLS-00201: identifier 'MEANOFGOALS' must be declared
ORA-06550: line 20, column 2:
PL/SQL: Statement ignored


SQL> edit C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql

SQL> @ C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql
                select sum(goals),sum(matches),count(goals),count(matches) into totalgoals,totalmatches,countgoals,countmatches from football;
                                                                                *
ERROR at line 14:
ORA-06550: line 14, column 67:
PLS-00201: identifier 'TOTALGOALS' must be declared
ORA-06550: line 14, column 115:
PL/SQL: ORA-00904: : invalid identifier
ORA-06550: line 14, column 3:
PL/SQL: SQL Statement ignored
ORA-06550: line 15, column 3:
PLS-00201: identifier 'MEANOFGOALS' must be declared
ORA-06550: line 15, column 3:
PL/SQL: Statement ignored
ORA-06550: line 16, column 32:
PLS-00201: identifier 'COUNTMATCHES' must be declared
ORA-06550: line 16, column 3:
PL/SQL: Statement ignored
ORA-06550: line 18, column 61:
PLS-00201: identifier 'TOTALGOALS' must be declared
ORA-06550: line 18, column 5:
PL/SQL: Statement ignored
ORA-06550: line 20, column 58:
PLS-00201: identifier 'MEANOFGOALS' must be declared
ORA-06550: line 20, column 2:
PL/SQL: Statement ignored


SQL> edit C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql

SQL> select sum(goals),sum(matches),count(goals),count(matches) into totalgoals,totalmatches,countgoals,countmatches from football;
select sum(goals),sum(matches),count(goals),count(matches) into totalgoals,totalmatches,countgoals,countmatches from football
                                                                *
ERROR at line 1:
ORA-00905: missing keyword


SQL> select sum(goals) as totalgoals,sum(matches) as totalmatches,count(goals) as countgoals,count(matches) into totalgoals,totalmatches,countgoals,countmatches from football;
select sum(goals) as totalgoals,sum(matches) as totalmatches,count(goals) as countgoals,count(matches) into totalgoals,totalmatches,countgoals,countmatches from football
                                                                                                            *
ERROR at line 1:
ORA-00905: missing keyword


SQL> select sum(goals) as totalgoals,sum(matches) as totalmatches,count(goals) as countgoals,count(matches) as countmatches from football;

TOTALGOALS TOTALMATCHES COUNTGOALS COUNTMATCHES
---------- ------------ ---------- ------------
      1963         4080         20           20

SQL> edit C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql

SQL> @ C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql
                select sum(goals),sum(matches),count(goals),count(matches) into                              totalgoals,totalmatches,countgoals,countmatches from football;
                                                                                                                                     *
ERROR at line 14:
ORA-06550: line 14, column 98:
PLS-00201: identifier 'COUNTGOALS' must be declared
ORA-06550: line 14, column 122:
PL/SQL: ORA-00904: : invalid identifier
ORA-06550: line 14, column 3:
PL/SQL: SQL Statement ignored
ORA-06550: line 15, column 31:
PLS-00201: identifier 'COUNTGOALS' must be declared
ORA-06550: line 15, column 3:
PL/SQL: Statement ignored
ORA-06550: line 16, column 32:
PLS-00201: identifier 'COUNTMATCHES' must be declared
ORA-06550: line 16, column 3:
PL/SQL: Statement ignored


SQL> edit C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql

SQL> @ C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql
                select sum(goals),sum(matches),count(goals),count(matches) into totalgoals,totalmatches,countgoals,countmatches from football;
                                                                                                        *
ERROR at line 14:
ORA-06550: line 14, column 91:
PLS-00201: identifier 'COUNTGOALS' must be declared
ORA-06550: line 14, column 115:
PL/SQL: ORA-00904: : invalid identifier
ORA-06550: line 14, column 3:
PL/SQL: SQL Statement ignored
ORA-06550: line 15, column 31:
PLS-00201: identifier 'COUNTGOALS' must be declared
ORA-06550: line 15, column 3:
PL/SQL: Statement ignored
ORA-06550: line 16, column 32:
PLS-00201: identifier 'COUNTMATCHES' must be declared
ORA-06550: line 16, column 3:
PL/SQL: Statement ignored


SQL> edit C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql

SQL> edit C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql

SQL> @ C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql
                select sum(goals),sum(matches),count(goals),count(matches) into totalgoals,totalmatches,countgoals,countmatches from football;
                                                                                                        *
ERROR at line 14:
ORA-06550: line 14, column 91:
PLS-00201: identifier 'COUNTGOALS' must be declared
ORA-06550: line 14, column 115:
PL/SQL: ORA-00904: : invalid identifier
ORA-06550: line 14, column 3:
PL/SQL: SQL Statement ignored
ORA-06550: line 15, column 31:
PLS-00201: identifier 'COUNTGOALS' must be declared
ORA-06550: line 15, column 3:
PL/SQL: Statement ignored
ORA-06550: line 16, column 32:
PLS-00201: identifier 'COUNTMATCHES' must be declared
ORA-06550: line 16, column 3:
PL/SQL: Statement ignored


SQL> edit C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql

SQL> @ C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql
totalgoals  1963
totalmatches  4080
mean of goals is :    98.15
mean of matches is :  204

PL/SQL procedure successfully completed.

SQL> edit C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql

SQL> @ C:\Users\Ayush\OneDrive\Desktop\DATA_SCIENTIST\ORACLE_AND_MONGODB\PRACTISE\PL_SQL\PL_SQL_1\sql18.sql
totalgoals  1963
totalmatches  4080
mean of goals is :    98.15
mean of matches is :  204
mean percent is   48.11274509803921568627450980392156862745

PL/SQL procedure successfully completed.

SQL>