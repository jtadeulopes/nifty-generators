  describe :get => :new do
    expects :new, :on => <%= class_name %>, :returns => <%= singular_name %>_proc

    should_assign_to :<%= singular_name %>
    should_render_template 'new'
  end
