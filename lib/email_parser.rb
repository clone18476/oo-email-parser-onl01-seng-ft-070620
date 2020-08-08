# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :email    #email accessor instance method defined as 'email'
  def  initialize(emails)  #defining initialize to must run email as argumnt
    @email = emails    #assign email accessor method to an instance variable 
  end

  def parse   #defining instance method with 'parse'
    email_array = @email.split(/[, ]/).uniq  
    
        #sets a constant 'email_array' to the @email instance variable, splitting every unique instance into its own string, and then putting it in an array
    
    email_array.reject! {|element| element.empty?}   
    
        #  .reject! Deletes every element of self for which the block evaluates to true, if no changes were made returns nil.
    
    email_array
  end

end