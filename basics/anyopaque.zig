pub const std = @import("std");

pub fn main() !void {
    const some_unval: *anyopaque = undefined; // same as void or null
    var other_un: u8 = undefined;          // undefined work's too
    other_un = 5;
    _ = some_unval;
    
}
