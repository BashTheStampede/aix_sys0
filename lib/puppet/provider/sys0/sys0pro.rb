require 'open3'
Puppet::Type.type(:sys0).provide :aix do
  
  desc "manages tunables for AIX sys0"

	confine :operatingsystem => :AIX
  defaultfor :operatingsystem => :AIX
  
  commands :chdev => 'chdev',
           :lsattr => 'lsattr'

  def getsize(attr)
    Open3.popen3("lsattr -El sys0 | grep #{attr}") do |stdin, stdout, stderr|
    	stdout.each do |line|
    		elements=line.split(/\s+/)
    		if elements[0] == attr
    		  return elements[1]
    		end
      end
    end
  end
  
  def maxuproc
    if getsize("maxuproc") == resource[:maxuproc]
      return resource[:maxuproc]
    end
  end

  def maxuproc=(value)
    system('chdev -l sys0 -a maxuproc='"#{resource[:maxuproc]}")
  end
  
  def max_logname
    if getsize("max_logname") == resource[:max_logname]
      return resource[:max_logname]
    end
  end

  def max_logname=(value)
    system('chdev -l sys0 -a max_logname='"#{resource[:max_logname]}")
  end
  
  def ncargs
    if getsize("ncargs") == resource[:ncargs]
      return resource[:ncargs]
    end
  end

  def ncargs=(value)
    system('chdev -l sys0 -a ncargs='"#{resource[:ncargs]}")
  end
  
  def maxbuf
    if getsize("maxbuf") == resource[:maxbuf]
      return resource[:maxbuf]
    end
  end
  
  def maxbuf=(value)
    system('chdev -l sys0 -a maxbuf='"#{resource[:maxbuf]}")
  end
  
  def maxpout
    if getsize("maxpout") == resource[:maxpout]
      return resource[:maxpout]
    end
  end
  
  def maxpout=(value)
    system('chdev -l sys0 -a maxpout='"#{resource[:maxpout]}")
  end
  
  def minpout
    if getsize("minpout") == resource[:minbuf]
      return resource[:minpout]
    end
  end
  
  def minpout=(value)
    system('chdev -l sys0 -a minpout='"#{resource[:minpout]}")
  end

  def iostat
    if getsize("iostat") == resource[:iostat]
      return resource[:iostat]
    end
  end
  
  def iostat=(value)
    system('chdev -l sys0 -a iostat='"#{resource[:minpout]}")
  end
end


