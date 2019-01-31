import './serializer.dart';

class BusinessesRepo {
  static List<Business> loadBusiness(){
    const allBusinesses = <Business>[
      Business(
        id: 1,
        title: 'Welton St Cafe',
        image: 'assets/welton_street_cafe.jpg',
        address: 'Five Points, Denver',
        description: 'Soul food, Carribean Food'

      ),
      Business(
        id: 2,
        title: 'Pandora on the Hill',
        image: 'assets/pandora.jpg',
        address: 'Capitol Hill, Denver',
        description: 'We truly are locals who love locals locally.'
      ),
      Business(
        id: 3,
        title: 'Sterre',
        image: 'assets/sterre.jpg',
        address: 'Stapleton, Denver',
        description: 'Inspired by the independent boutiques of Europe and the travels of founder Danielle van Ede, Sterre offers a rotating selection of quality items for fashion-forward women.'
      ),
      Business(
        id: 4,
        title: 'Olive & Finch',
        image: 'assets/Olive-Finch_0.jpg',
        address: 'Cherry Creek, Denver',
        description: 'At Olive & Finch our focus is scratch-made, delicious food delectably made to order.'
      ),
      Business(
        id: 5,
        title: 'Azucar',
        image: 'assets/azucar.jpg',
        address: 'Lakewood, Denver',
        description: 'As a local family-owned business we’re not just your favorite bakery, we’re your neighbors.'
      ),
      Business(
        id: 6,
        title: "Proto's Pizza",
        image: 'assets/protos.jpg',
        address: 'Lohi, Denver',
        description: 'The Pizza experience had been elevated to table service, linen napkins, and delicious wines with a full bar to make it a true dining experience.'
      ),
    ];
    return allBusinesses;
  }
}

// business [[
//   'title': 'Welton St Cafe',
//   'image': 'assets/welton_street_cafe.jpg',
//   'description': 'Soul food, Carribean Food'
// ]]

// business [[
//   'title': 'Pandora on the Hill',
//   'image': 'assets/storefront.jpg',
//   'description': 'We truly are locals who love locals locally.'
// ]]

// business [[
//   'title': 'Sterre',
//   'image': 'assets/Sterre_Logo.jpg',
//   'description': 'Inspired by the independent boutiques of Europe and the travels of founder Danielle van Ede, Sterre offers a rotating selection of quality items for fashion-forward women.'
// ]]

// business [[
//   'title': 'Olive & Finch',
//   'image': 'assets/Olive-Finch_0.jpg',
//   'description': 'At Olive & Finch our focus is scratch-made, delicious food delectably made to order.'
// ]]

// business [[
//   'title': 'Azucar',
//   'image': 'assets/azucar.jpg',
//   'description': 'As a local family-owned business we’re not just your favorite bakery, we’re your neighbors.'
// ]]


// business [[
//   'title': "Proto's Pizza",
//   'image': 'assets/protos.jpg',
//   'description': 'The Pizza experience had been elevated to table service, linen napkins, and delicious wines with a full bar to make it a true dining experience.'
// ]]