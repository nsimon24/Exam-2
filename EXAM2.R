attach(acs2017_ny)
use_varb <- (AGE >= 25) & (AGE <= 55) & (LABFORCE == 2) & (WKSWORK2 > 4) & (UHRSWORK >= 35)
dat_use <- subset(acs2017_ny,use_varb) # 
detach()
attach(dat_use)
summary(dat_use)

use_varb1 <- (AGE >= 25) & (AGE <= 55) & (LABFORCE == 2) & (WKSWORK2 > 4) & (UHRSWORK >= 35) & (female == 1) 
summary(use_varb1)

dat_use <- subset(acs2017_ny,use_varb)
model_1 <- lm(INCWAGE ~ AGE + female)
summary(model_1)

## using different variables can help to determine whether it has any effect on the 
dat_use <- subset(acs2017_ny,use_varb)
model_2 <- lm(WKSWORK2 ~ AGE + female)
summary(model_2)

dat_use <- subset(acs2017_ny,use_varb)
model_3 <- lm(WKSWORK2 ~ HHINCOME + female)
summary(model_3)

dat_use <- subset(acs2017_ny,use_varb)
model_4 <- lm(WKSWORK2 ~ female)
summary(model_4)

dat_use <- subset(acs2017_ny,use_varb)
model_5 <- lm(female ~ HHINCOME)
summary(model_5)

model_temp1 <- lm(UHRSWORK ~ WKSWORK2 + female + HHINCOME+ LABFORCE)
summary(model_temp1)
plot(model_temp1)
log(model_temp1)

pick_use1 <- (acs2017_ny$AGE >25) & (acs2017_ny$AGE <= 55)
dat_use9 <- subset(acs2017_ny, pick_use1)