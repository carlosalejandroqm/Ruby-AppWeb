class ValidatorService
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
		response = HTTParty.post("http://52.240.59.172:8000/signature-recognition/",
			:body => {image: @signature}.to_json,
			:headers => {'Content-Type' => 'application/json'}
		)
	end
end