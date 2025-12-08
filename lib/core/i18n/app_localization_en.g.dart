///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'app_localization.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  );

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations

	/// en: 'Egor Myadzuta'
	String get title => 'Egor Myadzuta';

	late final TranslationsHomeEn home = TranslationsHomeEn.internal(_root);
}

// Path: home
class TranslationsHomeEn {
	TranslationsHomeEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsHomeHeaderEn header = TranslationsHomeHeaderEn.internal(_root);
	late final TranslationsHomeSkillsEn skills = TranslationsHomeSkillsEn.internal(_root);
}

// Path: home.header
class TranslationsHomeHeaderEn {
	TranslationsHomeHeaderEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Hey, I'm '
	String get hello_pt1 => 'Hey, I\'m ';

	/// en: 'Egor ✨'
	String get hello_pt2 => 'Egor ✨';

	/// en: 'A '
	String get introduction_pt1 => 'A ';

	/// en: 'Software Developer'
	String get introduction_pt2 => 'Software Developer';

	/// en: 'Crafting <b>high-performance, cross-platform<b> mobile applications with <b>Flutter<b>. Transforming ideas into elegant, user-friendly apps for iOS and Android.'
	String get description => 'Crafting <b>high-performance, cross-platform<b> mobile applications with <b>Flutter<b>. Transforming ideas into elegant, user-friendly apps for iOS and Android.';

	/// en: 'Contact me'
	String get contact_button => 'Contact me';

	/// en: 'View projects'
	String get projects_button => 'View projects';
}

// Path: home.skills
class TranslationsHomeSkillsEn {
	TranslationsHomeSkillsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Building digital experiences'
	String get title => 'Building digital experiences';

	/// en: 'I specialize in creating stunning user interfaces and developing high-quality applications that stand out.'
	String get description => 'I specialize in creating stunning user interfaces and developing high-quality applications that stand out.';

	late final TranslationsHomeSkillsFlutterAndDartEn flutter_and_dart = TranslationsHomeSkillsFlutterAndDartEn.internal(_root);
	late final TranslationsHomeSkillsCrossPlatformEn cross_platform = TranslationsHomeSkillsCrossPlatformEn.internal(_root);
	late final TranslationsHomeSkillsPerformanceEn performance = TranslationsHomeSkillsPerformanceEn.internal(_root);
	late final TranslationsHomeSkillsUiUxDesignEn ui_ux_design = TranslationsHomeSkillsUiUxDesignEn.internal(_root);
	late final TranslationsHomeSkillsStateManagementEn state_management = TranslationsHomeSkillsStateManagementEn.internal(_root);
	late final TranslationsHomeSkillsCiCdEn ci_cd = TranslationsHomeSkillsCiCdEn.internal(_root);
	late final TranslationsHomeSkillsTechStackEn tech_stack = TranslationsHomeSkillsTechStackEn.internal(_root);
}

// Path: home.skills.flutter_and_dart
class TranslationsHomeSkillsFlutterAndDartEn {
	TranslationsHomeSkillsFlutterAndDartEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Flutter & Dart'
	String get title => 'Flutter & Dart';

	/// en: 'Expert in building cross-platform apps with Flutter framework and Dart programming language.'
	String get description => 'Expert in building cross-platform apps with Flutter framework and Dart programming language.';
}

// Path: home.skills.cross_platform
class TranslationsHomeSkillsCrossPlatformEn {
	TranslationsHomeSkillsCrossPlatformEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Cross-Platform'
	String get title => 'Cross-Platform';

	/// en: 'Single codebase for iOS and Android, ensuring consistent user experience across platforms.'
	String get description => 'Single codebase for iOS and Android, ensuring consistent user experience across platforms.';
}

// Path: home.skills.performance
class TranslationsHomeSkillsPerformanceEn {
	TranslationsHomeSkillsPerformanceEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Performance'
	String get title => 'Performance';

	/// en: 'Optimized apps with smooth animations, fast load times, and efficient resource usage.'
	String get description => 'Optimized apps with smooth animations, fast load times, and efficient resource usage.';
}

// Path: home.skills.ui_ux_design
class TranslationsHomeSkillsUiUxDesignEn {
	TranslationsHomeSkillsUiUxDesignEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'UI/UX Design'
	String get title => 'UI/UX Design';

	/// en: 'Implementing beautiful, intuitive interfaces following Material Design and Cupertino guidelines.'
	String get description => 'Implementing beautiful, intuitive interfaces following Material Design and Cupertino guidelines.';
}

// Path: home.skills.state_management
class TranslationsHomeSkillsStateManagementEn {
	TranslationsHomeSkillsStateManagementEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'State Management'
	String get title => 'State Management';

	/// en: 'Proficient in BLoC, Provider, Riverpod, and MobX for scalable app architecture.'
	String get description => 'Proficient in BLoC, Provider, Riverpod, and MobX for scalable app architecture.';
}

// Path: home.skills.ci_cd
class TranslationsHomeSkillsCiCdEn {
	TranslationsHomeSkillsCiCdEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'CI/CD'
	String get title => 'CI/CD';

	/// en: 'Automated testing and deployment pipelines for reliable app releases.'
	String get description => 'Automated testing and deployment pipelines for reliable app releases.';
}

// Path: home.skills.tech_stack
class TranslationsHomeSkillsTechStackEn {
	TranslationsHomeSkillsTechStackEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Tech stack'
	String get title => 'Tech stack';
}
