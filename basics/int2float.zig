pub const std = @import("std");

pub const printf = std.debug.print;

const _ = @setFloatMode(.Optimized); // float fastMath


pub fn main() !void
{   
    const inte: i32 = 5; 
    const res: f32 = @floatFromInt(inte); // better to use in function scope
                                          
    
    const f_as: f32 = @as(f32, inte);     // doesnt work in scope function

    printf("int(i32) {} -> float16(f32) = {} -> float32 as = {}\n", .{inte, res, f_as});
}


