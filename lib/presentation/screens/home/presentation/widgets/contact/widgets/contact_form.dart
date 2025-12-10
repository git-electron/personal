part of '../../../home_screen.dart';

class _ContactForm extends StatelessWidget {
  const _ContactForm();

  static const _nameKey = shadcn.FormKey('name');
  static const _emailKey = shadcn.FormKey('email');
  static const _messageKey = shadcn.FormKey('message');

  @override
  Widget build(BuildContext context) {
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
                      onTap: () {
                        context.submitForm();
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
                      },
                      text: 'Submit',
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
