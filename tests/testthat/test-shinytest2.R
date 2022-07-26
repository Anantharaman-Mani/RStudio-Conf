library(shinytest2)

test_that("{shinytest2} recording: test1", {
  app <- AppDriver$new(name = "test1", height = 606, width = 871, variant= platform_variant())
  withr::defer({app$stop()})
  app$expect_values()
  app$set_inputs(api = "Keytruda")
  app$click("submit")
  app$expect_values(output = "plt")
})


test_that("{shinytest2} recording: learn_shinytest2", {
  app <- AppDriver$new(name = "learn_shinytest2", height = 648, width = 1011, variant= platform_variant())
  withr::defer({app$stop()})
  app$set_inputs(end_date = "2018-05-18", api = "Keytruda")
  app$click("submit")
  app$expect_values()
  app$expect_values(output = "tble")
})


# test_that("{shinytest2} recording: test2", {
#   app <- AppDriver$new(name = "test2", height = 648, width = 1011, variant= platform_variant())
#   withr::defer({app$stop()})
#   app$set_inputs(end_date = "2018-05-18", api = "Keytruda")
#   app$click("submit")
#   app$wait_for_idle()
#   app$expect_values()
#   app$expect_values(output = "tble")
# })
# 
# test_that("{shinytest2} recording: learn_shinytest2_test", {
#   app <- AppDriver$new(name = "learn_shinytest2_test", height = 810, width = 742)
#   app$set_inputs(api = "tyl")
#   app$set_inputs(api = "tyle")
#   app$set_inputs(api = "tyleno")
#   app$set_inputs(api = "tylenol")
#   app$click("submit")
#   app$expect_values()
# })
# 
# 
# test_that("{shinytest2} recording: learn_shinytest2_test2", {
#   app <- AppDriver$new(name = "learn_shinytest2_test2", height = 833, width = 629)
#   app$set_inputs(api = "")
#   app$set_inputs(api = "advil")
#   app$click("submit")
#   app$expect_values()
#   app$expect_values()
# })


test_that("{shinytest2} recording: RStudio-Conf", {
  app <- AppDriver$new(name = "RStudio-Conf", height = 904, width = 609)
  app$expect_values()
})
