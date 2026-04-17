void main() {
  String userIntent = 'check clearance';
  bool isInternetConnected = true;

  // Offline-first handling
  if (!isInternetConnected) {
    print("⚠️ Offline Mode فعال.");
    print("Displaying last saved data and emergency contacts.");
    return;
  }

  switch (userIntent.toLowerCase()) {
    case 'check clearance':
      print("📋 Your clearance status:");
      print("- Library: ✅ Cleared");
      print("- Registrar: ⏳ Pending");
      print("- Finance: ✅ Cleared");
      break;

    case 'submit request':
      print("📝 What type of request would you like to submit?");
      print("Options: Document, Complaint, Inquiry");
      break;

    case 'track application':
      print("📍 Your application is currently under review.");
      print("Estimated completion: 2–3 working days.");
      break;

    default:
      print("🤖 I'm not sure what you mean.");
      print(
        "Try: 'check clearance', 'submit request', or 'track application'.",
      );
  }
}
