a<-sequence(7)/10
#a<-sequence(1000000)/1000000
#a<-sequence(100000)/100000
#a<-sequence(10000)/10000
#a<-sequence(1000)/1000
#a<-sequence(100)/100
#a<-sequence(10)/10
b<-a*10

dnorm(a,mean=0,sd=1,log=0)
pnorm(a,mean=0,sd=1,lower.tail=0,log.p=0)
qnorm(a,mean=0,sd=1,lower.tail=0,log.p=0)
rnorm(a,mean=0,sd=1)

dunif(a,min=0,max=1,log=0)
punif(a,min=0,max=1,lower.tail=0,log.p=0)
qunif(a,min=0,max=1,lower.tail=0,log.p=0)
runif(a,min=0,max=1)

dgamma(a,shape=0.5,scale=1,log=0)
pgamma(a,shape=0.5,scale=1,lower.tail=0,log.p=0)
qgamma(a,shape=0.5,scale=1,lower.tail=0,log.p=0)
rgamma(a,shape=0.5,scale=1)

dbeta(a,shape1=0.5,shape2=1,log=0)
pbeta(a,shape1=0.5,shape2=1,lower.tail=0,log.p=0)
qbeta(a,shape1=0.5,shape2=1,lower.tail=0,log.p=0)
rbeta(a,shape1=0.5,shape2=1)

dlnorm(a,meanlog=0,sdlog=1,log=0)
plnorm(a,meanlog=0,sdlog=1,lower.tail=1,log.p=0)
qlnorm(a,meanlog=0,sdlog=1,lower.tail=1,log.p=0)
rlnorm(a,meanlog=0,sdlog=1)

dchisq(a,df=2,log=0)
pchisq(a,df=2,lower.tail=1,log.p=0)
qchisq(a,df=2,lower.tail=1,log.p=0)
rchisq(a,df=2)

dchisq(a,df=2,ncp=1.2,log=0)
pchisq(a,df=2,ncp=1.2,lower.tail=1,log.p=0)
#BROKEN??? qchisq(a,df=2,ncp=1.2,lower.tail=1,log.p=0)

df(a,df1=2,df2=1,log=0)
pf(a,df1=2,df2=1,lower.tail=1,log.p=0)
qf(a,df1=2,df2=1,lower.tail=1,log.p=0)
rf(a,df1=2,df2=1)

dt(a,df=2,log=0)
pt(a,df=2,lower.tail=1,log.p=0)
qt(a,df=2,lower.tail=1,log.p=0)
rt(a,df=2)

dbinom(b,size=20,prob=.1,log=0)
pbinom(b,size=20,prob=.1,lower.tail=1,log.p=0)
qbinom(a,size=200,prob=.1,lower.tail=1,log.p=0)
rbinom(b,size=20,prob=.1)

dcauchy(a,location=0.5,scale=1,log=0)
pcauchy(a,location=0.5,scale=1,lower.tail=1,log.p=0)
qcauchy(a,location=0.5,scale=1,lower.tail=1,log.p=0)
dcauchy(a,location=0.5,scale=1)

dexp(a,rate=2,log=0)
pexp(a,rate=2,lower.tail=1,log.p=0)
qexp(a,rate=2,lower.tail=1,log.p=0)
rexp(a,rate=2)

dgeom(b,prob=.1,log=0)
pgeom(b,prob=.1,lower.tail=1,log.p=0)
qgeom(a,prob=.1,lower.tail=1,log.p=0)
dgeom(b,prob=.1)

dhyper(b,m=3,n=7,k=10,log=0)
phyper(b,m=3,n=7,k=10,lower.tail=1,log.p=0)
qhyper(a,m=3,n=7,k=10,lower.tail=1,log.p=0)
rhyper(b,m=3,n=7,k=10)

dnbinom(b,size=20,prob=.1,log=0)
pnbinom(b,size=20,prob=.1,lower.tail=1,log.p=0)
qnbinom(a,size=200,prob=.1,lower.tail=1,log.p=0)
rnbinom(b,size=20,prob=.10)

dpois(b,lambda=1,log=0)
ppois(a,lambda=1,lower.tail=1,log.p=0)
qpois(a,lambda=1,lower.tail=1,log.p=0)
rpois(b,lambda=1)

dweibull(a,shape=0.5,scale=1,log=0)
pweibull(a,shape=0.5,scale=1,lower.tail=0,log.p=0)
qweibull(a,shape=0.5,scale=1,lower.tail=0,log.p=0)
rweibull(a,shape=0.5,scale=1)

dlogis(a,location=0.5,scale=1,log=0)
plogis(a,location=0.5,scale=1,lower.tail=1,log.p=0)
qlogis(a,location=0.5,scale=1,lower.tail=1,log.p=0)
rlogis(a,location=0.5,scale=1)

dbeta(a,shape1=0.5,shape2=1,ncp=1.2,log=0)
pbeta(a,shape1=0.5,shape2=1,ncp=1.2,lower.tail=0,log.p=0)

pf(a,df1=2,df2=1,ncp=1.2,lower.tail=1,log.p=0)

pt(a,df=2,ncp=1.2,lower.tail=1,log.p=0)

ptukey(a,nmeans=5,df=2,nranges=1,lower.tail=1,log.p=0)
qtukey(a,nmeans=50,df=2,nranges=1,lower.tail=1,log.p=0)

dwilcox(b,m=3,n=7,log=0)
pwilcox(b,m=3,n=7,lower.tail=1,log.p=0)
qwilcox(a,m=3,n=7,lower.tail=1,log.p=0)
rwilcox(b,m=3,n=7)

dsignrank(b,n=7,log=0)
psignrank(b,n=7,lower.tail=1,log.p=0)
qsignrank(a,n=7,lower.tail=1,log.p=0)
rsignrank(b,n=7)

beta(4,3)
lbeta(4,3)
gamma(a)
lgamma(a)
digamma(a)
trigamma(a)
tetragamma(a)
pentagamma(a)

choose(5,2)
lchoose(5,2)

besselI(a,2,expon.scaled=0)
besselK(a,2,expon.scaled=0)
besselJ(a,2)
besselY(a,2)
