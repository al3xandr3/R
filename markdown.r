
# converts a data frame into markdown table syntax
a.table_md = function(df) {
  return (cat(paste(names(df), collapse=" | ")
          , paste(rep("---",ncol(df)), collapse=' | ')
          , paste(apply(df, 1, function(X) paste(X, collapse=" | ")), sep = "\n")
          , sep = "\n") )
}
