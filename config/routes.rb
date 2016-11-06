Rails.application.routes.draw do

  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square_root/:id", { :controller => "calculations", :action => "square" })

  get("/random/:num_1/:num_2", { :controller => "calculations", :action => "random"})

  get("/payment/:rate/:term/:amount", { :controller => "calculations", :action => "payment"})

end
