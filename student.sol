pragma solidity ^0.8.0;

contract StudentData{
	struct Student{
		string name;
		int roll;
	}

	Student[] record;
	Student s;

	event Log(string s);

	function addStudent(string memory name,int roll) public{
		record.push(Student(name,roll));
	} 

	function showStudent() view public returns(Student[] memory){
		return record;
	}

	fallback() external payable{
		emit Log("Fallback_Called");
	}

}
