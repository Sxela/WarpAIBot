# WarpAIBot
WarpFusion Discord Tech Support Bot 

A simple tech support bot that creates a database by parsing a list of given discord channels/forums, and then uses it to reply to users.

## Installation
1. Clone the repo
2. Run **install_pytorch_only.bat**
3. Create your bot and add it to your server. Get its token.
4. Specify your ```BOT_TOKEN```, ```ADMIN``` id, and a list of ```CHANNELS``` to parse in **run_template.bat**
5. Put additional txt files with FAQ or other info into **warpfusion_db** folder if needed

## Running
1. Run **run_template.bat**
2. Type **!fetch_all** in a chat with the bot to parse the channels
3. Mention the bot with a question to get a response
