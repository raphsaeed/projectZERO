#include <iostream>
#include <vector>
#include <string>
#include <future>

using namespace std;

int computeResult()
{
    // Simulating a long computation
    std::cout << "In the thread now..." << std::endl;
    std::this_thread::sleep_for(std::chrono::seconds(3));
    
    return 42;
}

int computeMatrix()
{
    // Simulating a long computation
    std::cout << "In the Matrix thread now..." << std::endl;
    std::this_thread::sleep_for(std::chrono::seconds(6));
    
    return 242;
}

int main(int argc, char *argv[])
{
    // Start the computation asynchronously
    std::future<int> calcResult = std::async(std::launch::async, computeResult);
    std::future<int> matrixResult = std::async(std::launch::async, computeMatrix);
    
    // Do some other work while the computation is happening...
    std::cout << "Performing some other work..." << std::endl;
    
    // Wait for the result and retrieve it
    int resultMat = matrixResult.get();
    std::cout << "The result of MATRIX is: " << resultMat << std::endl;
    
    int resultCalc = calcResult.get();
    std::cout << "The result Calculations is: " << resultCalc << std::endl;
    
    vector<string> msg {"Hello Raphs --OO---OO-- SAEED", "C++", "World", "from", "VS Code", "and the C++ extension!"};
    for (const string& word : msg)
    {
        cout << word << " ";
    }
    cout << endl;

    return 0;

}
