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

describe ChildrenController do

  # This should return the minimal set of attributes required to create a valid
  # Child. As you add validations to Child, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "full_name" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ChildrenController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all children as @children" do
      child = Child.create! valid_attributes
      get :index, {}, valid_session
      assigns(:children).should eq([child])
    end
  end

  describe "GET show" do
    it "assigns the requested child as @child" do
      child = Child.create! valid_attributes
      get :show, {:id => child.to_param}, valid_session
      assigns(:child).should eq(child)
    end
  end

  describe "GET new" do
    it "assigns a new child as @child" do
      get :new, {}, valid_session
      assigns(:child).should be_a_new(Child)
    end
  end

  describe "GET edit" do
    it "assigns the requested child as @child" do
      child = Child.create! valid_attributes
      get :edit, {:id => child.to_param}, valid_session
      assigns(:child).should eq(child)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Child" do
        expect {
          post :create, {:child => valid_attributes}, valid_session
        }.to change(Child, :count).by(1)
      end

      it "assigns a newly created child as @child" do
        post :create, {:child => valid_attributes}, valid_session
        assigns(:child).should be_a(Child)
        assigns(:child).should be_persisted
      end

      it "redirects to the created child" do
        post :create, {:child => valid_attributes}, valid_session
        response.should redirect_to(Child.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved child as @child" do
        # Trigger the behavior that occurs when invalid params are submitted
        Child.any_instance.stub(:save).and_return(false)
        post :create, {:child => { "full_name" => "invalid value" }}, valid_session
        assigns(:child).should be_a_new(Child)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Child.any_instance.stub(:save).and_return(false)
        post :create, {:child => { "full_name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested child" do
        child = Child.create! valid_attributes
        # Assuming there are no other children in the database, this
        # specifies that the Child created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Child.any_instance.should_receive(:update_attributes).with({ "full_name" => "MyString" })
        put :update, {:id => child.to_param, :child => { "full_name" => "MyString" }}, valid_session
      end

      it "assigns the requested child as @child" do
        child = Child.create! valid_attributes
        put :update, {:id => child.to_param, :child => valid_attributes}, valid_session
        assigns(:child).should eq(child)
      end

      it "redirects to the child" do
        child = Child.create! valid_attributes
        put :update, {:id => child.to_param, :child => valid_attributes}, valid_session
        response.should redirect_to(child)
      end
    end

    describe "with invalid params" do
      it "assigns the child as @child" do
        child = Child.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Child.any_instance.stub(:save).and_return(false)
        put :update, {:id => child.to_param, :child => { "full_name" => "invalid value" }}, valid_session
        assigns(:child).should eq(child)
      end

      it "re-renders the 'edit' template" do
        child = Child.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Child.any_instance.stub(:save).and_return(false)
        put :update, {:id => child.to_param, :child => { "full_name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested child" do
      child = Child.create! valid_attributes
      expect {
        delete :destroy, {:id => child.to_param}, valid_session
      }.to change(Child, :count).by(-1)
    end

    it "redirects to the children list" do
      child = Child.create! valid_attributes
      delete :destroy, {:id => child.to_param}, valid_session
      response.should redirect_to(children_url)
    end
  end

end
