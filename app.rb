# app.rb

require "sinatra"
require "sinatra/reloader"

get("/") do
  redirect("/add") # Redirect to the add_form page
end

get("/add") do
  erb(:add_form) # The form for addition
end

post("/wizard_add") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  @result = @first_num + @second_num
  erb(:add_result)
end

get("/subtract") do
  erb(:sub_form) # The form for subtraction
end

post("/wizard_subtract") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  erb(:sub_result)
end

get("/multiply") do
  erb(:multiplication_form) # The form for multiplication
end

post("/wizard_multiply") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  erb(:mult_result) # The multiplication result page
end

get("/divide") do
  erb(:div_form) # The form for division
end

post("/wizard_divide") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f

  erb(:div_result) # The division result page
end
