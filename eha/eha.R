# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Parametric survival models Use phreg And coxreg And aftreg (eha) With (In) R Software
install.packages("eha")
library("eha")
eha = read.csv("https://raw.githubusercontent.com/timbulwidodostp/eha/main/eha/eha.csv",sep = ";", stringsAsFactors = TRUE)
# Estimation Parametric survival models Use phreg And coxreg And aftreg (eha) With (In) R Software
# Parametric Proportional Hazards Regression Use phreg
phreg <- phreg(Surv(enter - 60, exit - 60, event) ~ sex + civ + region, dist = "gompertz", data = eha)
summary(phreg)
# Cox regression Use coxreg
coxreg <- coxreg(Surv(enter - 60, exit - 60, event) ~ sex + civ + region, data = eha)
summary(coxreg)
# Accelerated Failure Time Regression Use aftreg
aftreg <- aftreg(Surv(enter - 60, exit - 60, event) ~ sex + civ + region, data = eha, id = id, dist = "gompertz")
summary(aftreg)
# Parametric survival models Use phreg And coxreg And aftreg (eha) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished