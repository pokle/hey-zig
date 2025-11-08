const std = @import("std");

pub fn buildGreeting(buffer: []u8, name: []const u8) ![]const u8 {
    return std.fmt.bufPrint(buffer, "Hey mate, I'm {s}!\n", .{name});
}

test "buildGreeting formats a friendly hello message" {
    var temp: [32]u8 = undefined;
    const greeting = try buildGreeting(temp[0..], "Tushfar");
    try std.testing.expectEqualStrings("Hey mate, I'm Tushar!\n", greeting);
}
