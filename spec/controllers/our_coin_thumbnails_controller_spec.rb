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

describe OurCoinThumbnailsController do

  # This should return the minimal set of attributes required to create a valid
  # OurCoinThumbnail. As you add validations to OurCoinThumbnail, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # OurCoinThumbnailsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all our_coin_thumbnails as @our_coin_thumbnails" do
      our_coin_thumbnail = OurCoinThumbnail.create! valid_attributes
      get :index, {}, valid_session
      assigns(:our_coin_thumbnails).should eq([our_coin_thumbnail])
    end
  end

  describe "GET show" do
    it "assigns the requested our_coin_thumbnail as @our_coin_thumbnail" do
      our_coin_thumbnail = OurCoinThumbnail.create! valid_attributes
      get :show, {:id => our_coin_thumbnail.to_param}, valid_session
      assigns(:our_coin_thumbnail).should eq(our_coin_thumbnail)
    end
  end

  describe "GET new" do
    it "assigns a new our_coin_thumbnail as @our_coin_thumbnail" do
      get :new, {}, valid_session
      assigns(:our_coin_thumbnail).should be_a_new(OurCoinThumbnail)
    end
  end

  describe "GET edit" do
    it "assigns the requested our_coin_thumbnail as @our_coin_thumbnail" do
      our_coin_thumbnail = OurCoinThumbnail.create! valid_attributes
      get :edit, {:id => our_coin_thumbnail.to_param}, valid_session
      assigns(:our_coin_thumbnail).should eq(our_coin_thumbnail)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new OurCoinThumbnail" do
        expect {
          post :create, {:our_coin_thumbnail => valid_attributes}, valid_session
        }.to change(OurCoinThumbnail, :count).by(1)
      end

      it "assigns a newly created our_coin_thumbnail as @our_coin_thumbnail" do
        post :create, {:our_coin_thumbnail => valid_attributes}, valid_session
        assigns(:our_coin_thumbnail).should be_a(OurCoinThumbnail)
        assigns(:our_coin_thumbnail).should be_persisted
      end

      it "redirects to the created our_coin_thumbnail" do
        post :create, {:our_coin_thumbnail => valid_attributes}, valid_session
        response.should redirect_to(OurCoinThumbnail.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved our_coin_thumbnail as @our_coin_thumbnail" do
        # Trigger the behavior that occurs when invalid params are submitted
        OurCoinThumbnail.any_instance.stub(:save).and_return(false)
        post :create, {:our_coin_thumbnail => {}}, valid_session
        assigns(:our_coin_thumbnail).should be_a_new(OurCoinThumbnail)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        OurCoinThumbnail.any_instance.stub(:save).and_return(false)
        post :create, {:our_coin_thumbnail => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested our_coin_thumbnail" do
        our_coin_thumbnail = OurCoinThumbnail.create! valid_attributes
        # Assuming there are no other our_coin_thumbnails in the database, this
        # specifies that the OurCoinThumbnail created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        OurCoinThumbnail.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => our_coin_thumbnail.to_param, :our_coin_thumbnail => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested our_coin_thumbnail as @our_coin_thumbnail" do
        our_coin_thumbnail = OurCoinThumbnail.create! valid_attributes
        put :update, {:id => our_coin_thumbnail.to_param, :our_coin_thumbnail => valid_attributes}, valid_session
        assigns(:our_coin_thumbnail).should eq(our_coin_thumbnail)
      end

      it "redirects to the our_coin_thumbnail" do
        our_coin_thumbnail = OurCoinThumbnail.create! valid_attributes
        put :update, {:id => our_coin_thumbnail.to_param, :our_coin_thumbnail => valid_attributes}, valid_session
        response.should redirect_to(our_coin_thumbnail)
      end
    end

    describe "with invalid params" do
      it "assigns the our_coin_thumbnail as @our_coin_thumbnail" do
        our_coin_thumbnail = OurCoinThumbnail.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        OurCoinThumbnail.any_instance.stub(:save).and_return(false)
        put :update, {:id => our_coin_thumbnail.to_param, :our_coin_thumbnail => {}}, valid_session
        assigns(:our_coin_thumbnail).should eq(our_coin_thumbnail)
      end

      it "re-renders the 'edit' template" do
        our_coin_thumbnail = OurCoinThumbnail.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        OurCoinThumbnail.any_instance.stub(:save).and_return(false)
        put :update, {:id => our_coin_thumbnail.to_param, :our_coin_thumbnail => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested our_coin_thumbnail" do
      our_coin_thumbnail = OurCoinThumbnail.create! valid_attributes
      expect {
        delete :destroy, {:id => our_coin_thumbnail.to_param}, valid_session
      }.to change(OurCoinThumbnail, :count).by(-1)
    end

    it "redirects to the our_coin_thumbnails list" do
      our_coin_thumbnail = OurCoinThumbnail.create! valid_attributes
      delete :destroy, {:id => our_coin_thumbnail.to_param}, valid_session
      response.should redirect_to(our_coin_thumbnails_url)
    end
  end

end