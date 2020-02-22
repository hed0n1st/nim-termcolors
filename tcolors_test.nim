
import src/termcolors
# simple
echo "This is a test".fgGreen()
echo "This is a test".fgBlack().bgYellow()
echo "This is a test".fgBlack(mode = "r").bgYellow()
echo "This is a test".fgRed().bgCyan(bright = true)
echo "This is a test".fgCyan(mode = "bu").bgMagenta()
echo "Simple bold".bold()
echo "Simple underline".underline()
echo "Simple b/u/r".bold().underline().reversed()

# construc
echo "This is a test".fgcolor(
  red,
  bright = true,
  mode = "bu"
).bgColor(white)

var testfg256: string
for idColor in 0..256:
  if idColor mod 2 == 0:
    testfg256 &= fg256($idColor, idColor, mode = "b") & " "
  elif idColor mod 3 == 0:
    testfg256 &= fg256($idColor, idColor, mode = "u") & " "
  elif idColor mod 5 == 0:
    testfg256 &= fg256($idColor, idColor, mode = "r") & " "
  else:
    testfg256 &= fg256($idColor, idColor) & " "

echo testfg256

var testbg256: string
for idColor in 0..256:
  testbg256 &= bg256(":::", idColor) & " "

echo testbg256
