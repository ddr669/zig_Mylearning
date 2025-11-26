pub const std = @import("std");
pub const printf = std.debug.print;

pub fn main() !void{
    // TODO pass pointer to a string and slice
    
    _ = try sliceThro();

}

pub fn sliceThro() !void 
{
    for (0..10) |index|{
        printf("{d}", .{index});
    }

}
