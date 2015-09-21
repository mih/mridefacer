# mridefacer
From the manpage:
````

Helper to aid de-identification of MRI images (3D or 4D).

A de-face mask image will be created for each input image, by aligning
template mask to the input. Optionally, de-face masks can be applied
to the input images to either replace the original image, or create
modified copies in a specified output directory.

This tool can process single or series of images. In the latter case,
the computed transformation between template image and input image will
be updated incrementally for the next image in the series. This feature
is most suitable for processing images that have been recorded in
temporal succession.

Note that any output images will comform the FSL's radiological image
orientation.


Usage:  mridefacer [OPTIONS] <imagefile> [<imagefile> [...]]


Options:

--apply
  If this flag is set, the defacing is applied to the input images.
  By default, defacing mask images are created only. If --outdir is
  not provided, the actual input images will be replaced by defaced
  versions. In this case, the resulting images will be in FSL's
  standard radiological orientation.

-h, --help
  Print short description, usage summary and option list.

--no-colored
  If set, backport-dsc won't colorize its status and error messages.

--outdir
  If set, output files will be put into this directory. By default,
  output files are placed in the same directory as the respective input
  files.

--verbose
  Enable additional status messages.

--verbose-help
  Print all available help.

--version
  Print version information and exit.


Examples:

mridefacer ADMME
  Deface a single image

Environment:

mridefacer requires FSL and the environment variable FSLDIR needs to be set
accordingly. mridefacer acknowledges MRIDEFACER_DATA_DIR to determine the
location of the required MRI template images.


Report bugs to <michael.hanke@gmail.com>.

````

