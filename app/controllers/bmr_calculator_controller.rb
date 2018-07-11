class BmrCalculatorController < ApplicationController
	def index
	end

	def calculate
		@age = params[:age]
		@height = params[:height]
		@weight = params[:weight]
		@gender = params[:gender]
		if @gender == 'male'
			@bmr = 66.5 + (13.75*@weight.to_i) + (5.003*@height.to_i) - (6.755*@age.to_i)
		elsif @gender == 'female'
			@bmr = 655.1 + (9.563*@weight.to_i) + (1.850*@height.to_i) - (4.676*@age.to_i)
		end
	end
end
