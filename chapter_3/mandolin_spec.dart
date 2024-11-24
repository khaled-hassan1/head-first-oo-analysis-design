// import './enum_2/builder_2.dart';
// import './enum_2/style.dart';
// import './enum_2/type_2.dart';
// import './enum_2/wood_2.dart';
// import './instrument_spec.dart';

// class MandolinSpec extends InstrumentSpec {
//   final MandolinStyle _style;

//   MandolinSpec(
//     this._style,
//     InstrumentBuilder builder,
//     InstrumentType type,
//     InstrumentWood backWood,
//     InstrumentWood frontWood,
//     String model,
//   ) : super(
//           builder,
//           type,
//           backWood,
//           frontWood,
//           model,
//           null,
//         );

//   MandolinStyle get getStyle => _style;

//   @override
//   bool matches(InstrumentSpec otherSpec) {
//     // Ensure the otherSpec is a MandolinSpec
//     if (otherSpec is! MandolinSpec) {
//       return false;
//     }
//     if (!super.matches(otherSpec)) {
//       return false;
//     }
//     if (otherSpec.getStyle.displayName != _style.displayName &&
//         otherSpec.getStyle.displayName.isNotEmpty) {
//       return false;
//     }
//     return true;
//   }
// }
