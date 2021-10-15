$i = 2
while ($i -lt 8) {
$name = 'HotelSpot' + $i
$displayname = 'Hotel Spot ' + $i
New-Mailbox -Name $name -DisplayName $displayname -Room -ResourceCapacity 1 | Set-CalendarProcessing -ScheduleOnlyDuringWorkHours $true -MaximumDurationInMinutes 720
$i = $i + 1
}
