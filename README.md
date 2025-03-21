<h1>Dodoc - Telemedicine Application</h1>
Dodoc is a telemedicine platform that enables users to book appointments for virtual consultations or in-person visits at clinics. It’s built with Flutter and leverages various packages to manage state, handle API data, and ensure a seamless user experience.

<h2>Overview<h2/>
Dodoc simplifies your healthcare journey by providing:

Easy appointment booking for both virtual and physical visits.
Doctor search functionality to find specialists based on your needs.
Appointment management including viewing, rescheduling, and canceling appointments.
Real-time doctor-patient chat for communication before and after consultations.
A user-friendly interface that makes navigation a breeze.

<h2>🎨 System Design</h2>

![282331607-4fe94724-5bfa-4756-a7a1-63efc2e7b3ce](https://github.com/user-attachments/assets/c2d691e5-172a-4496-974c-8149c8a1c56d)

<h2>Features</h2>
Appointment Booking: Book online for virtual consultations or schedule in-clinic visits.
Search for Doctors: Easily search for doctors by specialty or name.
Appointment Management: View, reschedule, or cancel appointments with dedicated pages for completed and canceled sessions.
Specialization Categories: Filter and select doctors from various medical specialties.
User Profile Management: Update personal data like name, contact details, etc.
Secure & Private: All consultations are secure, ensuring patient privacy.
Doctor-Patient Chat: Engage in real-time chats with doctors for advice and follow-ups.
Seamless User Experience: Intuitive and user-centric design for effortless navigation.

<h2>Packages Used</h2>
Packages Used
go_router v14.2.3: Declarative routing and navigation.<br/>
flutter_svg v2.0.10+1: Rendering SVG images.<br/>
flutter_bloc v8.1.6: Robust state management using Bloc and Cubit patterns.<br/>
get_it v7.7.0: Dependency injection for clean architecture.<br/>
shared_preferences v2.3.1: Persistent storage for user settings.<br/>
Dio v1.2.2: Handling API calls and network requests.<br/>
easy_date_timeline v1.1.3: Customizable date timeline widget.<br/>
flutter_datetime_picker_plus v2.2.0: Intuitive date and time picker.<br/>
chat_bubbles v1.6.0: UI components for doctor-patient chat.s.<br/>
<br/>
<h2>State Management and API Integration</h2>
State Management: The flutter_bloc package ensures effective state management, allowing the app to gracefully handle data from APIs, including loading, success, and error states.
API Integration: The application leverages the HTTP package to interact with a backend API, retrieving real-time data for doctor profiles, appointments, chat messages, and user information.
By combining robust functionality with a user-centric design, Dodoc empowers users to take control of their healthcare journey, fostering a more accessible and efficient patient and provider experience.
<br/>
<h2>Screenshots</h2>

| Screenshot 1 | Screenshot 2 |
|--------------|--------------|
| ![1739368344862](https://github.com/user-attachments/assets/b9e0770a-f6bf-4b6d-ba31-ee66e0390593) | ![1739368345195](https://github.com/user-attachments/assets/3d09018d-e1c7-4fde-b845-b2d017a8d32c) |

| Screenshot 3 | Screenshot 4 |
|--------------|--------------|
| ![1739368346244](https://github.com/user-attachments/assets/13552e5c-5f0c-4fa9-a710-57c44b1ecb30) | ![1739368346012](https://github.com/user-attachments/assets/02c3f97a-74aa-4dcc-8c9f-f64a94fe4bfc) |



