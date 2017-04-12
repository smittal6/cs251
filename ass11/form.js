var a=new Array();
var num=0;
function xml(){

  var stuname=document.forms["formxml"]["student"].value;
  var area=document.forms["formxml"]["area"].value;
  var fmember=document.forms["formxml"]["fmember"].value; 
  var new_entry="";
  if(stuname!="" && (area!="" || fmember!="")){   //no insertion when student name is not provided or both the faculty and area is empty
    num=num+1;
    //we want areas,faculty and then students
    new_entry="\t<Entry_"+num
      +"> \n \t\t<Areas>\n \t\t\t" 
      +area+"\n \t\t</Areas> \n \t\t<Faculty>\n \t\t\t"+fmember
      +"\n \t\t</Faculty> \n\t\t<Student>\n \t\t\t"+stuname+"\n \t\t</Student>\n \t </Entry_"+num+">\n";
  }

  a.push(new_entry);
  var i;
  var final_xml="";
  final_xml+="<Interests>\n";
    for(i=0;i<a.length;i++){
      final_xml+=a[i];
    }
  final_xml+="</Interests>";
  document.getElementById("mybox").innerHTML=final_xml;
}

