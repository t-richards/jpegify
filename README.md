# jpegify

Command-line utility

# What is this?

This is a program designed to help you make the correct choice when selecting a
JPEG quality level. You give it a non-JPEG image (like a PNG, or BMP) and it
will brute-force convert the image using 100 different JPEG quality selections.

When it is done converting, the program presents you with a table of the
conversion results, along with a helpful "percent filesize reduction" column
to assist you in making your quality choice.

If you're on GNU/Linux, the program will open your default file browser via
`xdg-open` and navigate to the directory with the `.jpg` image results. You can
extract your desired image from this directory, or you can forget it exists and
the whole directory will be deleted when the program finishes.

# What do I need to use this?

 - Ruby, with bundler.

# How do I use it?

```bash
# Install dependencies
$ bundle install

# Run the program
$ ./jpegify foo.png
Converting dat JPEG, please wait...
| ================================== | Time: 00:00:01
+----------+----------+--------------------+
| Quality  | Filesize | Filesize reduction |
+----------+----------+--------------------+
| ORIGINAL | 5.06 MB  |                    |
| 100      | 2.62 MB  | 48.28%             |
| 99       | 1.93 MB  | 61.83%             |
| 98       | 1.57 MB  | 69.01%             |
| 97       | 1.39 MB  | 72.55%             |
| 96       | 1.15 MB  | 77.23%             |
| 95       | 975 KB   | 81.18%             |
| 94       | 835 KB   | 83.89%             |
| 93       | 724 KB   | 86.03%             |
| 92       | 627 KB   | 87.90%             |
| 91       | 590 KB   | 88.62%             |
| 90       | 547 KB   | 89.44%             |
| 89       | 403 KB   | 92.22%             |
| 88       | 386 KB   | 92.54%             |
| 87       | 354 KB   | 93.17%             |
| 86       | 341 KB   | 93.42%             |
| 85       | 316 KB   | 93.89%             |
| 84       | 305 KB   | 94.11%             |
| 83       | 294 KB   | 94.34%             |
| 82       | 275 KB   | 94.69%             |
| 81       | 265 KB   | 94.89%             |
| 80       | 257 KB   | 95.05%             |
+----------+----------+--------------------+
Press any key to continue...
```

# How do I pick the right quality?

That, my friend, is your own dang problem! :grin:

# License

[MIT.][license]

[license]: LICENSE
