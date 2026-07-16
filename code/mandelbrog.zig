const std = @import("std");

pub fn main() void {
    const width: i32 = 80;
    const height: i32 = 30;
    const max_iter: u32 = 100;
    
    // Character gradient from densest (inside set) to sparsest (outside set)
    const chars = " .:-=+*#%@";

    var y: i32 = 0;
    while (y < height) : (y += 1) {
        // Map y screen coordinate to imaginary plane (-1.2 to 1.2)
        const cy = (@as(f64, @floatFromInt(y)) / @as(f64, @floatFromInt(height))) * 2.4 - 1.2;
        
        var x: i32 = 0;
        while (x < width) : (x += 1) {
            // Map x screen coordinate to real plane (-2.0 to 1.0)
            const cx = (@as(f64, @floatFromInt(x)) / @as(f64, @floatFromInt(width))) * 3.0 - 2.0;

            var zr: f64 = 0.0;
            var zi: f64 = 0.0;
            var iter: u32 = 0;

            // Mandelbrot iteration: z = z^2 + c
            while (zr * zr + zi * zi < 4.0 and iter < max_iter) : (iter += 1) {
                const temp = zr * zr - zi * zi + cx;
                zi = 2.0 * zr * zi + cy;
                zr = temp;
            }

            // Print the corresponding character
            if (iter == max_iter) {
                std.debug.print(" ", .{});
            } else {
                const char_idx = iter % chars.len;
                std.debug.print("{c}", .{chars[char_idx]});
            }
        }
        std.debug.print("\n", .{});
    }
}
