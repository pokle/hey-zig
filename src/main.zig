const std = @import("std");
const hey_zig = @import("hey_zig");

pub fn main() !void {
    const gpa = std.heap.page_allocator;
    const args = try std.process.argsAlloc(gpa);
    defer std.process.argsFree(gpa, args);

    const name = if (args.len > 1) args[1] else "Zig friend";

    var buffer: [64]u8 = undefined;
    const greeting = try hey_zig.buildGreeting(buffer[0..], name);
    try std.fs.File.stdout().writeAll(greeting);
}
