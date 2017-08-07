Rails.configuration.stripe = {
  :publishable_key => 'pk_test_CdxRAGqMRzQHk0eA6DAb1273',
  :secret_key      => 'sk_test_UECNjwN6116EvojV0bdKpH4s'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]