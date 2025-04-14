// JScript Example: Reading Environment Variables and Displaying a Message

var shell = new ActiveXObject("WScript.Shell");
var env = shell.Environment("PROCESS");
var username = env("USERNAME");

WScript.Echo("Hello, " + username + "!");

var fso = new ActiveXObject("Scripting.FileSystemObject");
var file = fso.CreateTextFile("C:\\temp\\jscript_info.txt", true);
file.WriteLine("JScript Environment Info: User - " + username);
file.Close();

WScript.Echo("File created: C:\\temp\\jscript_info.txt");

try {
 var version = shell.RegRead("HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\ProductName");
 WScript.Echo("Windows Version: " + version);
} catch (e) {
 WScript.Echo("Error reading registry: " + e.message);
}

