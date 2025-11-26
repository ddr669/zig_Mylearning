const std = @import("std");

pub fn main() !void {

    const user = User{
        .power=9001,
        .name="Goku",
    };

    std.debug.print("{s}'s power is {d}\n", .{user.name, user.power});

}  


pub const User =
struct {              // struct 
    power: u64,       // double 64 bits
    name: []const u8, // array with char size item
};
