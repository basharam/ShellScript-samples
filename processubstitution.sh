# Script fragment taken from SuSE distribution
# --------------------------------------------------------------#

# To test it, let's make it do something.
while read des what mask iface; do
echo $des $what $mask $iface
done  <  <(route -n)
# ^ ^ First < is redirection, second is process substitution.





# Output:
# Kernel IP routing table
# Destination Gateway Genmask Flags Metric Ref Use Iface
# 127.0.0.0 0.0.0.0 255.0.0.0 U 0 0 0 lo
# --------------------------------------------

while read -a line
do
echo $line | awk -F : '{print $1,         $6 }'

done < <(cat /etc/passwd)
