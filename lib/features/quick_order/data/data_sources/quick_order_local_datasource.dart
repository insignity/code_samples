import 'package:injectable/injectable.dart';

import '/entities/entities.dart';

abstract class QuickOrderLocalDataSource {
  Future<List<DishEntity>> getDishes();
}

@LazySingleton(as: QuickOrderLocalDataSource)
class QuickOrderLocalDataSourceImpl implements QuickOrderLocalDataSource {
  @override
  Future<List<DishEntity>> getDishes() async {
    return [
      DishEntity(
        id: 0,
        name: "Фастфуд",
        image:
            'https://www.daysoftheyear.com/cdn-cgi/image/dpr=1%2Cf=auto%2Cfit=cover%2Cheight=650%2Cq=70%2Csharpen=1%2Cwidth=956/wp-content/uploads/national-fast-food-day.jpg',
        dishes: [
          DishEntity(
            id: 1,
            name: "Бургер",
            price: 200,
            image:
                'https://chefrestoran.ru/wp-content/uploads/2018/10/604655519.jpg',
          ),
          DishEntity(
            id: 2,
            name: "Картошка фри",
            price: 100,
            image:
                'https://thecozycook.com/wp-content/uploads/2020/02/Copycat-McDonalds-French-Fries-.jpg',
          ),
        ],
      ),
      DishEntity(
          id: 3,
          name: "Газировки",
          image:
              'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/91iFMPtXsIL.jpg',
          dishes: [
            DishEntity(
              id: 4,
              name: "Кола",
              price: 80,
              image:
                  'https://static.wixstatic.com/media/ba9573_311ef4909f084acbadef7e14c540c70e~mv2.png/v1/fill/w_2500,h_2500,al_c/ba9573_311ef4909f084acbadef7e14c540c70e~mv2.png',
            ),
            DishEntity(
                id: 5,
                price: 70,
                name: "sprite",
                image:
                    'https://xo.kz/wp-content/uploads/2020/04/sprite-1000ml-1.webp'),
          ]),
      DishEntity(
        id: 6,
        name: "мучные",
        dishes: [
          DishEntity(id: 7, name: "Хлеб", price: 10),
          DishEntity(
            id: 8,
            name: "блины",
            price: 50,
            image:
                'https://gotovim-doma.ru/images/recipe/9/93/9931aa183052716a408712b2483596dd_l.jpg',
          ),
        ],
      ),
    ];
  }
}
