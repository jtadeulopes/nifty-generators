  describe :put => :update, :id => '37', :<%= singular_name %> => {:these => 'params'} do
    expects :find, :on => <%= class_name %>, :with => '37', :returns => <%= singular_name %>_proc

    describe "with valid params" do
      expects :update_attributes, :on => <%= singular_name %>_proc, :with => {'these' => 'params'}, :returns => true

      should_assign_to :<%= singular_name %>, :with => <%= singular_name %>_proc
      should_redirect_to {<%= item_path_for_spec('url') %>}
    end

    describe "with invalid params" do
      expects :update_attributes, :on => <%= singular_name %>_proc, :with => {'these' => 'params'}, :returns => false

      should_assign_to :<%= singular_name %>, :with => <%= singular_name %>_proc
      should_render_template 'edit'
    end
  end
