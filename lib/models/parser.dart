/* Base class for all the generic api models */

abstract class Parser<T> {
   Object fromJson(Map<String, dynamic> json);
}
