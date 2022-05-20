const std = @import("std");

const c = @cImport({
    @cDefine("CIMGUI_DEFINE_ENUMS_AND_STRUCTS", "");
    @cUndef("__cplusplus");
    @cInclude("cimgui.h");
});

pub fn main() anyerror!void {
    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello, Sailor!\n", .{});

    try stdout.print("{s}", .{c.igGetVersion()});
}
