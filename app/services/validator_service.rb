class ValidatorService
	require 'base64'
	include HTTParty

  attr_reader :signature

  def initialize(signature)
    @signature = signature
	end

	def call
    validate_signature
  end

	private

	def validate_signature
		# We need convert the bytes to base 64
		base_64_image = Base64.encode64(@signature.each_byte{|byte| byte})

		response = HTTParty.post("http://52.240.59.172:8000/signature-recognition/",
			:body => {image: base_64_image}.to_json,
			:headers => {'Content-Type' => 'application/json'}
		)

		# return true unless zero
		return !response.parsed_response["class_label"].zero?
	end
end