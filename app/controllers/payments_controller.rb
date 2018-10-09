class PaymentsController < ApplicationController
  def create
    token = params[:stripeToken]
    @product = Product.find(params[:product_id])
    @user = current_user
    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        amount:  (@product.price * 100).to_i,
        currency: "usd",
        source: token,
        description: params[:stripeEmail],
        receipt_email: params[:stripeEmail]
      )
          if charge.paid
            Order.create!(
              product_id: @product.id,
              user_id: @user.id,
              total: @product.price.to_i
            )

              UserMailer.payment_received(@user, order).deliver_now
          end
          redirect_to '/payments/success', notice: "Your payment was successful. Thank you for purchasing."

        rescue Stripe::CardError => e
          # The card has been declined
          body = e.json_body
          err = body[:error]
          flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
        end
      end 
    end
