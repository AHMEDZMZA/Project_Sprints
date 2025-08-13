# ShopCraft App

## Project Overview
تطبيق Flutter يعرض مجموعة من المنتجات مع صور وأسعار ووصف مختصر بطريقة جذابة وعصرية. يحتوي التطبيق على صفحة رئيسية تعرض المنتجات المميزة في معرض صور متحرك (PageView)، وشبكة عرض للمنتجات مع أيقونة عربة تسوق لكل منتج، وقسم خاص بعروض مميزة. يدعم التطبيق الترجمة للغات متعددة باستخدام مكتبة `easy_localization` لتجربة مستخدم سلسة ومرنة.

## Features
- **عرض المنتجات بشكل جذاب:** عرض صور المنتجات مع اسمها وسعرها في تصميم شبكي حديث.  
- **معرض صور متحرك (PageView):** عرض المنتجات المميزة في شريط تمرير أفقي.  
- **أيقونة عربة التسوق:** إمكانية التفاعل مع كل منتج عبر زر إضافة للسلة على صورة المنتج.  
- **قسم العروض المميزة (Hot Offers):** قائمة بسيطة تعرض المنتجات ضمن قسم خاص بالعروض.  
- **دعم الترجمة:** واجهة متعددة اللغات مع دعم التحويل بين اللغات بسهولة.  
- **تصميم متجاوب:** يدعم أحجام شاشات مختلفة مع تنسيق واضح ونظيف.

## Screenshots

-------------------------------
<img src="https://github.com/user-attachments/assets/dc83c94d-20da-41a5-8cb9-697dd25997a7" width="300" />
<img src="https://github.com/user-attachments/assets/d72bffe7-3e88-4a1a-9016-3148c08d1d53" width="300" />
<img src="https://github.com/user-attachments/assets/a833c335-1b12-43a1-8355-86c393675161" width="300" />
<img src="https://github.com/user-attachments/assets/b6ffb7dd-a106-4e9c-a694-169e8083ebc7" width="300" />
<img src="https://github.com/user-attachments/assets/275ca419-46db-450c-af6a-8699120220ec" width="300" />
<img src="https://github.com/user-attachments/assets/4b401d56-a93d-4356-9532-f10d49ad67d8" width="300" />
<img src="https://github.com/user-attachments/assets/452f70fc-1b19-44c5-b4d0-7f67eef0f655" width="300" />


## Setup Instructions
-------------------------------
1. **Install Flutter**
   - Download Flutter SDK from the official website: [flutter.dev](https://flutter.dev/docs/get-started/install)
   - Follow the installation instructions for your operating system (Windows, macOS, Linux).
   - Make sure to add Flutter to your system PATH.

2. **Install Required Tools**
   - Install Android Studio or VS Code (or any IDE that supports Flutter).
   - In Android Studio, install the Flutter and Dart plugins from the Plugins marketplace.

3. **Set up Emulator or Connect Physical Device**
   - Open Android Studio and create a new Android Virtual Device (AVD) emulator, or
   - Connect your physical device with USB debugging enabled.

4. **Clone the Project**
   - Clone the repository using:
     ```
     git clone https://github.com/username/repository-name.git
     ```
   - Or download the ZIP archive and extract it.

5. **Open the Project**
   - Open the project folder in your preferred IDE.

6. **Get Dependencies**
   - Open a terminal inside the project directory and run:
     ```
     flutter pub get
     ```

7. **Run the Project**
   - Make sure the emulator is running or your device is connected.
   - Run the project using:
     ```
     flutter run
     ```
   - Or press the Run button in your IDE.

8. **Change Language (Optional)**
   - The app supports multiple languages using easy_localization.
   - Change the language within the app or adjust the language settings as needed.
