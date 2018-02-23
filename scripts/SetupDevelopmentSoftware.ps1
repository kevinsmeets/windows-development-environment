Import-Module "c:\\users\\vagrant\\scripts\\Set-RvShortcutToRunAsAdministrator.psm1"

echo "- Command prompt adjustments ..."
Invoke-Expression "c:\users\vagrant\scripts\taskbarpin.vbs 'c:\windows\system32\cmd.exe'"

echo "- Powershell ..."
Invoke-Expression 'c:\\users\\vagrant\\scripts\\taskbarpin.vbs c:\\windows\\system32\\WindowsPowerShell\\v1.0\\powershell.exe'
Set-RvShortcutToRunAsAdministrator -Path 'C:\Users\vagrant\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Windows PowerShell.lnk' -Verbose

echo "- IIS ..."
Invoke-Expression "c:\users\vagrant\scripts\taskbarpin.vbs 'c:\windows\system32\inetsrv\InetMgr.exe'"

echo "- Notepad++ ..."
#choco install notepadplusplus -y
#Invoke-Expression "c:\users\vagrant\scripts\taskbarpin.vbs 'C:\Program Files\Notepad++\notepad++.exe'"

echo "- SoapUI ..."
choco install soapui -y
Invoke-Expression "c:\users\vagrant\scripts\taskbarpin.vbs 'C:\Program Files\SmartBear\SoapUI-5.4.0\bin\SoapUI-5.4.0.exe'"

echo "- Git ..."
choco install git -y

echo "- OpenSSH ..."
choco install openssh -y

echo "- SQL Server Express + Management studio ..."
choco install sql-server-express -y
choco install sql-server-management-studio -y
Invoke-Expression "c:\users\vagrant\scripts\taskbarpin.vbs 'C:\Program Files (x86)\Microsoft SQL Server\140\Tools\Binn\ManagementStudio\Ssms.exe'"

echo "- PostgreSQL + PGAdmin4 ..."
choco install postgresql -y
choco install pgadmin4 -y
Invoke-Expression "c:\users\vagrant\scripts\taskbarpin.vbs 'C:\Program Files (x86)\pgAdmin 4\v2\runtime\pgAdmin4.exe'"

echo "- Google Chrome ..."
choco install google-chrome-x64 -y
Invoke-Expression "c:\users\vagrant\scripts\taskbarpin.vbs 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe'"

echo "- Firefox ..."
choco install firefox -y
Invoke-Expression "c:\users\vagrant\scripts\taskbarpin.vbs 'C:\Program Files\Mozilla Firefox\firefox.exe'"

echo "- Paint.NET ..."
choco install paint.net -y

# Eclipse and its plugins
choco install eclipse -y
Invoke-Expression "& 'C:\Program Files\Eclipse 4.7.2\eclipse\eclipse.exe' -nosplash -application org.eclipse.equinox.p2.director -repository http://cucumber.github.io/cucumber-eclipse/update-site -installIUs cucumber.eclipse.feature.feature.group"
Invoke-Expression "& 'C:\Program Files\Eclipse 4.7.2\eclipse\eclipse.exe' -nosplash -application org.eclipse.equinox.p2.director -repository https://otto.takari.io/content/sites/m2e.extras/m2eclipse-mavenarchiver/0.17.2/N/LATEST/ -installIUs org.sonatype.m2e.mavenarchiver.feature.feature.group"
Invoke-Expression "& 'C:\Program Files\Eclipse 4.7.2\eclipse\eclipse.exe' -nosplash -application org.eclipse.equinox.p2.director -repository http://eclipse-cs.sourceforge.net/update -installIUs net.sf.eclipsecs.feature.group"
Invoke-Expression "& 'C:\Program Files\Eclipse 4.7.2\eclipse\eclipse.exe' -nosplash -application org.eclipse.equinox.p2.director -repository http://findbugs.cs.umd.edu/eclipse -installIUs edu.umd.cs.findbugs.plugin.eclipse.feature.group"
Invoke-Expression "& 'C:\Program Files\Eclipse 4.7.2\eclipse\eclipse.exe' -nosplash -application org.eclipse.equinox.p2.director -repository http://www.sonarlint.org/eclipse -installIUs org.sonarlint.eclipse.feature.feature.group"
Invoke-Expression "& 'C:\Program Files\Eclipse 4.7.2\eclipse\eclipse.exe' -nosplash -application org.eclipse.equinox.p2.director -repository http://coderplus.com/m2e-update-sites/jaxws-maven-plugin -installIUs com.coderplus.m2e.jaxwscore"
Invoke-Expression "& 'C:\Program Files\Eclipse 4.7.2\eclipse\eclipse.exe' -nosplash -application org.eclipse.equinox.p2.director -repository https://repository.sonatype.org/content/repositories/forge-sites/m2e-extras/0.15.0/N/0.15.0.201206251206 -installIUs org.sonatype.m2e.buildhelper"
Invoke-Expression "& 'C:\Program Files\Eclipse 4.7.2\eclipse\eclipse.exe' -nosplash -application org.eclipse.equinox.p2.director -repository http://www.mihai-nita.net/eclipse -installIUs net.mihai-nita.ansicon.feature.group"
Invoke-Expression "& 'C:\Program Files\Eclipse 4.7.2\eclipse\eclipse.exe' -nosplash -application org.eclipse.equinox.p2.director -repository http://www.genuitec.com/updates/webclipse/oxygen -installIUs com.genuitec.eclipse.theming.feature.feature.group"
# Angular IDE plugin
Invoke-Expression "& 'C:\Program Files\Eclipse 4.7.2\eclipse\eclipse.exe' -nosplash -application org.eclipse.equinox.p2.director -repository https://www.genuitec.com/updates/webclipse/ci -installIUs com.genuitec.eclipse.angularide.feature.feature.group"
# LESS Plugin
Invoke-Expression "& 'C:\Program Files\Eclipse 4.7.2\eclipse\eclipse.exe' -nosplash -application org.eclipse.equinox.p2.director -repository http://www.normalesup.org/~simonet/soft/ow/update -installIUs net.vtst.ow.eclipse.less.feature.feature.group"
# PHP Development Tools
Invoke-Expression "& 'C:\Program Files\Eclipse 4.7.2\eclipse\eclipse.exe' -nosplash -application org.eclipse.equinox.p2.director -repository http://download.eclipse.org/tools/pdt/updates/5.2 -installIUs org.eclipse.php.feature.group"
# PHP Symphony
Invoke-Expression "& 'C:\Program Files\Eclipse 4.7.2\eclipse\eclipse.exe' -nosplash -application org.eclipse.equinox.p2.director -repository http://p2.pdt-extensions.org -installIUs com.dubture.symfony.feature.feature.group"
# PHP restful
Invoke-Expression "& 'C:\Program Files\Eclipse 4.7.2\eclipse\eclipse.exe' -nosplash -application org.eclipse.equinox.p2.director -repository http://p2.pdt-extensions.org -installIUs org.oneclicklabs.php.restful.feature.group"
Invoke-Expression "c:\users\vagrant\scripts\taskbarpin.vbs 'C:\Program Files\Eclipse 4.7.2\eclipse\eclipse.exe'"

choco install maven -y
choco install gow -y
choco install postman -y
choco install intellijidea-community -y

# Fiddler
Invoke-WebRequest -Uri https://telerik-fiddler.s3.amazonaws.com/fiddler/FiddlerSetup.exe -OutFile "c:\\users\\vagrant\\Download\\FiddlerSetup.exe"
Invoke-Expression "c:\\users\\vagrant\\Download\\FiddlerSetup.exe /S"
Invoke-Expression "c:\users\vagrant\scripts\taskbarpin.vbs 'C:\Users\vagrant\AppData\Local\Programs\Fiddler\Fiddler.exe'"

# Visual Studio 2017 and its plugins
choco install winmerge -y
choco install visualstudio2017enterprise -y
choco install visualstudio2017-workload-netweb -y
choco install visualstudio2017-workload-manageddesktop -y
choco install visualstudio2017-workload-universal -y
choco install visualstudio2017-workload-azure -y
Invoke-WebRequest -Uri https://marketplace.visualstudio.com/items?itemName=TechTalkSpecFlowTeam.SpecFlowforVisualStudio2017 -OutFile "c:\\users\\vagrant\\Download\\TechTalkSpecFlowTeam.SpecFlowforVisualStudio2017.vsix"
Invoke-Expression "& 'C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\VSIXInstaller.exe' /q .\Download\\TechTalkSpecFlowTeam.SpecFlowforVisualStudio2017.vsix"
#choco install wixtoolset -y
choco install specflow -y
Invoke-Expression "c:\users\vagrant\scripts\taskbarpin.vbs 'C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\Common7\IDE\devenv.exe'"
Set-RvShortcutToRunAsAdministrator -Path 'C:\Users\vagrant\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Visual Studio 2017.lnk' -Verbose

choco install azure-cli -y
choco install visualstudiocode -y
#Invoke-Expression 'npm i -g azure-functions-core-tools'