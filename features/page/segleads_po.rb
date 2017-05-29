
class Segleads_Page < SitePrism::Page
  element :sgleads_page, '#page-header h1'
  element :sgmt_button, 'button[data-target^="#segmentation"]'
  element :nsgmt_popup, 'h4[id=segmentationNameModalTitle]'
  element :sgmt_name, 'input[id=segmentation_name]'
  element :sgcreate_button, 'input[value="Criar Segmentação"]'
  element :sglist_opt, 'input[id=segmentation_list_name]'
  element :sgpreview_button, 'button[id=preview-segmentation]'
  element :sgsave_button, 'input[id="save-segmentation"]'
  element :sgsearch_button, 'input[type=search]'
  element :sglist_view, 'div[class="modal-content"] #preview-leads-label'

  element :field_three, 'span[class="select2-chosen"]'
  element :sgsearch_field, 'input[id="s2id_autogen2_search"]'
  element :term_field, 'input[class*=js-input]'


  def manager_segmentation(mgr)
    #This element was not mapped because I could find a static atribute
    find("option[value='lead_property']").select_option
    #This element was not mapped because I could find a static atribute
    find("option[value='field']").select_option
    field_three.click
    sgsearch_field.set ("Cargo")
    sgsearch_field.native.send_keys(:enter)
    #This element was not mapped because I could find a static atribute
    find("option[value='contains']").select_option
    term_field.set mgr
  end
end
