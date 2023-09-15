# WarpAIBot
WarpFusion Discord Tech Support Bot 

A simple tech support bot that creates a database by parsing a list of given discord channels/forums, and then uses it to reply to users.
## Changelog:
- 15.09.2023: add tesseract ocr
- 13.09.2023: init


## Installation
1. Clone the repo
2. Get [MSVC Build tools](https://aka.ms/vs/17/release/vs_BuildTools.exe) and install the local c++ dev kit
3. Get [latest nVidia CUDA toolkit](https://developer.nvidia.com/cuda-downloads?target_os=Windows&target_arch=x86_64&target_version=11&target_type=exe_local) or at least [11.8+](https://developer.nvidia.com/cuda-11-8-0-download-archive?target_os=Windows&target_arch=x86_64&target_version=11&target_type=exe_local) and install it. Don't forget to remove older versions.
4. [Download tesseract OCR](https://digi.bib.uni-mannheim.de/tesseract/tesseract-ocr-w64-setup-5.3.1.20230401.exe) and install it.
5. Run **install_pytorch_only.bat**
6. Create your bot and add it to your server. Get its token.
7. Specify your ```BOT_TOKEN```, ```ADMIN``` id, and a list of ```CHANNELS``` to parse in **run_template.bat**, also edit ```TESSERACT``` if you installed it not in the default path. 
8. Put additional text files with FAQ or other info into **warpfusion_db** folder if needed

## Running
1. Run **run_template.bat**
2. Type **!fetch_all** in a chat with the bot to parse the channels. Only ```ADMIN```` can do that.
3. Mention the bot with a question and/or screenshot to get a response
