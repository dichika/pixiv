#' @export
getSearch <- function(query){
  # see http://qiita.com/nezuq/items/e4c55bb9c68bf5785e73
  u <- paste0("http://spapi.pixiv.net/iphone/search.php?&s_mode=s_tag&word=(", query, ")&order=date&PHPSESSID=0&p=1")
  res <- read.csv(u, as.is=TRUE, header=FALSE)
  colnames(res) <- c("illust_id","user_id","extension","title","server_no",
                     "user_name","illust_128_url","x1","x2","illust_480mw_url",
                     "x3","x4","illust_entry_date","tag","tool_name",
                     "evaluate_count","evaluate_total","view_count","caption",
                     "page_count",paste0("x", 5:8), "user_disp_id","x9",
                     "r18_flag","x10", "x11", "user_image_url","x12")
  return(res)
}