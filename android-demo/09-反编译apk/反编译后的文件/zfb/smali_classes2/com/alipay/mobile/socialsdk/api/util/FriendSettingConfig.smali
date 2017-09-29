.class public Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;
.super Ljava/lang/Object;
.source "FriendSettingConfig.java"


# static fields
.field private static b:Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;


# instance fields
.field private final a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->b:Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getSocialSharedPreferences()Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    .line 35
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->b:Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->b:Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    .line 41
    :cond_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->b:Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    return-object v0
.end method


# virtual methods
.method public getAcceptNewMsgNotify()Z
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_ACCEPT_NEW_MSG_NOTIFY"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAcceptNewMsgNotifyAll()[Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 57
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v3, "KEY_ACCEPT_NEW_MSG_NOTIFY"

    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 58
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v2, "KEY_SHOW_MSG_DETAIL"

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, v0, v4

    .line 59
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v3, "KEY_PLAY_SOUND"

    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 60
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v3, "KEY_VIBRATE"

    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 62
    return-object v0
.end method

.method public getBgToAllChat()Z
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_SET_BG_TO_ALL_CHAT"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getNeedVerify()Z
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_NEED_VERIFY"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getNoDisturbEndTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_SET_NO_DISTURB_END_TIME"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u65e9\u4e0a08:00"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoDisturbMode()Z
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_SET_NO_DISTURB_MODE"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getNoDisturbStartTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_SET_NO_DISTURB_START_TIME"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u665a\u4e0a11:00"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaySound()Z
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_PLAY_SOUND"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSearchByAccount()Z
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_CAN_SERACH_BY_ACCOUNT"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSearchByAlipayUserName()Z
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "key_can_search_by_alipay_username"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSearchByPhone()Z
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_CAN_SERACH_BY_PHONE"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSendMeContact()Z
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_SEND_CONTACT"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowMsgDetail()Z
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_SHOW_MSG_DETAIL"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_SET_SIGNATURE"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoundName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_SOUND_NAME"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u8ddf\u968f\u7cfb\u7edf"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseBackKey()Z
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_USE_BACK_KEY"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUseEar()Z
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_USE_MIC"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVibrate()Z
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_VIBRATE"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAcceptNewMsgNotify(Z)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_ACCEPT_NEW_MSG_NOTIFY"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 74
    return-void
.end method

.method public setBgToAllChat(Z)V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_SET_BG_TO_ALL_CHAT"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 313
    return-void
.end method

.method public setMineConfig(Ljava/lang/String;ZZZZZZ)V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_SET_SIGNATURE"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_CAN_SERACH_BY_PHONE"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 411
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_CAN_SERACH_BY_ACCOUNT"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 412
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "key_can_search_by_alipay_username"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 413
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_SEND_CONTACT"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_SHOW_MSG_DETAIL"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p6}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_NEED_VERIFY"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p7}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 416
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 417
    return-void
.end method

.method public setNeedVerify(Z)V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_NEED_VERIFY"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 214
    return-void
.end method

.method public setNoDisturbEndTime(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_SET_NO_DISTURB_END_TIME"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 371
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 372
    return-void
.end method

.method public setNoDisturbMode(Z)V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_SET_NO_DISTURB_MODE"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 333
    return-void
.end method

.method public setNoDisturbStartTime(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_SET_NO_DISTURB_START_TIME"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 353
    return-void
.end method

.method public setPlaySound(Z)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_PLAY_SOUND"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 115
    return-void
.end method

.method public setSearchByAccount(Z)V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_CAN_SERACH_BY_ACCOUNT"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 254
    return-void
.end method

.method public setSearchByAlipayUserName(Z)V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "key_can_search_by_alipay_username"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 273
    return-void
.end method

.method public setSearchByPhone(Z)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_CAN_SERACH_BY_PHONE"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 293
    return-void
.end method

.method public setSendMeContact(Z)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_SEND_CONTACT"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 234
    return-void
.end method

.method public setShowMsgDetail(Z)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_SHOW_MSG_DETAIL"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 95
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_SET_SIGNATURE"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 390
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 391
    return-void
.end method

.method public setSoundName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_SOUND_NAME"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 134
    return-void
.end method

.method public setUseBackKey(Z)V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_USE_BACK_KEY"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 194
    return-void
.end method

.method public setUseEar(Z)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_USE_MIC"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 174
    return-void
.end method

.method public setVibrate(Z)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "KEY_VIBRATE"

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 154
    return-void
.end method
