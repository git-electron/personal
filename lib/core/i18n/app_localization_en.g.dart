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
