require 'pathname'

Puppet::Type.newtype(:sys0) do
	
  desc "Manages the tunables for AIX sys0"
	
  newparam(:name) do
    isnamevar
  end
	
  newproperty(:maxuproc) do
    desc "specify the setting for max user processes"
  end
  
  newproperty(:max_logname) do
  	desc "specify the max size of login names"
  end
  
  newproperty(:ncargs) do
  	desc "specify the number of arguments on the command line"
  end
  
  newproperty(:maxbuf) do
  	desc "number of 4kb pages in the block I/O buffer cache"
  end
  
  newproperty(:maxpout) do
  	desc "Specifies the maximum pending number of I/O to a file"
  end
  
  newproperty(:minpout) do 
  	desc "Specifies the when programs have reached maxpout can write to a file"
  end

  newproperty(:iostat) do 
	desc "Continuously maintain DISK I/O history"
  end
end

