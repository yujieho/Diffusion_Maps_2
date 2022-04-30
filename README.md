<h1 align="center">Diffusion Maps 2</h1>
<div align="center"><i>Solving the computational complexity problem of Diffusion Maps (DM).</i></div>
<br>

There are some directions to solve this problem:
1. Construct a random walk in a way such that we only need to calculate the SVD of a low rank matrix.
2. Approximate the transition matrix or its eigenvectors and eigenvalues.
3. Process the large data sequentially, construct DM for each small dataset and reveal structures for the large data.

`compare4.ipynb` compares the four existing methods for solving this problem: DM+kNN, ROSELAND, Nystrom method, HKC.

`addpoint3.ipynb` seeks to process the data sequentially. There are three possible ways to solve the case: using Nystrom method, modifying SVD, and combining the DMs we obtained from dach small dataset by taking advantage of the concept of SCMDS (split-and-combine MDS).
