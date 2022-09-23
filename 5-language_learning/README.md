1- assets in the asset folder (images and sounds)
2- lib/main.dart the main file to run the app
3- lib/screens/home_page:
        - the app screens code (homepage) ==> rest of pages
        - 'category_item.dart' contain all the items in the home page
        - in homepage call the category component to navigate to each screen
4- lib/screens/:
        - all pages UI is built in lib/compoenets/list_item.dart
        - the model (Item) in lib/models/item.dart was created to take the data for each item
        - in each page a list of the data was created of type (Item)
        - ListItem custom Widget is used in each page in ListView.builder widget
5- lib/screens/phrases_page.dart:
        - custom widget PhrasesItem was created in lib/components/list_item.dart to build the phrases screen UI
        


