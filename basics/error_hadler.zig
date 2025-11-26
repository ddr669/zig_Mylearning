pub const std = @import("std");

pub fn something(num: u8) !u8 {
    return num; 
}

pub fn main() !void {
    const content = try something(9);
    // throw error in runtime and pass

    
    _ = something(content) catch |err| {
        std.debug.print("{[]u8} Error\n", .{err});
    }; // threat the except as a block in runtime

    
}


