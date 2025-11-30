pub const std = @import("std");
const expect  = std.testing.expect;
const minInt  = std.math.minInt;
const maxInt  = std.math.maxInt;

pub fn main() !void {
    std.debug.print("{}", .{minInt(i32)});
}

test "wraparound addition and subtraction" {

    // assign the largest number (i32) [2147483647]
    const x: i32 = maxInt(i32);

    // on purpose to not overflow but iterate to min_value
    const min_val = x +% 1;

    // Test
    try expect(min_val == minInt(i32));
    
    // do the same backwards
    const max_val = min_val -% 1;

    // Test
    try expect(max_val == maxInt(i32));

}
