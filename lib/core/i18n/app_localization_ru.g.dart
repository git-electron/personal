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
	@override late final TranslationsHomeSkillsRu skills = TranslationsHomeSkillsRu._(_root);
	@override late final TranslationsHomeProjectsRu projects = TranslationsHomeProjectsRu._(_root);
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
	@override String get contact_button => 'Связаться со мной';
	@override String get projects_button => 'Смотреть проекты';
}

// Path: home.skills
class TranslationsHomeSkillsRu extends TranslationsHomeSkillsEn {
	TranslationsHomeSkillsRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Создаю цифровой опыт';
	@override String get description => 'Я специализируюсь на создании потрясающего UI и разработке высококачественных приложений, выделяющихся на фоне остальных.';
	@override late final TranslationsHomeSkillsFlutterAndDartRu flutter_and_dart = TranslationsHomeSkillsFlutterAndDartRu._(_root);
	@override late final TranslationsHomeSkillsCrossPlatformRu cross_platform = TranslationsHomeSkillsCrossPlatformRu._(_root);
	@override late final TranslationsHomeSkillsPerformanceRu performance = TranslationsHomeSkillsPerformanceRu._(_root);
	@override late final TranslationsHomeSkillsUiUxDesignRu ui_ux_design = TranslationsHomeSkillsUiUxDesignRu._(_root);
	@override late final TranslationsHomeSkillsStateManagementRu state_management = TranslationsHomeSkillsStateManagementRu._(_root);
	@override late final TranslationsHomeSkillsCiCdRu ci_cd = TranslationsHomeSkillsCiCdRu._(_root);
	@override late final TranslationsHomeSkillsTechStackRu tech_stack = TranslationsHomeSkillsTechStackRu._(_root);
}

// Path: home.projects
class TranslationsHomeProjectsRu extends TranslationsHomeProjectsEn {
	TranslationsHomeProjectsRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Мои проекты';
	@override String get description => 'Демонстрация приложений, которые я создал или в которых принимал участие';
	@override late final TranslationsHomeProjectsOctaRu octa = TranslationsHomeProjectsOctaRu._(_root);
	@override late final TranslationsHomeProjectsIrealtRu irealt = TranslationsHomeProjectsIrealtRu._(_root);
	@override late final TranslationsHomeProjectsSelineRu seline = TranslationsHomeProjectsSelineRu._(_root);
	@override late final TranslationsHomeProjectsDotoRu doto = TranslationsHomeProjectsDotoRu._(_root);
	@override late final TranslationsHomeProjectsEmcdRu emcd = TranslationsHomeProjectsEmcdRu._(_root);
	@override late final TranslationsHomeProjectsFakelabRu fakelab = TranslationsHomeProjectsFakelabRu._(_root);
}

// Path: home.skills.flutter_and_dart
class TranslationsHomeSkillsFlutterAndDartRu extends TranslationsHomeSkillsFlutterAndDartEn {
	TranslationsHomeSkillsFlutterAndDartRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Flutter & Dart';
	@override String get description => 'Эксперт в области создания кросс-платформенных приложений на фреймворке Flutter framework и языке программирования Dart.';
}

// Path: home.skills.cross_platform
class TranslationsHomeSkillsCrossPlatformRu extends TranslationsHomeSkillsCrossPlatformEn {
	TranslationsHomeSkillsCrossPlatformRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Кросс-платформенность';
	@override String get description => 'Единая кодовая база для iOS и Android, обеспечивающая согласованность работы UX на разных платформах.';
}

// Path: home.skills.performance
class TranslationsHomeSkillsPerformanceRu extends TranslationsHomeSkillsPerformanceEn {
	TranslationsHomeSkillsPerformanceRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Производительность';
	@override String get description => 'Оптимизированные приложения с плавными анимациями, быстрым временем загрузки и эффективным использованием ресурсов.';
}

// Path: home.skills.ui_ux_design
class TranslationsHomeSkillsUiUxDesignRu extends TranslationsHomeSkillsUiUxDesignEn {
	TranslationsHomeSkillsUiUxDesignRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'UI/UX дизайн';
	@override String get description => 'Реализую красивые, интуитивно понятные интерфейсы в соответствии с Material Design и гайдлайнами Cupertino.';
}

// Path: home.skills.state_management
class TranslationsHomeSkillsStateManagementRu extends TranslationsHomeSkillsStateManagementEn {
	TranslationsHomeSkillsStateManagementRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Управление состоянием';
	@override String get description => 'Владею BLoC, Provider, Riverpod, и MobX для создания масштабируемой архитектуры приложений.';
}

// Path: home.skills.ci_cd
class TranslationsHomeSkillsCiCdRu extends TranslationsHomeSkillsCiCdEn {
	TranslationsHomeSkillsCiCdRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'CI/CD';
	@override String get description => 'Авто-тестирование и пайплайны для надежных релизов приложений.';
}

// Path: home.skills.tech_stack
class TranslationsHomeSkillsTechStackRu extends TranslationsHomeSkillsTechStackEn {
	TranslationsHomeSkillsTechStackRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Технический стек';
	@override String get and_more => 'и не только...';
}

// Path: home.projects.octa
class TranslationsHomeProjectsOctaRu extends TranslationsHomeProjectsOctaEn {
	TranslationsHomeProjectsOctaRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Octa Trading Lessons';
	@override String get description => 'Приложение Octa Trading Lessons — это бесплатный обучающий инструмент для всех, кто хочет разобраться в различных аспектах трейдинга и инвестирования.\nВ этом приложении вы будете учиться непосредственно у опытных трейдеров и сразу же применять свои знания на практике во время торговли.';
	@override String get category => 'Education';
}

// Path: home.projects.irealt
class TranslationsHomeProjectsIrealtRu extends TranslationsHomeProjectsIrealtEn {
	TranslationsHomeProjectsIrealtRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'iRealt';
	@override String get description => 'Простой и удобный сервис для профессиональных и начинающих риэлторов.\nНедвижимость напрямую от застройщика с выплатой высокой комиссии в день сделки.';
	@override String get category => 'Real Estate';
}

// Path: home.projects.seline
class TranslationsHomeProjectsSelineRu extends TranslationsHomeProjectsSelineEn {
	TranslationsHomeProjectsSelineRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seline Clinic Dubai';
	@override String get description => 'Приложение Seline Aesthetic Clinic — ваш удобный помощник при бронировании процедур, начислении баллов лояльности и просмотре информации о приеме на одной безопасной платформе.\nЭто приложение, разработанное для улучшения ваших эстетических ощущений, позволяет вам сосредоточиться на том, что действительно важно: чувствовать себя уверенно и отдохнувшим.';
	@override String get category => 'Health & Care';
}

// Path: home.projects.doto
class TranslationsHomeProjectsDotoRu extends TranslationsHomeProjectsDotoEn {
	TranslationsHomeProjectsDotoRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Doto';
	@override String get description => 'Doto — это простое в использовании мобильное торговое приложение, которое помогает вам торговать разумнее и принимать решения, основанные на данных.\nПросто установите приложение и начните торговать акциями, индексами и многим другим — лучшие мировые инструменты у вас под рукой.';
	@override String get category => 'Trading';
}

// Path: home.projects.emcd
class TranslationsHomeProjectsEmcdRu extends TranslationsHomeProjectsEmcdEn {
	TranslationsHomeProjectsEmcdRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'EMCD';
	@override String get description => 'EMCD — один из крупнейших майнинг-пулов в Европе с общим хэшрейтом более 20 EH/c и множеством других функций.\nЭто крипто-кошелек, p2p-биржа, майнинг-пул, крипто-кредиты, coinhold и многое другое.';
	@override String get category => 'Finance & Crypto';
}

// Path: home.projects.fakelab
class TranslationsHomeProjectsFakelabRu extends TranslationsHomeProjectsFakelabEn {
	TranslationsHomeProjectsFakelabRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fakelab Records MiniApp';
	@override String get description => 'Простой и удобный Telegram MiniApp для студии звукозаписи, разработанный на Flutter Web.\nПриложение позволяет ознакомиться с информацией о студии, забронировать посещение или заказать услуги. Вместе с приложением была разработана CRM-панель для администраторов.';
	@override String get category => 'Sales & Landing';
}
