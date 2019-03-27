#name: PCinfo
#script url: https://github.com/JesseVroon/Powershell
#description: This script shows information about your computer.
#version: 1.0.0
#author: Jesse Vroon
#author url: https://github.com/JesseVroon

CLS # Cleared your screen
$date = Get-Date
Write-Host "--------------------- PC Info ----------------------"
Write-Host "Current Date and Time : " $date
Write-Host "Computername          : " $env:COMPUTERNAME
Write-Host "Username              : " $env:USERNAME
Write-Host "OS                    : " $env:OS
Write-Host "--------------------- Disk -------------------------"
$disk = Get-Disk -Number 0
Write-Host " Disk 0 Type          : "$disk.FriendlyName
Write-Host " Disk 0 Size in bytes : "$disk.AllocatedSize
Write-Host "--------------------- Wifi -------------------------"
$wifi = Get-NetAdapter | Where-Object {$_.Name -eq "Wi-Fi"}
Write-Host "Interface Description : "$wifi.InterfaceDescription
Write-Host "Interface Link-Speed  : "$wifi.LinkSpeed
Write-Host "Interface Status      : "$wifi.Status
Write-Host "--------------------- Geheugen ---------------------"
$geheugen = Get-CimInstance win32_physicalmemory
Write-Host "Manufacturer          : "$geheugen.Manufacturer
Write-Host "Banklabel             : "$geheugen.Banklabel
Write-Host "Configuredclockspeed  : "$geheugen.Configuredclockspeed
Write-Host "Devicelocator         : "$geheugen.Devicelocator
Write-Host "Capacity in bytes     : "$geheugen.Capacity
Write-Host "Serialnumber          : "$geheugen.Serialnumber
Write-Host "--------------------- Graphics ---------------------"
$videocontroller = Get-Ciminstance win32_videoController
Write-Host "Description           : "$videocontroller.Description
Write-Host "videoproccesor        : "$videocontroller.VideoProcessor
Write-Host "Video RAM             : "$videocontroller.AdapterRAM
Write-Host "Driver version        : "$videocontroller.DriverVersion
Write-Host "--------------------- CPU --------------------------"
$cpu = Get-CimInstance win32_Processor
Write-Host "DeviceID              : "$cpu.DeviceID
Write-Host "Name                  : "$cpu.Name
Write-Host "Caption               : "$cpu.Caption
Write-Host "MaxClockSpeed         : "$cpu.MaxClockSpeed
Write-host "SocketDesignation     : "$cpu.SocketDesignation
Write-Host "Manufacturer          : "$cpu.Manufacturer
Write-Host "--------------------- Motherboard ------------------"
$motherboard = Get-CimInstance win32_MotherboardDevice
Write-Host "DeviceID              : "$motherboard.DeviceID
Write-Host "PrimaryBusType        : "$motherboard.PrimaryBusType
Write-Host "SecondaryBusType      : "$motherboard.SecondaryBusType
Write-Host "Availability          : "$motherboard.Availability
Write-Host "Status                : "$motherboard.Status
