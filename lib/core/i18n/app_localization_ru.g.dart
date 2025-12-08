///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'app_localization.g.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';

// Path: <root>
class TranslationsRu extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsRu _root = this; // ignore: unused_field

	@override 
	TranslationsRu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRu(meta: meta ?? this.$meta);

	// Translations
	@override String get title => 'Егор Мядзюта';
	@override late final TranslationsHomeRu home = TranslationsHomeRu._(_root);
}

// Path: home
class TranslationsHomeRu extends TranslationsHomeEn {
	TranslationsHomeRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final TranslationsHomeHeaderRu header = TranslationsHomeHeaderRu._(_root);
}

// Path: home.header
class TranslationsHomeHeaderRu extends TranslationsHomeHeaderEn {
	TranslationsHomeHeaderRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get hello_pt1 => 'Привет, я ';
	@override String get hello_pt2 => 'Егор ✨';
	@override String get introduction_pt1 => 'Разработчик ';
	@override String get introduction_pt2 => 'приложений';
	@override String get description => 'Создаю <b>высокопроизводительные кроссплатформенные<b> мобильные приложения на <b>Flutter<b>. Превращаю идеи в элегантные, простые приложения для iOS и Android.';
}
