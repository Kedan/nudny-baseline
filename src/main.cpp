#include <nudny/baseline/baseline.hpp>
#include <iostream>

int main(int argc, char* argv[]) {
	nudny::baseline::Baseline b;
	std::cout << "Hello World!\nVersion: " << b.version << "\n";
	return 0;
}
