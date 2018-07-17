Rails.application.routes.draw do

  # Usually definition
  #
  # get 'rys_management_issue_1', to: 'issues#index'

  # Conditional definition
  #
  # get 'rys_management_issues_2', to: 'issues#index', rys_feature: 'rys_management.issue'

  # Conditional block definiton
  #
  # rys_feature 'rys_management.issue' do
  #   get 'rys_management_issues_3', to: 'issues#index'
  # end

end
