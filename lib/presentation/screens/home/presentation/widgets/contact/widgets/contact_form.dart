part of '../../../home_screen.dart';

class _ContactForm extends StatelessWidget {
  const _ContactForm();

  static const _nameKey = shadcn.FormKey('name');
  static const _emailKey = shadcn.FormKey('email');
  static const _messageKey = shadcn.FormKey('message');

  static final TextEditingController _nameController = TextEditingController();
  static final TextEditingController _emailController = TextEditingController();
  static final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumerWithSideEffects<ContactFormBloc, ContactFormState, ContactFormSideEffect>(
      bloc: context.read(),
      sideEffectsListener: (context, sideEffect) {
        switch (sideEffect) {
          case final ContactFormSideEffect contactFormSideEffect:
            if (!context.mounted) return;

            shadcn.showToast(
              context: context,
              builder: (context, overlay) => shadcn.SurfaceCard(
                child: shadcn.Basic(
                  title: Text(
                    switch (contactFormSideEffect.type) {
                      ToastType.success => context.t.general.toasts.submit_toast.title,
                      ToastType.error => context.t.general.toasts.error_toast.title,
                    },
                    style: contactFormSideEffect.isError ? TextStyle(color: context.colors.error) : null,
                  ),
                  subtitle: Text(
                    switch (contactFormSideEffect.type) {
                      ToastType.success => context.t.general.toasts.submit_toast.subtitle,
                      ToastType.error => context.t.general.toasts.error_toast.subtitle,
                    },
                    style: contactFormSideEffect.isError
                        ? TextStyle(color: context.colors.error.copyWithOpacity(.5))
                        : null,
                  ),
                  leading: contactFormSideEffect.isError
                      ? Icon(
                          Icons.dangerous_outlined,
                          color: context.colors.error,
                        )
                      : null,
                  leadingAlignment: Alignment.center,
                  trailing: shadcn.PrimaryButton(
                    size: shadcn.ButtonSize.small,
                    onPressed: overlay.close,
                    child: Text(context.t.general.ok),
                  ),
                ),
              ),
            );
            break;
        }
      },
      listenWhen: (previous, current) => current.isSubmitted,
      listener: (context, state) {
        if (!state.isSubmitted) return;
        _nameController.text = state.submittedForm?.name ?? '';
        _emailController.text = state.submittedForm?.email ?? '';
        _messageController.text = state.submittedForm?.message ?? '';
      },
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
                    child: Opacity(
                      opacity: state.isSubmitted ? .5 : 1,
                      child: shadcn.TextField(
                        key: _nameKey,
                        focusNode: FocusNode(),
                        style: context.bodyStyle,
                        enabled: !state.isSubmitted,
                        controller: _nameController,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        initialValue: state.submittedForm?.name,
                        autofillHints: const [shadcn.AutofillHints.name],
                        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Zа-яА-ЯёЁ\- ]'))],
                        placeholder: Text(
                          context.t.home.contact.form.name.hint,
                          style: context.bodyStyle.copyWith(color: context.colors.text.copyWithOpacity(.25)),
                        ),
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
                    child: Opacity(
                      opacity: state.isSubmitted ? .5 : 1,
                      child: shadcn.TextField(
                        key: _emailKey,
                        focusNode: FocusNode(),
                        style: context.bodyStyle,
                        enabled: !state.isSubmitted,
                        controller: _emailController,
                        textInputAction: TextInputAction.next,
                        initialValue: state.submittedForm?.email,
                        keyboardType: TextInputType.emailAddress,
                        autofillHints: const [shadcn.AutofillHints.email],
                        placeholder: Text(
                          context.t.home.contact.form.email.hint,
                          style: context.bodyStyle.copyWith(color: context.colors.text.copyWithOpacity(.25)),
                        ),
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
                    child: Opacity(
                      opacity: state.isSubmitted ? .5 : 1,
                      child: shadcn.TextArea(
                        maxHeight: 300,
                        key: _messageKey,
                        focusNode: FocusNode(),
                        expandableHeight: true,
                        style: context.bodyStyle,
                        enabled: !state.isSubmitted,
                        controller: _messageController,
                        keyboardType: TextInputType.multiline,
                        textInputAction: TextInputAction.newline,
                        initialValue: state.submittedForm?.message,
                        placeholder: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            context.t.home.contact.form.message.hint,
                            style: context.bodyStyle.copyWith(color: context.colors.text.copyWithOpacity(.25)),
                          ),
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
