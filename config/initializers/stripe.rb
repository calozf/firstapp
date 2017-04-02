if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_2rzzuBNNTKDdTEriy4NKedI5',
    :secret_key => 'sk_test_ekmnkEu8OUDruD2hOMLiT6M3'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]