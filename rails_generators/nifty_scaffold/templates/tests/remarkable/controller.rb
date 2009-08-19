require File.dirname(__FILE__) + '/../spec_helper'
 
describe <%= plural_class_name %>Controller do
  mock_models :<%= singular_name %>
  
  <%= controller_methods 'tests/remarkable/actions' %>
end
