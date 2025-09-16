#include<fstream>
#include<iostream>
#include<vector>
#include<algorithm>
#include<cmath>

int main()
{
  const double pi = std::acos(-1.0);

  const double zMin = 0.0;
  const double zMax = 2.0;
  const double lambda = 0.1;  
  const double alpha = 1.0;
  const double onePeriod = 2.0;
  const double extrusionHeight = 0.5;

  // define angles
  const int numberOfSpan = 5;
  const double dxInc = onePeriod/(numberOfSpan-1);
  
  std::cout << "dxInc: " << dxInc  << std::endl;

  for ( int k = 0; k < numberOfSpan-1; ++k ) {

    const double currentX = dxInc*k; 
    const double currentY = lambda*std::cos(pi*currentX*alpha);

    // construct the normal
    const double sinComponent = std::sin(pi*currentX*alpha);
    
    // Calculate the components of the normal vector
    double normalX = lambda * pi * alpha * sinComponent;
    double normalY = 1.0;

    // Calculate the magnitude of the normal vector
    double magnitude = std::sqrt(normalX * normalX + normalY * normalY);

    // Normalize the normal vector
    normalX /= magnitude;
    normalY /= magnitude;
    
    std::cout << "            - name: probeVertWRnorm" << k << "    # x: " << currentX << std::endl;
    std::cout << "              number_of_points: 101" << std::endl;
    std::cout << "              tip_coordinates: [" 
              << currentX + normalX*extrusionHeight << "," 
              << currentY + normalY*extrusionHeight << "," 
              << zMax << "]" << std::endl;
    std::cout << "              tail_coordinates: [" 
              << currentX << "," 
              << currentY << "," 
              << zMin << "]" << std::endl;
    std::cout << std::endl;
  }

  // correct angle for experiment
  for ( int k = 0; k < numberOfSpan-1; ++k ) {
    std::cout << "probeVertWRnorm" << k << ",";
  }

  return 0;
}
