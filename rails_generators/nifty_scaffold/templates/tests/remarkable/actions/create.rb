  describe :post => :create, :<%= singular_name %> => {:these => 'params'} do
    expects :new, :on => <%= class_name %>, :with => {'these' => 'params'}, :returns => <%= singular_name %>_proc

    describe "with valid params" do
      expects :save, :on => <%= singular_name %>_proc, :returns => true

      should_assign_to :<%= singular_name %>, :with => <%= singular_name %>_proc
      should_redirect_to {<%= item_path_for_spec('url') %>}
    end

    describe "with invalid params" do
      expects :save, :on => <%= singular_name %>_proc, :returns => false

      should_assign_to :<%= singular_name %>, :with => <%= singular_name %>_proc
      should_render_template 'new'
    end
  end
