part of '../../../home_screen.dart';

class _ContactForm extends StatelessWidget {
  const _ContactForm();

  static const _nameKey = shadcn.FormKey('name');
  static const _emailKey = shadcn.FormKey('email');
  static const _messageKey = shadcn.FormKey('message');

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactFormBloc, ContactFormState>(
      builder: (context, state) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: context.colors.cardBackground,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: context.colors.cardBorder,
            ),
          ),
          child: Padding(
            padding: Pad(all: context.layoutDependantValue(desktop: 30, orElse: 20)),
            child: shadcn.Form(
              child: Column(
                spacing: 20,
                mainAxisSize: MainAxisSize.min,
                children: [
                  shadcn.FormField(
                    key: _nameKey,
                    label: Text(
                      context.t.home.contact.form.name.title,
                      style: context.bodyStyle.copyWith(
                        color: context.colors.text.copyWithOpacity(.75),
                      ),
                    ),
                    validator: shadcn.NotEmptyValidator(
                      message: context.t.home.contact.form.name.validator,
                    ),
                    showErrors: const {
                      shadcn.FormValidationMode.changed,
                      shadcn.FormValidationMode.submitted,
                    },
                    child: shadcn.TextField(
                      key: _nameKey,
                      style: context.bodyStyle,
                      focusNode: FocusNode(),
                      autofillHints: const [shadcn.AutofillHints.name],
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Zа-яА-ЯёЁ\- ]')),
                      ],
                      placeholder: Text(
                        context.t.home.contact.form.name.hint,
                        style: context.bodyStyle.copyWith(color: context.colors.text.copyWithOpacity(.25)),
                      ),
                    ),
                  ),
                  shadcn.FormField(
                    key: _emailKey,
                    label: Text(
                      context.t.home.contact.form.email.title,
                      style: context.bodyStyle.copyWith(
                        color: context.colors.text.copyWithOpacity(.75),
                      ),
                    ),
                    validator: shadcn.EmailValidator(
                      message: context.t.home.contact.form.email.validator,
                    ),
                    showErrors: const {
                      shadcn.FormValidationMode.submitted,
                    },
                    child: shadcn.TextField(
                      key: _emailKey,
                      style: context.bodyStyle,
                      focusNode: FocusNode(),
                      autofillHints: const [shadcn.AutofillHints.email],
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      placeholder: Text(
                        context.t.home.contact.form.email.hint,
                        style: context.bodyStyle.copyWith(color: context.colors.text.copyWithOpacity(.25)),
                      ),
                    ),
                  ),
                  shadcn.FormField(
                    key: _messageKey,
                    label: Text(
                      context.t.home.contact.form.message.title,
                      style: context.bodyStyle.copyWith(
                        color: context.colors.text.copyWithOpacity(.75),
                      ),
                    ),
                    validator: shadcn.NotEmptyValidator(
                      message: context.t.home.contact.form.message.validator,
                    ),
                    showErrors: const {
                      shadcn.FormValidationMode.changed,
                      shadcn.FormValidationMode.submitted,
                    },
                    child: shadcn.TextArea(
                      key: _messageKey,
                      style: context.bodyStyle,
                      focusNode: FocusNode(),
                      expandableHeight: true,
                      maxHeight: 300,
                      keyboardType: TextInputType.multiline,
                      textInputAction: TextInputAction.newline,
                      placeholder: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          context.t.home.contact.form.message.hint,
                          style: context.bodyStyle.copyWith(color: context.colors.text.copyWithOpacity(.25)),
                        ),
                      ),
                    ),
                  ),
                  shadcn.FormErrorBuilder(
                    builder: (context, errors, child) {
                      return SizedBox(
                        width: double.maxFinite,
                        child: AppButton(
                          onTap: () async {
                            final result = await context.submitForm();
                            if (result.errors.isNotEmpty) return;
                            if (!context.mounted) return;

                            final String name = result.values[_nameKey] as String;
                            final String email = result.values[_emailKey] as String;
                            final String message = result.values[_messageKey] as String;

                            final emailResult = await const shadcn.EmailValidator(message: '').validate(
                              context,
                              email,
                              shadcn.FormValidationMode.changed,
                            );

                            if (name.isEmpty || message.isEmpty || emailResult is shadcn.InvalidResult) return;
                            if (!context.mounted) return;

                            context.read<ContactFormBloc>().add(
                                  ContactFormEvent.submit(
                                    name: name,
                                    email: email,
                                    message: message,
                                  ),
                                );

                            if (context.mounted) {
                              shadcn.showToast(
                                context: context,
                                builder: (context, overlay) => shadcn.SurfaceCard(
                                  child: shadcn.Basic(
                                    title: const Text('title'),
                                    subtitle: const Text('subtitle'),
                                    trailing: shadcn.PrimaryButton(
                                      size: shadcn.ButtonSize.small,
                                      onPressed: overlay.close,
                                      child: const Text('Undo'),
                                    ),
                                  ),
                                ),
                              );
                            }
                          },
                          isLoading: state.isLoading,
                          isEnabled: !state.isSubmitted,
                          icon: state.isSubmitted ? Assets.icons.general.check.brand : null,
                          text: state.isSubmitted
                              ? context.t.home.contact.form.submit_button.submitted_title
                              : context.t.home.contact.form.submit_button.title,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
