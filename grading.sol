pragma solidity ^0.5.8;
 contract gradings{
     string subname;
     int marks;
     function init(string memory subject, int mark) public{
         subname = subject;
         marks = mark;
     }
     function grade()public view returns(string memory){
         if(marks > 90 && marks <=100){
             return "X Grade";
         }
         else if(marks > 80 && marks <=90){    
             return "A Grade";
         }
         else if(marks > 70 && marks <=80){
            return "B Grade";
         }
         else if(marks >50 && marks <=70){
             return "C Grade";
         }
         else{
             return "F Grade";
         }
 }
 
 }
