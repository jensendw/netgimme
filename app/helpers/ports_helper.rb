module PortsHelper
  # @param [Object] porttype
  # @param [Object] vlans
  def AssignPort(porttype,vlans,nativevlan)
    @unassignedport=Port.where(status: "UNASSIGNED").sample
    if porttype == "access"


    else
      #set the port to trunk mode
      #grab the vlans
    end
    # return @unassignedport
    filepath=">> /tmp/ciscotest"
    Net::SSH.start('adm01', 'root') do |ssh|
      @cmd = "echo \"conf t\" #{filepath}\n
              echo \"int #{@unassignedport.interface}\" #{filepath}\n
              echo \"switchport mode trunk\" #{filepath}\n
              echo \"switchport trunk native vlan #{nativevlan}\" #{filepath}\n
              echo \"switchport trunk allowed vlan #{vlans}\" #{filepath}\n
              "

      @output=ssh.exec @cmd


    end
    #run some magic on unassigned port

  end
end
