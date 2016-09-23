

Highway = {
  north_bound:{
    cars: {
      porsche:["Bob Smith", "Joe Smith"],
      Audi:["John Doe", "Jane Doe", "Baby Doe"],
      Ferrari:["Jake"]
    },
    trucks: {
      UPS:['Harry'],
      DHL:['Raymond'],
      Semi:['Larry']
    }
  },
  south_bound:{
    cars:{
      bmw:["Jack", "Danny", "Jimmy"],
      Bugatti:['Bill'],
      Jeep:['Sam', 'Fred'],
      Dodge:['Justin', 'Gina'],
      Pontiac:['Amy', 'Jen', 'Jenny']
    },
    trucks:{
      UPS:['Ben'],
      Fedex:['Matt'],
      Semi:['Kevin']

      }
    }
  }



puts Highway[:north_bound][:cars][:porsche][0]
puts Highway[:south_bound][:trucks][:UPS]
puts Highway[:north_bound][:cars][:Audi][2]
puts Highway[:south_bound][:cars][:Jeep]