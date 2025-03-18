# Doctor Appointment App (Dodoc - Telemedicine Application)

Dodoc is a telemedicine platform that allows users to book appointments for virtual consultations or in-person visits at a clinic.

This project leverages various Flutter packages to manage state, handle API data, and provide a seamless user experience.

🎨 System Design

![282331607-4fe94724-5bfa-4756-a7a1-63efc2e7b3ce](https://github.com/user-attachments/assets/c2d691e5-172a-4496-974c-8149c8a1c56d)

Features
Appointment Booking: Users can book appointments online for virtual consultations or schedule visits at a clinic.
Search for Doctors: Users can search for specific doctors based on their needs.
Appointment Management: You can easily view, reschedule, or cancel appointments. Completed and canceled appointments are displayed on separate pages for better organization.
Specialization Categories: Users can select doctors from different specialization categories to find the right healthcare provider.
User Profile Management: Users have full control over their profile, with the ability to update personal data like name, contact information, and more.
Secure and Private: All consultations are secure, protecting patient privacy.
Doctor-Patient Chat: Real-time chat allows patients and doctors to communicate before or after consultations.
Seamless User Experience: User-friendly interface for easy navigation and appointment management.
Packages Used
go_router - v14.2.3
Declarative routing and navigation within the app.
flutter_svg - v2.0.10+1
Use of SVG images throughout the app.
flutter_bloc - v8.1.6
Efficient state management with Bloc and Cubit patterns.
get_it - v7.7.0
Dependency injection with the GetIt service locator.
shared_preferences - v2.3.1
Persistent data storage for user settings and preferences.
HTTP - v1.2.2
Manages HTTP requests to communicate with the API.
easy_date_timeline - v1.1.3
Customizable date timeline for easy appointment selection.
flutter_datetime_picker_plus - v2.2.0
Intuitive date and time picker for scheduling appointments.
chat_bubbles - v1.6.0
Provides chat UI for doctor-patient conversations.
State Management and API Integration
State Management: The flutter_bloc package ensures effective state management, allowing the app to gracefully handle data from APIs, including loading, success, and error states.
API Integration: The application leverages the HTTP package to interact with a backend API, retrieving real-time data for doctor profiles, appointments, chat messages, and user information.
By combining robust functionality with a user-centric design, Dodoc empowers users to take control of their healthcare journey, fostering a more accessible and efficient patient and provider experience.

Screenshots
![1739368346244](https://github.com/user-attachments/assets/13552e5c-5f0c-4fa9-a710-57c44b1ecb30)
![1739368346012](https://github.com/user-attachments/assets/02c3f97a-74aa-4dcc-8c9f-f64a94fe4bfc)
![1739368344862](https://github.com/user-attachments/assets/b9e0770a-f6bf-4b6d-ba31-ee66e0390593)
![1739368345195](https://github.com/user-attachments/assets/3d09018d-e1c7-4fde-b845-b2d017a8d32c)
![1739368345875](https://github.com/user-attachments/assets/4928e07c-c38f-4558-8a0d-77f131ed2ab5)

# Figma Design
https://www.figma.com/design/WB4GtMqCEZqJtuaWXd2oYd/Omar---Appointment-App?node-id=0-1&p=f&t=ETxvK5Fl8brswvHT-0
