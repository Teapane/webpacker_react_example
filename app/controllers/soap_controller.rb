require 'savon'
class SoapController < ApplicationController

  def soap
    client = Savon.client(wsdl: 'http://service.example.com?wsdl')
    response = client.call(:find_user, message: { id: 42 })
    response.body
  end
end
