class ApplicationHelper::Button::AbGroupEdit < ApplicationHelper::Button::Basic
  def disabled?
    @error_message = _('Selected Custom Button Group cannot be edited') if unassigned_button_group?
    @error_message.present?
  end

  private

  def unassigned_button_group?
    @view_context.x_node.split('-')[1] == 'ub'
  end
end
