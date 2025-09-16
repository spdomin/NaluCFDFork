#include<fstream>
#include<iostream>
#include<vector>
#include<algorithm>
#include<cmath>
#include<string>
#include<sstream>
#include<iomanip>

int main()

{ 
  std::string baseFileName = "na";
  std::cout << "Enter base file name: " << std::endl;
  std::cin >> baseFileName;
  
  std::string outputFileName = "na";
  std::cout << "Enter output file name: " << std::endl;
  std::cin >> outputFileName;
  
  std::cout << "The output file name is: " << outputFileName << std::endl;

  int numberOfFiles = 0;
  std::cout << "Enter number of input files: " << std::endl;
  std::cin >> numberOfFiles;

  int numberOfNodes = 101;
  std::cout << "Enter number of nodes: " << std::endl;
  std::cin >> numberOfNodes;

  // open output file to write result
  std::ofstream outFile;
  outFile.open(outputFileName.c_str());
  outFile << "cx cy cz meanP meanTau meanYplus" << std::endl;

  // set angle
  for ( int k = 0; k < numberOfFiles; ++k ) {
 
    std::ostringstream intToString;
    intToString << k;
    std::string fileNumAndType = intToString.str() + ".dat"; 
      
    std::string currentFileName = baseFileName + fileNumAndType;
   
    std::ifstream inFile;
    inFile.open(currentFileName.c_str());
      if ( !inFile.is_open() )
      std::cout << "Error, this file is not open " << std::endl;
    
    // ignore the first line
    std::string line;
    std::getline(inFile, line);
    
    std::vector<std::vector<double> >data;

    double time, nid, 
      cx, cy, cz, 
      p, pRA, tau, tauRA, yplus, yplusRA;
    
    double sumCx = 0.0;
    double sumCy = 0.0;
    double sumCz = 0.0;

    double sumPRA = 0.0;
    double sumTauRA = 0.0;
    double sumYplusRA = 0.0;

    for ( int kk = 0; kk < numberOfNodes; ++kk) {
      
      inFile >> time >> nid 
	     >> cx >> cy >> cz 
	     >> p >> pRA 
             >> tau >> tauRA
             >> yplus >> yplusRA;

      sumCx += cx;
      sumCy += cy;
      sumCz += cz;
      sumPRA += pRA;
      sumTauRA += tauRA;
      sumYplusRA += yplusRA;     
    }

    // close input file corresponding to current angle
    inFile.close();

    double norm = 1.0/(double)numberOfNodes;
    outFile << std::setprecision(16) << " " 
            << sumCx*norm << " "
            << sumCy*norm << " "
            << 0.0 << " "
            << sumPRA*norm << " "
            << sumTauRA*norm << " "
            << sumYplusRA*norm 
            << std::endl;
  }
  
  outFile.close();

  return 0;
}
