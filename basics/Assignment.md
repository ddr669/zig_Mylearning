# Assignment

Value assignment has the following syntax:  

`(const|var) identifier[:Type] = @as(Type, value);`

+ const indicates immutable constant value.  
+ var indicates mutable variable.  
+ :Type is a type notation and may be omitted if the data can be inferred.  

<code>

const constant: i32 = 5; // signed 32 bits integer
var variable: u32   = 5; // unsigned 32 bits integer
const a: i32 = undefined;
const b: u32 = undefined;

<code>

---

Example: [struct_.zig](struct_.zig)

