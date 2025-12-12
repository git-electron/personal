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
	late final TranslationsGeneralEn general = TranslationsGeneralEn.internal(_root);
}

// Path: home
class TranslationsHomeEn {
	TranslationsHomeEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsHomeHeaderEn header = TranslationsHomeHeaderEn.internal(_root);
	late final TranslationsHomeSkillsEn skills = TranslationsHomeSkillsEn.internal(_root);
	late final TranslationsHomeProjectsEn projects = TranslationsHomeProjectsEn.internal(_root);
	late final TranslationsHomeContactEn contact = TranslationsHomeContactEn.internal(_root);
	late final TranslationsHomeAppBarEn app_bar = TranslationsHomeAppBarEn.internal(_root);
}

// Path: general
class TranslationsGeneralEn {
	TranslationsGeneralEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Ok'
	String get ok => 'Ok';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	late final TranslationsGeneralToastsEn toasts = TranslationsGeneralToastsEn.internal(_root);
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

// Path: home.projects
class TranslationsHomeProjectsEn {
	TranslationsHomeProjectsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'My projects'
	String get title => 'My projects';

	/// en: 'A showcase of mobile applications I've built or participated in.'
	String get description => 'A showcase of mobile applications I\'ve built or participated in.';

	late final TranslationsHomeProjectsOctaEn octa = TranslationsHomeProjectsOctaEn.internal(_root);
	late final TranslationsHomeProjectsIrealtEn irealt = TranslationsHomeProjectsIrealtEn.internal(_root);
	late final TranslationsHomeProjectsSelineEn seline = TranslationsHomeProjectsSelineEn.internal(_root);
	late final TranslationsHomeProjectsDotoEn doto = TranslationsHomeProjectsDotoEn.internal(_root);
	late final TranslationsHomeProjectsEmcdEn emcd = TranslationsHomeProjectsEmcdEn.internal(_root);
	late final TranslationsHomeProjectsFakelabEn fakelab = TranslationsHomeProjectsFakelabEn.internal(_root);
	late final TranslationsHomeProjectsButtonsEn buttons = TranslationsHomeProjectsButtonsEn.internal(_root);
}

// Path: home.contact
class TranslationsHomeContactEn {
	TranslationsHomeContactEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Bringing your ideas to life'
	String get title => 'Bringing your ideas to life';

	/// en: 'Have a project in mind? I'd love to hear about it. Let's create something amazing together.'
	String get description => 'Have a project in mind? I\'d love to hear about it. Let\'s create something amazing together.';

	late final TranslationsHomeContactContactsEn contacts = TranslationsHomeContactContactsEn.internal(_root);
	late final TranslationsHomeContactFormEn form = TranslationsHomeContactFormEn.internal(_root);
}

// Path: home.app_bar
class TranslationsHomeAppBarEn {
	TranslationsHomeAppBarEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Home'
	String get home => 'Home';

	/// en: 'Skills'
	String get skills => 'Skills';

	/// en: 'Projects'
	String get projects => 'Projects';

	/// en: 'Contact me'
	String get contact_me => 'Contact me';
}

// Path: general.toasts
class TranslationsGeneralToastsEn {
	TranslationsGeneralToastsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsGeneralToastsCopyToastEn copy_toast = TranslationsGeneralToastsCopyToastEn.internal(_root);
	late final TranslationsGeneralToastsSubmitToastEn submit_toast = TranslationsGeneralToastsSubmitToastEn.internal(_root);
	late final TranslationsGeneralToastsErrorToastEn error_toast = TranslationsGeneralToastsErrorToastEn.internal(_root);
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

	/// en: 'and more...'
	String get and_more => 'and more...';
}

// Path: home.projects.octa
class TranslationsHomeProjectsOctaEn {
	TranslationsHomeProjectsOctaEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Octa Trading Lessons'
	String get title => 'Octa Trading Lessons';

	/// en: 'Octa Trading Lessons App is a free training tool for anyone who wants to understand various aspects of trading and investing. In this app, you will learn directly from expert traders and immediately put your knowledge to practice while trading.'
	String get description => 'Octa Trading Lessons App is a free training tool for anyone who wants to understand various aspects of trading and investing.\nIn this app, you will learn directly from expert traders and immediately put your knowledge to practice while trading.';

	/// en: 'Education'
	String get category => 'Education';
}

// Path: home.projects.irealt
class TranslationsHomeProjectsIrealtEn {
	TranslationsHomeProjectsIrealtEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'iRealt'
	String get title => 'iRealt';

	/// en: 'A simple and convenient service for professional and novice realtors. Real estate directly from the developer with a high commission payment on the day of the transaction.'
	String get description => 'A simple and convenient service for professional and novice realtors.\nReal estate directly from the developer with a high commission payment on the day of the transaction.';

	/// en: 'Real Estate'
	String get category => 'Real Estate';
}

// Path: home.projects.seline
class TranslationsHomeProjectsSelineEn {
	TranslationsHomeProjectsSelineEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Seline Clinic Dubai'
	String get title => 'Seline Clinic Dubai';

	/// en: 'Seline Aesthetic Clinic App — your streamlined companion for booking treatments, earning loyalty points, and reviewing appointment details, all in one secure platform. Designed to enhance your aesthetic experience, this app ensures you can focus on what truly matters: feeling confident and refreshed.'
	String get description => 'Seline Aesthetic Clinic App — your streamlined companion for booking treatments, earning loyalty points, and reviewing appointment details, all in one secure platform.\nDesigned to enhance your aesthetic experience, this app ensures you can focus on what truly matters: feeling confident and refreshed.';

	/// en: 'Health & Care'
	String get category => 'Health & Care';
}

// Path: home.projects.doto
class TranslationsHomeProjectsDotoEn {
	TranslationsHomeProjectsDotoEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Doto'
	String get title => 'Doto';

	/// en: 'Doto is an easy-to-use mobile trading app that helps you trade smarter and make data-driven decisions. Just get the app and start trading on stocks, indices and a lot more — the world’s top instruments are at your fingertips.'
	String get description => 'Doto is an easy-to-use mobile trading app that helps you trade smarter and make data-driven decisions.\nJust get the app and start trading on stocks, indices and a lot more — the world’s top instruments are at your fingertips.';

	/// en: 'Trading'
	String get category => 'Trading';
}

// Path: home.projects.emcd
class TranslationsHomeProjectsEmcdEn {
	TranslationsHomeProjectsEmcdEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'EMCD'
	String get title => 'EMCD';

	/// en: 'EMCD is one of the largest mining pool in Europe with total hashrate of 20+ EH/s and many other features. It is a crypto wallet, p2p exchange, mining pool, crypto loans, coinhold and more.'
	String get description => 'EMCD is one of the largest mining pool in Europe with total hashrate of 20+ EH/s and many other features.\nIt is a crypto wallet, p2p exchange, mining pool, crypto loans, coinhold and more.';

	/// en: 'Finance & Crypto'
	String get category => 'Finance & Crypto';
}

// Path: home.projects.fakelab
class TranslationsHomeProjectsFakelabEn {
	TranslationsHomeProjectsFakelabEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Fakelab Records MiniApp'
	String get title => 'Fakelab Records MiniApp';

	/// en: 'A simple and convenient Telegram MiniApp for recording studio, developed on Flutter Web. The application allows you to view information about the studio, book a visit or order services. A CRM panel for administrators and Telegram bot on Dart was developed along with the application.'
	String get description => 'A simple and convenient Telegram MiniApp for recording studio, developed on Flutter Web.\nThe application allows you to view information about the studio, book a visit or order services. A CRM panel for administrators and Telegram bot on Dart was developed along with the application.';

	/// en: 'Sales & Landing'
	String get category => 'Sales & Landing';
}

// Path: home.projects.buttons
class TranslationsHomeProjectsButtonsEn {
	TranslationsHomeProjectsButtonsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Code'
	String get code => 'Code';

	/// en: 'Website'
	String get website => 'Website';

	/// en: 'Google Play'
	String get google_play => 'Google Play';

	/// en: 'App Store'
	String get app_store => 'App Store';
}

// Path: home.contact.contacts
class TranslationsHomeContactContactsEn {
	TranslationsHomeContactContactsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Phone'
	String get phone => 'Phone';

	/// en: 'Email'
	String get email => 'Email';

	/// en: 'Location'
	String get location => 'Location';

	/// en: 'Telegram'
	String get telegram => 'Telegram';

	late final TranslationsHomeContactContactsAvailabilityEn availability = TranslationsHomeContactContactsAvailabilityEn.internal(_root);
}

// Path: home.contact.form
class TranslationsHomeContactFormEn {
	TranslationsHomeContactFormEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsHomeContactFormNameEn name = TranslationsHomeContactFormNameEn.internal(_root);
	late final TranslationsHomeContactFormEmailEn email = TranslationsHomeContactFormEmailEn.internal(_root);
	late final TranslationsHomeContactFormMessageEn message = TranslationsHomeContactFormMessageEn.internal(_root);
	late final TranslationsHomeContactFormSubmitButtonEn submit_button = TranslationsHomeContactFormSubmitButtonEn.internal(_root);
}

// Path: general.toasts.copy_toast
class TranslationsGeneralToastsCopyToastEn {
	TranslationsGeneralToastsCopyToastEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Copied'
	String get title => 'Copied';

	/// en: 'The text has been copied to the clipboard'
	String get subtitle => 'The text has been copied to the clipboard';
}

// Path: general.toasts.submit_toast
class TranslationsGeneralToastsSubmitToastEn {
	TranslationsGeneralToastsSubmitToastEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Form submitted'
	String get title => 'Form submitted';

	/// en: 'I will contact you as soon as I receive the notification'
	String get subtitle => 'I will contact you as soon as I receive the notification';
}

// Path: general.toasts.error_toast
class TranslationsGeneralToastsErrorToastEn {
	TranslationsGeneralToastsErrorToastEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Oops!'
	String get title => 'Oops!';

	/// en: 'There is an unknown error'
	String get subtitle => 'There is an unknown error';
}

// Path: home.contact.contacts.availability
class TranslationsHomeContactContactsAvailabilityEn {
	TranslationsHomeContactContactsAvailabilityEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsHomeContactContactsAvailabilityStatusEn status = TranslationsHomeContactContactsAvailabilityStatusEn.internal(_root);
	late final TranslationsHomeContactContactsAvailabilityDescriptionEn description = TranslationsHomeContactContactsAvailabilityDescriptionEn.internal(_root);
}

// Path: home.contact.form.name
class TranslationsHomeContactFormNameEn {
	TranslationsHomeContactFormNameEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Name'
	String get title => 'Name';

	/// en: 'Your name'
	String get hint => 'Your name';

	/// en: 'Required field'
	String get validator => 'Required field';
}

// Path: home.contact.form.email
class TranslationsHomeContactFormEmailEn {
	TranslationsHomeContactFormEmailEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Email'
	String get title => 'Email';

	/// en: 'your.email@example.com'
	String get hint => 'your.email@example.com';

	/// en: 'Enter valid email address'
	String get validator => 'Enter valid email address';
}

// Path: home.contact.form.message
class TranslationsHomeContactFormMessageEn {
	TranslationsHomeContactFormMessageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Message'
	String get title => 'Message';

	/// en: 'Tell me about your project...'
	String get hint => 'Tell me about your project...';

	/// en: 'Required field'
	String get validator => 'Required field';
}

// Path: home.contact.form.submit_button
class TranslationsHomeContactFormSubmitButtonEn {
	TranslationsHomeContactFormSubmitButtonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Submit'
	String get title => 'Submit';

	/// en: 'Submitted'
	String get submitted_title => 'Submitted';
}

// Path: home.contact.contacts.availability.status
class TranslationsHomeContactContactsAvailabilityStatusEn {
	TranslationsHomeContactContactsAvailabilityStatusEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Available for new projects'
	String get available => 'Available for new projects';

	/// en: 'Unavailable for new projects for a while'
	String get unavailable => 'Unavailable for new projects for a while';
}

// Path: home.contact.contacts.availability.description
class TranslationsHomeContactContactsAvailabilityDescriptionEn {
	TranslationsHomeContactContactsAvailabilityDescriptionEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Currently accepting new projects and job offers.'
	String get available => 'Currently accepting new projects and job offers.';

	/// en: 'Currently not accepting new projects and job offers.'
	String get unavailable => 'Currently not accepting new projects and job offers.';
}
