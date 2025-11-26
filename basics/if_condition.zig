pub const std = @import("std");

pub fn main() !void {

    // if statement normal use
    var x: u8 = 0;

    if (x <= 0){
        x += 1;
    }else{
        x -= 1;
    }

    const some_ret: u8 = dhunder_if(x);
    std.debug.print("x value -> {d}\ndhunder_if return -> {d}", .{x, some_ret});
    
}

pub fn dhunder_if(num: u8) u8{
    
    const ret: u8 = if (num == 0) 0 else 1;

    return ret;
}


