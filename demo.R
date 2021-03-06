# author: Tiffany Timbers
# date: 2020-01-15

"This script prints out docopt args.
Usage: demo.R <arg1> --arg2=<arg2> [--arg3=<arg3>] [<arg4>]

Options:
<arg>             Takes any value (this is a required positional argument)
--arg2=<arg2>     Takes any value (this is a required option)
[--arg3=<arg3>]   Takes any value (this is an optional option)
[<arg4>]   Takes any value (this is an optional positional argument)
" -> doc

library(docopt)
opt <- docopt(doc)

main <- function(var1, var2, var3 = Null, var4 = Null){
  print(opt)
  print(typeof(opt))
  print(var4)
}

main(opt$arg1,opt$arg2,opt$arg3,opt$arg4)


