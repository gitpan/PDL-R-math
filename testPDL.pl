#!/opt/perl/bin/perl
use PDL;
use lib './blib/arch';
use lib './blib/arch/auto/';
use lib './blib/lib';
use lib './blib/lib';
use lib './blib';
use lib '.';
use PDL::R::math;
use PDL::NamedArgs;
use Data::Dumper;


$a = pdl [.1,.2,.3,.4,.5,.6,.7];
#$$a = sequence(1000000)/1000000;
#$a = sequence(100000)/100000;
#$a = sequence(10000)/10000;
#$a = sequence(1000)/1000;
#$a = sequence(100)/100;
#$a = sequence(10)/10;
$b = 10*$a;

print "dnorm\n"; print dnorm($a, 0, 1, 0) . "\n";
print "pnorm\n"; print pnorm($a, 0, 1, 0, 0) . "\n";
print "qnorm\n"; print qnorm($a, 0, 1, 0, 0) . "\n";
print "rnorm\n"; print rnorm($a, 0, 1) . "\n";

print "dunif\n"; print dunif($a, 0, 1, 0) . "\n";
print "punif\n"; print punif($a, 0, 1, 0, 0) . "\n";
print "qunif\n"; print qunif($a, 0, 1, 0, 0) . "\n";
print "runif\n"; print runif($a, 0, 1) . "\n";

print "dgamma\n"; print dgamma($a, 0.5, 1, 0) . "\n";
print "pgamma\n"; print pgamma($a, 0.5, 1, 0, 0) . "\n";
print "qgamma\n"; print qgamma($a, 0.5, 1, 0, 0) . "\n";
print "rgamma\n"; print rgamma($a, 0.5, 1) . "\n";

print "dbeta\n"; print dbeta($a, 0.5, 1, 0) . "\n";
print "pbeta\n"; print pbeta($a, 0.5, 1, 0, 0) . "\n";
print "qbeta\n"; print qbeta($a, 0.5, 1, 0, 0) . "\n";
print "rbeta\n"; print rbeta($a, 0.5, 1) . "\n";
#pbeta_raw

print "dlnorm\n"; print dlnorm($a, 0, 1, 0) . "\n";
print "plnorm\n"; print plnorm($a, 0, 1, 1, 0) . "\n";
print "qlnorm\n"; print qlnorm($a, 0, 1, 1, 0) . "\n";
print "rlnorm\n"; print rlnorm($a, 0, 1) . "\n";

print "dchisq\n"; print dchisq($a, 2, 0) . "\n";
print "pchisq\n"; print pchisq($a, 2, 1, 0) . "\n";
print "qchisq\n"; print qchisq($a, 2, 1, 0) . "\n";
print "rchisq\n"; print rchisq($a, 2) . "\n";

print "dchisq\n"; print dchisq($a, 2, ncp=>1.2, 0) . "\n";
print "pchisq\n"; print pchisq($a, 2, ncp=>1.2, 1, 0) . "\n";
print "qchisq\n"; print qchisq($a, 2, ncp=>1.2, 1, 0) . "\n";

print "df\n"; print df($a, 2, 1, 0) . "\n";
print "pf\n"; print pf($a, 2, 1, 1, 0) . "\n";
print "qf\n"; print qf($a, 2, 1, 1, 0) . "\n";
print "rf\n"; print rf($a, 2, 1) . "\n";

print "dt\n"; print dt($a, 2, 0) . "\n";
print "pt\n"; print pt($a, 2, 1, 0) . "\n";
print "qt\n"; print qt($a, 2, 1, 0) . "\n";
print "rt\n"; print rt($a, 2) . "\n";

print "dbinom\n"; print dbinom($b, 20, .1, 0) . "\n";
print "pbinom\n"; print pbinom($b, 20, .1, 1, 0) . "\n";
print "qbinom\n"; print qbinom($a, 200, .1, 1, 0) . "\n";
print "rbinom\n"; print rbinom($b, 20, .1) . "\n";

print "dcauchy\n"; print dcauchy($a, 0.5, 1, 0) . "\n";
print "pcauchy\n"; print pcauchy($a, 0.5, 1, 1, 0) . "\n";
print "qcauchy\n"; print qcauchy($a, 0.5, 1, 1, 0) . "\n";
print "rcauchy\n"; print rcauchy($a, 0.5, 1) . "\n";

print "dexp\n"; print dexp($a, .5, 0) . "\n";
print "pexp\n"; print pexp($a, .5, 1, 0) . "\n";
print "qexp\n"; print qexp($a, .5, 1, 0) . "\n";
print "rexp\n"; print rexp($a, .5) . "\n";

print "dgeom\n"; print dgeom($b, .1, 0) . "\n";
print "pgeom\n"; print pgeom($b, .1, 1, 0) . "\n";
print "qgeom\n"; print qgeom($a, .1, 1, 0) . "\n";
print "rgeom\n"; print rgeom($b, .1) . "\n";

print "dhyper\n"; print dhyper($b, 3, 7, 10, 0) . "\n";
print "phyper\n"; print phyper($b, 3, 7, 10, 1, 0) . "\n";
print "qhyper\n"; print qhyper($a, 3, 7, 10, 1, 0) . "\n";
print "rhyper\n"; print rhyper($b, 3, 7, 10) . "\n";

# TODO: Need to do the mu calculations like R
print "dnbinom\n"; print dnbinom($b, 20, .1, log=>0) . "\n";
print "dnbinom\n"; print dnbinom($b, size=>20, prob=>.1, log=>0) . "\n";
print "dnbinom\n"; print dnbinom($b, size=>20, prob=>.1, mu=>2, log=>0) . "\n";
print "dnbinom\n"; print dnbinom($b, size=>20, mu=>180, log=>0) . "\n";
print "pnbinom\n"; print pnbinom($b, size=>20, prob=>.1, lower_tail=>1, log_p=>0) . "\n";
print "qnbinom\n"; print qnbinom($a, size=>200, prob=>.1, lower_tail=>1, log_p=>0) . "\n";
print "rnbinom\n"; print rnbinom($b, size=>20, prob=>.1) . "\n";

# Fix this in the R test script
print "dpois\n"; print dpois($b, $b, 0) . "\n";
print "ppois\n"; print ppois($a, $b, 1, 0) . "\n";
print "qpois\n"; print qpois($a, $b, 1, 0) . "\n";
print "dpois\n"; print dpois($b, 1, 0) . "\n";
print "ppois\n"; print ppois($a, 1, 1, 0) . "\n";
print "qpois\n"; print qpois($a, 1, 1, 0) . "\n";
print "rpois\n"; print rpois($b, 1) . "\n";

print "dweibull\n"; print dweibull($a, 0.5, 1, 0) . "\n";
print "pweibull\n"; print pweibull($a, 0.5, 1, 0, 0) . "\n";
print "qweibull\n"; print qweibull($a, 0.5, 1, 0, 0) . "\n";
print "rweibull\n"; print rweibull($a, 0.5, 1) . "\n";

print "dlogis\n"; print dlogis($a, 0.5, 1, 0) . "\n";
print "plogis\n"; print plogis($a, 0.5, 1, 1, 0) . "\n";
print "qlogis\n"; print qlogis($a, 0.5, 1, 1, 0) . "\n";
print "rlogis\n"; print rlogis($a, 0.5, 1) . "\n";

print "dbeta\n"; print dbeta($a, 0.5, 1, ncp=>1.2, 0) . "\n";
print "pbeta\n"; print pbeta($a, 0.5, 1, ncp=>1.2, 0, 0) . "\n";

print "pf\n"; print pf($a, 2, 1, ncp=>1.2, 1, 0) . "\n";
print "pt\n"; print pt($a, 2, ncp=>1.2, 1, 0) . "\n";

# TODO: Be careful on order here!!!, its (q/p, nmeans, df, nranges, lower.tail, log.p)
print "ptukey\n"; print ptukey($a, 5, 2, 1,  1, 0) . "\n";
print "qtukey\n"; print qtukey($a, 50, 2, 1, 1, 0) . "\n";

print "dwilcox\n"; print dwilcox($b, 3, 7, 0) . "\n";
print "pwilcox\n"; print pwilcox($b, 3, 7, 1, 0) . "\n";
print "qwilcox\n"; print qwilcox($a, 3, 7, 1, 0) . "\n";
print "rwilcox\n"; print rwilcox($b, 3, 7) . "\n";

print "dsignrank\n"; print dsignrank($b, 7, 0) . "\n";
print "psignrank\n"; print psignrank($b, 7, 1, 0) . "\n";
print "qsignrank\n"; print qsignrank($a, 7, 1, 0) . "\n";
print "rsignrank\n"; print rsignrank($b, 7) . "\n";

print "beta\n"; print beta(4,3) . "\n";
print "lbeta\n"; print lbeta(4,3) . "\n";

print "gamma\n"; print gamma($a) . "\n";
print "lgamma\n"; print lgamma($a) . "\n";
print "digamma\n"; print digamma($a) . "\n";
print "trigamma\n"; print trigamma($a) . "\n";
print "tetragamma\n"; print tetragamma($a) . "\n";
print "pentagamma\n"; print pentagamma($a) . "\n";

print "choose\n"; print choose(5,2) . "\n";
print "lchoose\n"; print lchoose(5,2) . "\n";

print "besselI\n"; print besselI($a,2,0) . "\n";
print "besselK\n"; print besselK($a,2,0) . "\n";
print "besselJ\n"; print besselJ($a,2) . "\n";
print "besselY\n"; print besselY($a,2) . "\n";

print "log1p\n"; print log1p($a) . "\n";
