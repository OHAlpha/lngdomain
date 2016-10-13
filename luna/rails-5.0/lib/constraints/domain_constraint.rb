class Constraints::DomainConstraint
  
  def initialize(domains)
    @domains = [domains].flatten
  end
  
  def matches?(request)
    @domains.include? request.env["SERVER_NAME"]
  end
  
end
