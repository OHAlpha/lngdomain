class Constraints::DomainConstraint
  
  def initialize(name,domains,forced_domain)
    @name = name
    @domains = [domains].flatten
    @forced_domain = forced_domain
    puts "[#{@name}] forced url: #{@forced_domain}"
  end
  
  def matches?(request)
    if @forced_domain.nil?
      validated = @domains.include? request.env["SERVER_NAME"]
      puts "[#{@name}] validating url: #{request.env["SERVER_NAME"]} = #{validated}"
    else
      validated = @domains.include? @forced_domain
      puts "[#{@name}] validating forced url: @forced_domain = #{validated}"
    end
    validated
  end
  
end
