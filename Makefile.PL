# Makefile.PL for a package defined by PP code.

$Rlocation="/home/cavanaug/rpm/BUILD/R-1.3.0";

link("${Rlocation}/src/nmath/standalone/libRmath.a","libRmath.a");

$hash{MYEXTLIB}  = "${Rlocation}/src/nmath/standalone/libRmath.a";
use PDL::Core::Dev;            # Pick up development utilities
use ExtUtils::MakeMaker;

$package = ["rmath.pd",math,PDL::R::math];
%hash = pdlpp_stdargs($package);
#$hash{OBJECT} .= ' additional_Ccode$(OBJ_EXT) ';
$hash{clean}->{FILES} .= ' todelete_Ccode$(OBJ_EXT) ';
$hash{'VERSION_FROM'} = 'rmath.pd';
#$hash{INC} .= " -I${Rlocation}/include -I./include ";
$hash{INC} .= " -I./include ";   # The default Rmath.h file has some issues, need to
                                 # follow up with R group to fix...
$hash{MYEXTLIB}  = "libRmath.a";

WriteMakefile(%hash);

sub MY::postamble { pdlpp_postamble($package); }
