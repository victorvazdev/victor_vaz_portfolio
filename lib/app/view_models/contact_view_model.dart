import 'package:victor_vaz_portfolio/app/services/contact_service.dart';
import 'package:victor_vaz_portfolio/app/services/form_service.dart';

class ContactViewModel {
  Future<bool> sendEmail(String name, String email, String message) async {
    final FormService formService = ContactService();

    try {
      await formService.sendEmail(name, email, message);
      return true;
    } catch (e) {
      return false;
    }
  }
}
