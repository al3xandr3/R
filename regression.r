
# given a single vector, extract slope
# > a.slope(c(2,3,4))
a.slope = function (v_val) {
  v_val = v_val[!is.na(v_val)] # clean the Na values
  dta = data.frame(y=v_val, x=seq(1, length(v_val)))
  mod = lm(y~x, dta)
  return (as.numeric(mod$coefficients[2]))
}

# given a single vector & value, predict
# > a.predict(c(2,3,4), 5)
# > a.predict(c(4,3,2), 5)
a.predict = function (v_val, val) {
  v_val = v_val[!is.na(v_val)] # clean the Na values
  dta = data.frame(y=v_val, x=seq(1,length(v_val)))
  mod = lm(y~x, dta)
  pred = predict.lm(mod, data.frame(x=val), se.fit = TRUE)
  return (as.numeric(pred$fit))
}
