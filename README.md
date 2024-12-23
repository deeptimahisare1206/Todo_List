<h1>Todo-List Management</h1>
<ul>
  <li>Insert</li>
  <li>Delete</li>
  <li>Update</li>
  <li>See All</li>
  <li>Serach Bar</li>
</ul>


<br>-<br>-<br>-<br>-<br>-<br>-<br>-<br>-<br>-<br>


<pre>
                             <h3>Notes as per date</h3>
8th November 2024:-

Web Application:-
file 
new 
maven proejct
maven/ webapp
name the project
finish
-----------------------------------
pom.xml  add dependencies
----------------------------------
windows
preferences
server
runtime envorinment
add server
select apche tomcate
apply and close
---------------------------------------
click project 
build path
configure project path
libraries
add library
server runtime
choose  server 
apply and close
--------------------
run as server
add server
-----
input name and entity name same in  student class

----------------------------------x---------------------------------x---------------------------------

9th November 2024:-
servlet
Configuration
SessionFactory
Session 
Add hibernate.cfg.xml file



----------------------------------x---------------------------------x---------------------------------
12th November 2024:-

Hibernate Mapping File:
All the annotation work can be done with xml file
Student.hbm.xml
Hibernate hbm file dtd
<hibernate-mapping>
<class name=”com.mycompany.Student” table=”stu”>
<id name - “roll” column=”rollno” >
<generator class= “native”></g>
</id>
Property name column
</class>
</hm>

Hibernate.cfg.xml
Mapping resource=”com/mycompany/Student.hbm.xml”


Hibernate Criteria:
//// Deprecated 
Criteria ct = Sess.createCriteria(Employee.class);
List<Employee> l = ct.list();
c.add(Restriction.eq(“name” , “Ramlala”))
c.add(Restriction.gt(“salary” , 1000))
For each 
/// updated to criteria Builder
----------------------------------x---------------------------------x---------------------------------
13th November 2024:-
Select all data:
Criteria Builder cb = sess.getcriteriabuilder();
CriteriaQuery<> cq = cb.createQuery(student.class) persistence
Root<> rt = criteria = cq.from(student.class)
Cq.select(rt)
Predicate np =cb.equal(rt.get(“name”),”ramlal”)
Predicate sp =cb.gt(rt.get(“salary”),100)
Cq.select(rt).where(builder.and(np,sp))     //or
Query q = sess.createquery(cq)
List 
For each

---------------------------------x---------------------------------x---------------------------------
14th November 2024:-
🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🎉🎉🎉🎉🎉🎉HAPPPPY CHILDREN'S DAYYY🎉🎉🎉🎉🎉🎉🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳
TODO LIST:-
Enter title message
column - id title message
scheduled has been saved  and link back to home 
show title 
====id and tittle and detail and delete and edit
url rewritting?id=
pagination
home page option:
search bar using title name button search
select * from Employee where name like 's%';
preparedStatement 
query contatenation '"+title+"%'

  
</pre>
