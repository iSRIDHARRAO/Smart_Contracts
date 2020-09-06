pragma solidity ^0.5.8;

contract voting{
    address payable creator;
    string name;
    int year;
    int y;
    int result;
    function init(string memory n,int _year)public {
        creator = msg.sender;
        name = n;
        int c=0;
        year = _year;
        y = year;
        while(y!=2020){
            c = c+1;
            y=y+1;
        }
        result = c;
        
    }
    function EligibleorNot()public view returns(string memory){
        if(result >= 18){
            return "You are Eligible to Vote";
        }
        else{
            return "You are not Eligible to Vote";
        }
    }
    function kill()public{
        if(msg.sender == creator){
            selfdestruct(creator);
        }
    }
    
}
