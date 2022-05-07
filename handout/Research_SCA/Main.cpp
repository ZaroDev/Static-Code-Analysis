#include <iostream>
// this is code solution has been left intentionally with bugs with the purpose of testing the functionality
// of the SCA tool CppCheck.

void DoSomething()
{
	std::cout << "I'm doing something" << std::endl;

	return;
}
int main(int argc, char* args[])
{
	const char* string1 = "Hello";
	const char* string2 = "World";

	int* ptr;
	int array[10];

	*ptr = 5;
	array[100] = 3;

	//This is a bug as this condition will never be true
	if (string1 == string2)
		DoSomething();


	return 0;
}

