--[[
BY : TshAkETEAM
Channel Files : https://t.me/AKJA0
]]
local function keko_tshake(data)
local msg = data.message_
redis = (loadfile "./libs/redis.lua")()
database = Redis.connect('127.0.0.1', 6379)
sudos = dofile('sudo.lua')
https = require("ssl.https")
bot_id_keko = {string.match(token, "^(%d+)(:)(.*)")}
bot_id = tonumber(bot_id_keko[1])
JSON = (loadfile  "./libs/dkjson.lua")()
local function send(chat_id, reply_to_message_id, disable_notification, text, disable_web_page_preview, parse_mode)
local TextParseMode = {ID = "TextParseModeMarkdown"}
  tdcli_function ({
  ID = "SendMessage",
  chat_id_ = chat_id,
  reply_to_message_id_ = reply_to_message_id,
  disable_notification_ = disable_notification,
  from_background_ = 1,
  reply_markup_ = nil,
  input_message_content_ = {
  ID = "InputMessageText",
  text_ = text,
  disable_web_page_preview_ = disable_web_page_preview,
  clear_draft_ = 0,
  entities_ = {},
  parse_mode_ = TextParseMode,
  },
  }, dl_cb, nil)
  end
  function is_owner(msg)
user_id = msg.sender_user_id_
chat_id = msg.chat_id_
local var = false
local admin = database:sismember('tshake:'..bot_id..'admins:', user_id)  
local owner = database:sismember('tshake:'..bot_id..'owners:'..chat_id, user_id)
local creator = database:sismember('tshake:'..bot_id..'creator:'..chat_id, user_id)  
if owner then var = true
end if admin then
var = true end if creator then var = true end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end end
local keko_add_sudo = redis:get('tshake:'..bot_id..'sudoo'..user_id..'')
if keko_add_sudo then var = true end
return var
end
local msg = data.message_
text = msg.content_.text_
if not database:get('tshake:'..bot_id..'rep:mute'..msg.chat_id_) then
if text == 'هاي' then
moody = "هاي يقلبي 💙"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end

if text == 'حصل' then
moody = "تؤ محصلش"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'عامل اي' then
moody = "ونت مالك نت"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'بحبك' then
moody = "واي كمان يستا"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'تمام' then
moody = "تمام"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'جيت' then
moody = "نورت يابا"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'احا' then
moody = "احتين تلاته"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'هاي' then
moody = "تراي"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'زبي' then
moody = "عارف دا تحطو فين.؟"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'اممم' then
moody = "اممممات"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'كتم' then
moody = "مشاهده ممتعه يزميلي😹🥱"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'الحمد لله' then
moody = "يرحمكم الله"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'بقولك' then
moody = ".قولي"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'دي' then
moody = "مالها.؟"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'هيي' then
moody = "ممممم"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'تعالي خاص' then
moody = "عيب يستا"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'بف' then
moody = "هاجي معاكوا اشطا.!"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'برايفت' then
moody = "هاجي معاكوا فل."
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'باي' then
moody = "خد الباب وراك عشان بنام ب البوكسر."
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'تع بف' then
moody = "هاجي معاكوا خلصا.؟"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'تقييد' then
moody = "مشاهده ممتعه يباشا."
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'خخخخخ' then
moody = "كسمك"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'مممم' then
moody = "اييي"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == '🌚' then
moody = "ممحون"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == '🙄' then
moody = "نزل عينك عيب"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == '😒' then
moody = "معلش معلش استحمل"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == '😳' then
moody = "هعهعع"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == '💔' then
moody = "يعيني دا البت خزوقته."
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == '🙂' then
moody = "وسع وسع للنكد"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == '🌝' then
moody = "🌚"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'صباحو' then
moody = "خرا ع دماغك"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'صباح الخير' then
moody = "خير ونت موجود ازاي..!"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'عاش' then
moody = "مات"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == '😌' then
moody = "ممممم"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'اها' then
moody = "لا يخي"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'يستا' then
moody = "اييييي"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'حبك' then
moody = "واي كمان"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'شوف' then
moody = "• شَُشَُـﮧﮧوٍّ໑فِٰ 🌝🌝ֆ"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'مساء الخير' then
moody = "• مٍٰسٌٍـﮧاَٰء اَٰلْٰحٌٰـﮧبٌِٰ يَٰحٌٰہبٌِٰحٌٰہبٌِٰ🌛🔥ֆ"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'جافا' then
moody = "@UU_AK0"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'منو ديحذف رسائلي' then
moody = "• خّٰـﮧاَٰلْٰتّٰـہكٍٰ 🌚ֆ🌝"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'البوت واكف' then
moody = "• لْٰجًِّـﮧذَْبٌِٰ حٌٰبٌِٰـہيَٰ 🌞⚡️ֆ"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'غلس' then
moody = "• وٍّ໑كٍٰ بٌِٰـﮧسٌٍ سٌٍـﮧوٍّ୭لْٰفِٰلْٰيَٰ اَٰلْٰسٌٍـﮧاَٰلْٰفِٰهَٰہۧ بٌِٰعٍِّـﮧدِٰيَٰنٍٰ🌝🦅ֆ"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'حارة' then
moody = "• تّٰسٌٍـہمٍٰطَُِ سٌٍمٍٰـﮧطَُِ غِِٰيَٰـﮧرِٰ يَٰرِٰحٌٰمٍٰنٍٰـﮧهَٰہۧ اَٰلْٰاَٰعٍِّبٌِٰـاَٰدِٰيَٰ وٍّيَٰنٍٰـہطَُِيَٰ عٍِّطَُِلْٰـﮧهَٰہۧ 😾💔ֆ"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'هههه' then
moody = "• نٍٰشَُـﮧاَٰلْٰلْٰهَٰہۧ دِٰاَٰيَٰمٍٰـﮧهَٰہۧ💆🏻‍♂💘ֆ"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'ههههه' then
moody = "• نٍٰشَُـﮧاَٰلْٰلْٰهَٰہۧ دِٰاَٰيَٰمٍٰـﮧهَٰہۧ💆🏻‍♂💘ֆ"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == '😹' then
moody = "• نٍٰشَُـﮧاَٰلْٰلْٰهَٰہۧ دِٰاَٰيَٰمٍٰـﮧهَٰہۧ💆🏻‍♂💘ֆ"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'وين' then
moody = "• بٌِٰـﮧﮧأرِٰض اَٰلْٰلْٰهَٰہۧ اَٰلْٰـہوٍّاَٰسٌٍعٍِّـﮧهَٰہۧ😽💜ֆ"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'كافي لغوة' then
moody = "• كٍٰـيَٰفِٰنٍٰـﮧهَٰہۧ نٍٰتّٰـﮧهَٰہۧ شَُعٍِّـہلْٰيَٰكٍٰ😼👊ֆ"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'نايمين' then
moody = "• اَٰنٍٰـﮧيَٰ سٌٍهَٰہۧـہرِٰاَٰنٍٰ اَٰحٌٰرِٰسٌٍـﮧكٍٰمٍٰ مٍٰـﮧטּ تّٰـرِٰاَٰمٍٰـﮧبٌِٰ😿😹🙌ֆ"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'اكو احد' then
moody = "• يَٰ عٍِّيَٰـنٍٰـﮧيَٰ اَٰنٍٰـہيَٰ مٍٰـوٍّ૭جًِّـﮧوٍّدِٰ🌝✨ֆ"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'فديت' then
moody = "•فِٰـﮧﮧدِٰاَٰكٍٰ/جًِّ ثِْْـﮧوٍّ୪لْٰاَٰنٍٰ اَٰلْٰكٍٰـرِٰوٍّ୭بٌِٰ😟😂💚ֆ"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'شكو' then
moody = "• كٍٰلْٰـشَُـﮧﮧيَٰ مٍٰـہاَٰكٍٰـﮧوٍّ اَٰرِٰجًِّـعٍِّ نٍٰـاَٰمٍٰ🐼🌩ֆ"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'اوف' then
moody = "• هَٰہۧـﮧﮧاَٰيَٰ اَٰوٍّفِٰ مٍٰنٍٰ يَٰـاَٰ نٍٰـوٍّ୭عٍِّ صُِـاَٰرِٰتّٰ اَٰلْٰـسٌٍاَٰلْٰفِٰهَٰہۧ مٍٰتّٰـنٍٰعٍِّرِٰفِٰ🌚🌙ֆ"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'احبج' then
moody = "•جًِّـﮧذَْاَٰبٌِٰ يَٰـرِٰيَٰدِٰ يَٰطَُِـہكٍٰجًِّ😹🌞⚡️ֆ"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end
if text == 'انتة منو' then
moody = "• اَٰنٍٰـﮧﮧيَٰ بٌِٰـوٍّ໑تّٰ💨🌝ֆ"
send(msg.chat_id_, msg.id_, 1, moody, 1, 'md')
end

end
if  (text and text == 'تفعيل ردود البوت') and is_owner(msg) then
    if not database:get('tshake:'..bot_id..'rep:mute'..msg.chat_id_) then
  send(msg.chat_id_, msg.id_, 1, '☑┇ردود البوت بالفعل تم تفعيلها', 1, 'md')
    else
  send(msg.chat_id_, msg.id_, 1, '☑┇تم تفعيل ردود البوت', 1, 'md')
   database:del('tshake:'..bot_id..'rep:mute'..msg.chat_id_)
  end
  end
  if(text and text == 'تعطيل ردود البوت') and is_owner(msg) then
    if database:get('tshake:'..bot_id..'rep:mute'..msg.chat_id_) then
  send(msg.chat_id_, msg.id_, 1, '☑┇ردود البوت بالفعل تم تعطيلها', 1, 'md')
  else
  send(msg.chat_id_, msg.id_, 1, '☑┇تم تعطيل ردود البوت', 1, 'md')
    database:set('tshake:'..bot_id..'rep:mute'..msg.chat_id_,true)
  end
    end

end
return {
	keko_tshake = keko_tshake,
}
--[[
BY : TshAkETEAM
Channel Files : https://t.me/AKJA0
]]
