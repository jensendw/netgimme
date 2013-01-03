module PortsHelper
  # @param [Object] porttype
  # @param [Object] vlans
  def AssignPort(porttype,vlans)
    @unassignedport=Port.where(status: "UNASSIGNED").sample
    if porttype == "access"


    else
      #set the port to trunk mode
      #grab the vlans
    end
    # return @unassignedport

    Net::SSH.start('adm01', 'root') do |ssh|
       @cmd = "mkdir /tmp/#{porttype}"
       @output=ssh.exec @cmd
    end
    #run some magic on unassigned port
     return @output
  end
end
