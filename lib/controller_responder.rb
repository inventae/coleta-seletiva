module ControllerResponder
  def to_html
    res = resource.kind_of?(Array) ? resource.last : resource
    if get?
      render
    elsif !res.valid?
      render action: ( post? ? :new : :edit )
    else
      redirect_to resource, notice: I18n.t("flash.actions.#{controller.action_name}.notice", :resource_name => I18n.t("resource.#{res.class.name.downcase}") )
    end
  end
end