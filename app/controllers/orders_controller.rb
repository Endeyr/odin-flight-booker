class OrdersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :paypal_init, only: %i[create_order capture_order]

  def index
  end

  def create_order
    price = '0.01'
    request = PayPalCheckoutSdk::Orders::OrdersCreateRequest::new
    request.request_body({
      :intent => 'CAPTURE',
      :purchase_units =>[
        {
          :amount => {
            :currency_code => 'USD',
            :value => price
          }
        }
      ]
    })

    begin
      response = @client.execute request
      order = Order.new
      order.price = price.to_i
      order.token = response.result.id

      if order.save
        return render :json => { :token => response.result.id }, :status => :ok
      end
    rescue PayPalHttp::HttpError => ioe
      # Handle the error
    end
  end

  def capture_order
    request = PayPalCheckoutSdk::Orders::OrdersCaptureRequest::new params[:order_id]

    begin
      response = @client.execute request
      order = Order.find_by :token => params[:order_id]
      order.paid = response.result.status == 'COMPLETED'

      if order.save
        @order = order.id
        return render :json => {:status => response.result.status}, status => :ok
      end
    rescue PayPalHttp::HttpError => ioe
      # Handle The Error
    end
  end

  private

end
