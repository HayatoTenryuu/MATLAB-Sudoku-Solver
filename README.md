# MATLAB-Sudoku-Solver

As with my other two versions of this, this is a test to see what I can 
integrate together. Admittedly I'm doing this before finishing the C++/C
version of this script, partially due to technical challenges (Qt causing 
issues with the rest of the computer system...). 

Still, while this is basically running from one problem, wouldn't it be cool
if I could throw MATLAB into the mix in place of/alongside C++/C, C#, and Prolog?
There does already seem to be some direct Prolog-MATLAB work that has been done,
but it seems as poorly maintained as the Prolog-C# stuff. Therefore, it may be 
advantageous to use C++/C as the middle-man between the other languages.

For instance - C# might be the actual user interface, and the overall parent
of the system. It can send things to MATLAB for computation via C++/C, and
it could send things to Prolog for advanced logic operations via C++/C.

Realistically I probably only would need to use three of the four languages 
at a time (MATLAB and C# would each be optional, while C++/C would be the glue
binding one or the other to Prolog). It's also worth noting that MATLAB itself
can export code to C++/C, so in the end, it might also be used mainly as a code
design tool, and the actual code ends up as C++/C and Prolog alone.

For now, I intend to finish the Qt version in my spare time on a different computer
(which ISN'T having any issues), and then I can move on to this version when it is
convenient to do so. This one will not be the priority compared to the Qt version
unless some other issue arises.
