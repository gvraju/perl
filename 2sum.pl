#!/usr/bin/perl

# program to check the sum of 2 elements in an array equals to the given number

@nums=( 3,5,1,-3,-5,-10,10,25 );

print "\n array elements before sorting @nums \n";

@nums = sort { $a <=> $b }  @nums;

print "\n array elements after sorting @nums \n";

my $i, $j;
my $n = $#nums;

print "\nsize of \@nums = $n ";

my $elem;
#print "\nEnter the target number to check array(i,j) : ";
#$elem=<stdin>;
my $count;

$elem=$nums[0];
#while ( $elem != $nums[$n] ) {
while ( $elem != 50 ) {

$count=0;
$i = 0;
$j = $n;

while ( $i < $j ) {
	$count++;
	if ( ($nums[$i] + $nums[$j]) > $elem ) {
		$j--;
	}
	elsif ( ($nums[$i] + $nums[$j]) < $elem ) {
		$i++;
	}
	else {
    		print "\nElement $elem matches with sum of A[$i],A[$j] ($nums[$i],$nums[$j]) \n";
		print "Steps taken : $count (n = $n+1)\n";
		last;
        }

}
if ($i >= $j) {
print "\nElement $elem NOT FOUND -- ";
print "Steps taken : $count (n = $n+1)\n";
}
$elem++;
}
print "\n";
exit 0;

