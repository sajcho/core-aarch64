#
# Set CPU and CPUFREQ use mainline kernel
#
# The main Linux kernel for tegra186.
# Running six core to maximum cpufreq crashes the system.
#

msg "Setting CPU on NVIDIA Jetson TX2..."

if cat /sys/firmware/devicetree/base/model | egrep -q "NVIDIA Jetson TX2 Developer Kit"; then
		# Setting freq A57 cores
		msg "CPU A57 cores up to 1.9 GHz..."
		/bin/echo "1920000" > /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq
		/bin/echo "1920000" > /sys/devices/system/cpu/cpufreq/policy3/scaling_max_freq
		/bin/echo "1920000" > /sys/devices/system/cpu/cpufreq/policy4/scaling_max_freq
		/bin/echo "1920000" > /sys/devices/system/cpu/cpufreq/policy5/scaling_max_freq
		# Disable Denver cores
		msg "CPU Denver cores disable..."
		/bin/echo "0" > /sys/devices/system/cpu/cpu1/online
		/bin/echo "0" > /sys/devices/system/cpu/cpu2/online
	else
		msg "No NVIDIA Jetson TX2 found"
fi
