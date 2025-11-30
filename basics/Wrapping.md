# Wrapping Operations


Integer literals have no size limitation, and if any Illegal Behavior occurs,   
the compiler catches it. However, once an integer value is no longer known at compile-time,   
it must have a known size, and is vulnerable to safety-checked Illegal Behavior.  

In zig normal operations like add and sub would cause integer overflow  
beside that has some built-in functions to return a Tuple with the value  
and/or the overflow value.  

like:

*   @addWithOverflow  
*   @subWithOverflow  
*   @mulWithOverflow  
*   @shlWithOverflow  
    
To avoid that behavior came these Wrapping Operations  

* +% ( wrapping addition )  
* -% ( wrapping subtraction )  
* -% ( wrapping negation )  
* \*% ( wrapping multiplication )  

Example in [test wraparound sematics.zig](test_wrapping.zig).  


