#include <iostream>
#include <vector>
#include <string>
#include <future>

using namespace std;

int computeResult()
{
    // Simulating a long computation
    std::this_thread::sleep_for(std::chrono::seconds(3));
    return 42;
}

int main(int argc, char *argv[])
{
    // Start the computation asynchronously
    std::future<int> futureResult = std::async(std::launch::async, computeResult);
    
    // Do some other work while the computation is happening...
    std::cout << "Performing some other work..." << std::endl;
    
    // Wait for the result and retrieve it
    int result = futureResult.get();
    std::cout << "The result is: " << result << std::endl;
    
    
    vector<string> msg {"Hello Raphs --8*---8*-- SAEED", "C++", "World", "from", "VS Code", "and the C++ extension!"};
    for (const string& word : msg)
    {
        cout << word << " ";
    }
    cout << endl;

    return 0;

}
