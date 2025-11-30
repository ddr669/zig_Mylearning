pub const std = @import("std");

pub const printf = std.debug.print;

pub fn main() !void {
    // try nescessary to assign a value without a error 
    const sum1: i32 = try add(10, 10);
    const sub1: i32 = try sub(10, 5);
    const dot1: i32 = try dot(10, 2);
    const div1: u32 = try div(10, 2);
    printf("{}, {}, {}, {}", .{sum1, sub1, dot1, div1});
}


pub fn add(x: i32, y: i32) !i32 {
    return x+y;
}
pub fn sub(x: i32, y: i32) !i32 {
    return x-y;
}
pub fn dot(x: i32, y: i32) !i32 {
    return x*y;
}
pub fn div(x: i32, y: i32) !i32 {
    return @as(x/y, i32) catch |panic| {
        _ = panic;
        std.debug.print("DOESNT DIVIDE BY ZERO\n");
    };
}
