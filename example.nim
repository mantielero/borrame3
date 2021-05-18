import crossfilter, jsffi, sugar

let data = @[
  js{ name: "Rusty",  typ: "human", legs: 2 },
  js{ name: "Alex",   typ: "human", legs: 2 },
  js{ name: "Lassie", typ: "dog",   legs: 4 },
  js{ name: "Spot",   typ: "dog",   legs: 4 },
  js{ name: "Polly",  typ: "bird",  legs: 2 },
  js{ name: "Fiona",  typ: "plant", legs: 0 }
] 

let livingThings = crossfilter(data)

#
var n = livingThings.groupAll().reduceCount().value()
let dimensionCategory:Crossfilter = livingThings.dimension(item => item.typ)
let quantityByCategory = dimensionCategory.group().reduceSum( item => item.legs )

let allData = quantityByCategory.all()
echo "There are " & $n & " living things in my house."
for a,b in allData.pairs:
  echo a#, " ", b
  for c in b.keys:
    echo "   ", c
#echo allData #.to(cstring)
