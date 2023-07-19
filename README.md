# ClearMage

The ClearMage code aims to optimize a low-res image using a linear algebra algorithm.

## Prerequisites

Before running the code, ensure that you have the following:

- MATLAB: The code is written in MATLAB, so make sure you have MATLAB installed on your system. Alternatively, you can use the online version of MATLAB available at [MATLAB Online](https://www.mathworks.com/products/matlab-online.html).

## Getting Started

To use the code, follow these steps:

1. Open MATLAB on your system or access [MATLAB Online](https://www.mathworks.com/products/matlab-online.html) on your web browser.
2. Create a new MATLAB script or open an existing one.
3. Copy and paste the provided code into the script.

## Code Explanation

The code performs the following steps:

1. It starts by clearing the MATLAB workspace, closing any open figures, and clearing the command window.
2. The contaminated image is read using the `imread` function and stored in the variable `Xc`. This assumes that there is an image file named 'stones_c.jpg' in the MATLAB working directory.
3. The image is converted to double precision and stored in the variable `Xc1`.
4. The original contaminated image is displayed using the `imshow` function.
5. The image optimization process begins. The following steps are performed:
   - A vector of ones, `a`, is created with 400 rows and 1 column.
   - Two matrices, `D1` and `D2`, are created using the `spdiags` function. These matrices have dimensions 400x300.
   - The value of `d` is set to 2.
   - The equation `Ax + xB = c` is solved using the `lyap` function, where `A` is a 300x300 matrix, `B` is a 300x300 matrix, and `C` is a matrix obtained by negating `Xc1`.
   - The resulting optimized image, `X`, is converted back to uint8 format and stored in the variable `X1`.
6. Finally, the optimized image is displayed using the `imshow` function.

For a more detailed explanation and additional information, refer to the `image_optimization.pdf` file included in this repository.

