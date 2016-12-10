
my.date.enrich = function (df, date_field) {
  p_load(lubridate)
  # df[, date_field] = as.POSIXlt(df[, date_field])
  df[, "day_of_month"] = day(df[, date_field])
  df[, "month"] = month(df[, date_field])
  df[, "year"] = year(df[, date_field])
  df[, "week_of_year"] = isoweek(df[, date_field])
  df[, "day_in_week"] = weekdays(df[, date_field])
  df[, "days_in_month"] = days_in_month(df[, date_field])
  df[, "quarter"] = quarter(df[, date_field])
  
  
  df
}
