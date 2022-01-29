part of widget_library;

// ignore: non_constant_identifier_names
PreferredSizeWidget app_bar(BuildContext context, String appBarTitle,
    String currentPage, String popType) {
  return AppBar(
    // automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Visibility(
      visible: currentPage != 'home',
      child: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.deepPurple,
        ),
        color: Colors.black87,
        onPressed: () {
          if (popType == 'pop') {
            Navigator.pop(context);
          } else {
            Navigator.popUntil(context, ModalRoute.withName(popType));
          }
        },
      ),
    ),

    centerTitle: true,
    title: Text(
      appBarTitle,
      style: const TextStyle(
        color: Colors.black87,
      ),
    ),
    // actions: [
    //   (globalUser == null && currentPage != 'privacy'
    //       ? IconButton(
    //           onPressed: () {
    //             Navigator.pushNamed(context, '/privacy');
    //           },
    //           icon: Icon(
    //             Icons.privacy_tip_outlined,
    //             color: Colors.amber,
    //           ),
    //         )
    //       : SizedBox(
    //           width: 0,
    //         )),
    //   (globalUser != null
    //       ? IconButton(
    //           onPressed: () {
    //             Navigator.pushNamed(context, '/account');
    //           },
    //           icon: Icon(
    //             Icons.account_circle,
    //             color: Colors.amber,
    //           ),
    //         )
    //       : IconButton(
    //           onPressed: () {
    //             Navigator.pushNamed(context, '/login');
    //           },
    //           icon: Icon(
    //             Icons.login_rounded,
    //             color: Colors.amber,
    //           ),
    //         )),
    // ],
  );
}
