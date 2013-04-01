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

describe RatingAgenciesController do

  # This should return the minimal set of attributes required to create a valid
  # RatingAgency. As you add validations to RatingAgency, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RatingAgenciesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all rating_agencies as @rating_agencies" do
      rating_agency = RatingAgency.create! valid_attributes
      get :index, {}, valid_session
      assigns(:rating_agencies).should eq([rating_agency])
    end
  end

  describe "GET show" do
    it "assigns the requested rating_agency as @rating_agency" do
      rating_agency = RatingAgency.create! valid_attributes
      get :show, {:id => rating_agency.to_param}, valid_session
      assigns(:rating_agency).should eq(rating_agency)
    end
  end

  describe "GET new" do
    it "assigns a new rating_agency as @rating_agency" do
      get :new, {}, valid_session
      assigns(:rating_agency).should be_a_new(RatingAgency)
    end
  end

  describe "GET edit" do
    it "assigns the requested rating_agency as @rating_agency" do
      rating_agency = RatingAgency.create! valid_attributes
      get :edit, {:id => rating_agency.to_param}, valid_session
      assigns(:rating_agency).should eq(rating_agency)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new RatingAgency" do
        expect {
          post :create, {:rating_agency => valid_attributes}, valid_session
        }.to change(RatingAgency, :count).by(1)
      end

      it "assigns a newly created rating_agency as @rating_agency" do
        post :create, {:rating_agency => valid_attributes}, valid_session
        assigns(:rating_agency).should be_a(RatingAgency)
        assigns(:rating_agency).should be_persisted
      end

      it "redirects to the created rating_agency" do
        post :create, {:rating_agency => valid_attributes}, valid_session
        response.should redirect_to(RatingAgency.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved rating_agency as @rating_agency" do
        # Trigger the behavior that occurs when invalid params are submitted
        RatingAgency.any_instance.stub(:save).and_return(false)
        post :create, {:rating_agency => {}}, valid_session
        assigns(:rating_agency).should be_a_new(RatingAgency)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        RatingAgency.any_instance.stub(:save).and_return(false)
        post :create, {:rating_agency => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested rating_agency" do
        rating_agency = RatingAgency.create! valid_attributes
        # Assuming there are no other rating_agencies in the database, this
        # specifies that the RatingAgency created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        RatingAgency.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => rating_agency.to_param, :rating_agency => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested rating_agency as @rating_agency" do
        rating_agency = RatingAgency.create! valid_attributes
        put :update, {:id => rating_agency.to_param, :rating_agency => valid_attributes}, valid_session
        assigns(:rating_agency).should eq(rating_agency)
      end

      it "redirects to the rating_agency" do
        rating_agency = RatingAgency.create! valid_attributes
        put :update, {:id => rating_agency.to_param, :rating_agency => valid_attributes}, valid_session
        response.should redirect_to(rating_agency)
      end
    end

    describe "with invalid params" do
      it "assigns the rating_agency as @rating_agency" do
        rating_agency = RatingAgency.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        RatingAgency.any_instance.stub(:save).and_return(false)
        put :update, {:id => rating_agency.to_param, :rating_agency => {}}, valid_session
        assigns(:rating_agency).should eq(rating_agency)
      end

      it "re-renders the 'edit' template" do
        rating_agency = RatingAgency.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        RatingAgency.any_instance.stub(:save).and_return(false)
        put :update, {:id => rating_agency.to_param, :rating_agency => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested rating_agency" do
      rating_agency = RatingAgency.create! valid_attributes
      expect {
        delete :destroy, {:id => rating_agency.to_param}, valid_session
      }.to change(RatingAgency, :count).by(-1)
    end

    it "redirects to the rating_agencies list" do
      rating_agency = RatingAgency.create! valid_attributes
      delete :destroy, {:id => rating_agency.to_param}, valid_session
      response.should redirect_to(rating_agencies_url)
    end
  end

end