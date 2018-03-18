#Inspired by https://github.com/kevinlawler/kona/wiki/PE1-Explained

#Another version that is the same length as the version below
(^1000)>>.&{($_%%3)gcd($_%%5)*$_}.sum

#Even shorter version, thanks to advice from @loltimo
map({($_%%3)gcd($_%%5)*$_},^1000).sum

#Shorter version
map(-> $x {($x%%3)gcd($x%%5)*(^1000)[$x]},^1000).sum

#Short version
my @a; for (^1000) { @a.push((+($_ %% 3) gcd +($_ %% 5))*(^1000)[$_]) }; @a.sum

#Readable version
my @array;
for (^1000)
{
  @array.push(
    (+($_ %% 3) gcd +($_ %% 5)) * (^1000)[$_]
    )
}

@array.sum;
