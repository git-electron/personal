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
	@override late final TranslationsGeneralRu general = TranslationsGeneralRu._(_root);
}

// Path: home
class TranslationsHomeRu extends TranslationsHomeEn {
	TranslationsHomeRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final TranslationsHomeHeaderRu header = TranslationsHomeHeaderRu._(_root);
	@override late final TranslationsHomeSkillsRu skills = TranslationsHomeSkillsRu._(_root);
	@override late final TranslationsHomeProjectsRu projects = TranslationsHomeProjectsRu._(_root);
	@override late final TranslationsHomeContactRu contact = TranslationsHomeContactRu._(_root);
	@override late final TranslationsHomeAppBarRu app_bar = TranslationsHomeAppBarRu._(_root);
	@override late final TranslationsHomeFooterRu footer = TranslationsHomeFooterRu._(_root);
}

// Path: general
class TranslationsGeneralRu extends TranslationsGeneralEn {
	TranslationsGeneralRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get ok => 'Oк';
	@override String get cancel => 'Отмена';
	@override late final TranslationsGeneralToastsRu toasts = TranslationsGeneralToastsRu._(_root);
}

// Path: home.header
class TranslationsHomeHeaderRu extends TranslationsHomeHeaderEn {
	TranslationsHomeHeaderRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get hello_pt1 => 'Привет, я ';
	@override String get hello_pt2 => 'Егор ✨';
	@override String get introduction_pt1 => 'Мобильный ';
	@override String get introduction_pt2 => 'разработчик';
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
	@override String get description => 'Демонстрация приложений, которые я создал или в которых принимал участие.';
	@override late final TranslationsHomeProjectsOctaRu octa = TranslationsHomeProjectsOctaRu._(_root);
	@override late final TranslationsHomeProjectsIrealtRu irealt = TranslationsHomeProjectsIrealtRu._(_root);
	@override late final TranslationsHomeProjectsSelineRu seline = TranslationsHomeProjectsSelineRu._(_root);
	@override late final TranslationsHomeProjectsDotoRu doto = TranslationsHomeProjectsDotoRu._(_root);
	@override late final TranslationsHomeProjectsEmcdRu emcd = TranslationsHomeProjectsEmcdRu._(_root);
	@override late final TranslationsHomeProjectsFakelabRu fakelab = TranslationsHomeProjectsFakelabRu._(_root);
	@override late final TranslationsHomeProjectsButtonsRu buttons = TranslationsHomeProjectsButtonsRu._(_root);
}

// Path: home.contact
class TranslationsHomeContactRu extends TranslationsHomeContactEn {
	TranslationsHomeContactRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Воплощаю ваши идеи в жизнь';
	@override String get description => 'Есть идея или проект? Я был бы рад услышать о нем. Давайте создадим что-то потрясающее вместе.';
	@override late final TranslationsHomeContactContactsRu contacts = TranslationsHomeContactContactsRu._(_root);
	@override late final TranslationsHomeContactFormRu form = TranslationsHomeContactFormRu._(_root);
}

// Path: home.app_bar
class TranslationsHomeAppBarRu extends TranslationsHomeAppBarEn {
	TranslationsHomeAppBarRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get home => 'Главная';
	@override String get skills => 'Навыки';
	@override String get projects => 'Проекты';
	@override String get contact_me => 'Связаться';
}

// Path: home.footer
class TranslationsHomeFooterRu extends TranslationsHomeFooterEn {
	TranslationsHomeFooterRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Егор Мядзюта';
	@override String get description => 'Дизайн создан в Figma. Разработано на Flutter Web. Размещено с помощью Vercel';
	@override String get button => 'Посмотреть код сайта';
}

// Path: general.toasts
class TranslationsGeneralToastsRu extends TranslationsGeneralToastsEn {
	TranslationsGeneralToastsRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final TranslationsGeneralToastsCopyToastRu copy_toast = TranslationsGeneralToastsCopyToastRu._(_root);
	@override late final TranslationsGeneralToastsSubmitToastRu submit_toast = TranslationsGeneralToastsSubmitToastRu._(_root);
	@override late final TranslationsGeneralToastsErrorToastRu error_toast = TranslationsGeneralToastsErrorToastRu._(_root);
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
	@override String get description => 'Простой и удобный Telegram MiniApp для студии звукозаписи, разработанный на Flutter Web.\nПриложение позволяет ознакомиться с информацией о студии, забронировать посещение или заказать услуги. Вместе с приложением была разработана CRM-панель для администраторов и Telegram бот на Dart.';
	@override String get category => 'Sales & Landing';
}

// Path: home.projects.buttons
class TranslationsHomeProjectsButtonsRu extends TranslationsHomeProjectsButtonsEn {
	TranslationsHomeProjectsButtonsRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get code => 'Код';
	@override String get website => 'Сайт';
	@override String get google_play => 'Google Play';
	@override String get app_store => 'App Store';
}

// Path: home.contact.contacts
class TranslationsHomeContactContactsRu extends TranslationsHomeContactContactsEn {
	TranslationsHomeContactContactsRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get phone => 'Телефон';
	@override String get email => 'Электронная почта';
	@override String get location => 'Локация';
	@override String get telegram => 'Telegram';
	@override late final TranslationsHomeContactContactsAvailabilityRu availability = TranslationsHomeContactContactsAvailabilityRu._(_root);
}

// Path: home.contact.form
class TranslationsHomeContactFormRu extends TranslationsHomeContactFormEn {
	TranslationsHomeContactFormRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final TranslationsHomeContactFormNameRu name = TranslationsHomeContactFormNameRu._(_root);
	@override late final TranslationsHomeContactFormEmailRu email = TranslationsHomeContactFormEmailRu._(_root);
	@override late final TranslationsHomeContactFormMessageRu message = TranslationsHomeContactFormMessageRu._(_root);
	@override late final TranslationsHomeContactFormSubmitButtonRu submit_button = TranslationsHomeContactFormSubmitButtonRu._(_root);
}

// Path: general.toasts.copy_toast
class TranslationsGeneralToastsCopyToastRu extends TranslationsGeneralToastsCopyToastEn {
	TranslationsGeneralToastsCopyToastRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Скопировано';
	@override String get subtitle => 'Текст был скопирован в буфер обмена';
}

// Path: general.toasts.submit_toast
class TranslationsGeneralToastsSubmitToastRu extends TranslationsGeneralToastsSubmitToastEn {
	TranslationsGeneralToastsSubmitToastRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Форма отправлена';
	@override String get subtitle => 'Я свяжусь с Вами как только получу уведомление';
}

// Path: general.toasts.error_toast
class TranslationsGeneralToastsErrorToastRu extends TranslationsGeneralToastsErrorToastEn {
	TranslationsGeneralToastsErrorToastRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ой!';
	@override String get subtitle => 'Произошла неизвестная ошибка';
}

// Path: home.contact.contacts.availability
class TranslationsHomeContactContactsAvailabilityRu extends TranslationsHomeContactContactsAvailabilityEn {
	TranslationsHomeContactContactsAvailabilityRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final TranslationsHomeContactContactsAvailabilityStatusRu status = TranslationsHomeContactContactsAvailabilityStatusRu._(_root);
	@override late final TranslationsHomeContactContactsAvailabilityDescriptionRu description = TranslationsHomeContactContactsAvailabilityDescriptionRu._(_root);
}

// Path: home.contact.form.name
class TranslationsHomeContactFormNameRu extends TranslationsHomeContactFormNameEn {
	TranslationsHomeContactFormNameRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Имя';
	@override String get hint => 'Ваше имя';
	@override String get validator => 'Обязательное поле';
}

// Path: home.contact.form.email
class TranslationsHomeContactFormEmailRu extends TranslationsHomeContactFormEmailEn {
	TranslationsHomeContactFormEmailRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Электронная почта';
	@override String get hint => 'your.email@example.com';
	@override String get validator => 'Введите настоящий адрес';
}

// Path: home.contact.form.message
class TranslationsHomeContactFormMessageRu extends TranslationsHomeContactFormMessageEn {
	TranslationsHomeContactFormMessageRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сообщение';
	@override String get hint => 'Расскажите мне о своем проекте...';
	@override String get validator => 'Обязательное поле';
}

// Path: home.contact.form.submit_button
class TranslationsHomeContactFormSubmitButtonRu extends TranslationsHomeContactFormSubmitButtonEn {
	TranslationsHomeContactFormSubmitButtonRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Отправить';
	@override String get submitted_title => 'Отправлено';
}

// Path: home.contact.contacts.availability.status
class TranslationsHomeContactContactsAvailabilityStatusRu extends TranslationsHomeContactContactsAvailabilityStatusEn {
	TranslationsHomeContactContactsAvailabilityStatusRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get available => 'Доступен для новых проектов';
	@override String get unavailable => 'Пока недоступен для новых проектов';
}

// Path: home.contact.contacts.availability.description
class TranslationsHomeContactContactsAvailabilityDescriptionRu extends TranslationsHomeContactContactsAvailabilityDescriptionEn {
	TranslationsHomeContactContactsAvailabilityDescriptionRu._(TranslationsRu root) : this._root = root, super.internal(root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get available => 'Принимаю новые проекты и предложения о работе.';
	@override String get unavailable => 'Не принимаю новые проекты и предложения о работе.';
}
