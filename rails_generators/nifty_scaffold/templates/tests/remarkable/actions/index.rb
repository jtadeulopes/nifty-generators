  describe :get => :index do
    expects :find, :on => <%= class_name %>, :with => :all, :returns => <%= singular_name %>_proc

    should_assign_to :<%= plural_name %>, :with => <%= singular_name %>_proc
    should_render_template 'index'
  end
