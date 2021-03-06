require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe OurCoinsController do

  # This should return the minimal set of attributes required to create a valid
  # OurCoin. As you add validations to OurCoin, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # OurCoinsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all our_coins as @our_coins" do
      our_coin = OurCoin.create! valid_attributes
      get :index, {}, valid_session
      assigns(:our_coins).should eq([our_coin])
    end
  end

  describe "GET show" do
    it "assigns the requested our_coin as @our_coin" do
      our_coin = OurCoin.create! valid_attributes
      get :show, {:id => our_coin.to_param}, valid_session
      assigns(:our_coin).should eq(our_coin)
    end
  end

  describe "GET new" do
    it "assigns a new our_coin as @our_coin" do
      get :new, {}, valid_session
      assigns(:our_coin).should be_a_new(OurCoin)
    end
  end

  describe "GET edit" do
    it "assigns the requested our_coin as @our_coin" do
      our_coin = OurCoin.create! valid_attributes
      get :edit, {:id => our_coin.to_param}, valid_session
      assigns(:our_coin).should eq(our_coin)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new OurCoin" do
        expect {
          post :create, {:our_coin => valid_attributes}, valid_session
        }.to change(OurCoin, :count).by(1)
      end

      it "assigns a newly created our_coin as @our_coin" do
        post :create, {:our_coin => valid_attributes}, valid_session
        assigns(:our_coin).should be_a(OurCoin)
        assigns(:our_coin).should be_persisted
      end

      it "redirects to the created our_coin" do
        post :create, {:our_coin => valid_attributes}, valid_session
        response.should redirect_to(OurCoin.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved our_coin as @our_coin" do
        # Trigger the behavior that occurs when invalid params are submitted
        OurCoin.any_instance.stub(:save).and_return(false)
        post :create, {:our_coin => {}}, valid_session
        assigns(:our_coin).should be_a_new(OurCoin)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        OurCoin.any_instance.stub(:save).and_return(false)
        post :create, {:our_coin => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested our_coin" do
        our_coin = OurCoin.create! valid_attributes
        # Assuming there are no other our_coins in the database, this
        # specifies that the OurCoin created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        OurCoin.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => our_coin.to_param, :our_coin => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested our_coin as @our_coin" do
        our_coin = OurCoin.create! valid_attributes
        put :update, {:id => our_coin.to_param, :our_coin => valid_attributes}, valid_session
        assigns(:our_coin).should eq(our_coin)
      end

      it "redirects to the our_coin" do
        our_coin = OurCoin.create! valid_attributes
        put :update, {:id => our_coin.to_param, :our_coin => valid_attributes}, valid_session
        response.should redirect_to(our_coin)
      end
    end

    describe "with invalid params" do
      it "assigns the our_coin as @our_coin" do
        our_coin = OurCoin.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        OurCoin.any_instance.stub(:save).and_return(false)
        put :update, {:id => our_coin.to_param, :our_coin => {}}, valid_session
        assigns(:our_coin).should eq(our_coin)
      end

      it "re-renders the 'edit' template" do
        our_coin = OurCoin.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        OurCoin.any_instance.stub(:save).and_return(false)
        put :update, {:id => our_coin.to_param, :our_coin => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested our_coin" do
      our_coin = OurCoin.create! valid_attributes
      expect {
        delete :destroy, {:id => our_coin.to_param}, valid_session
      }.to change(OurCoin, :count).by(-1)
    end

    it "redirects to the our_coins list" do
      our_coin = OurCoin.create! valid_attributes
      delete :destroy, {:id => our_coin.to_param}, valid_session
      response.should redirect_to(our_coins_url)
    end
  end

end
