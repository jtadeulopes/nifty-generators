  describe :get => :edit, :id => '37' do
    expects :find, :on => <%= class_name %>, :with => '37', :returns => <%= singular_name %>_proc

    should_assign_to :<%= singular_name %>, :with => <%= singular_name %>_proc
    should_render_template 'edit'
  end
