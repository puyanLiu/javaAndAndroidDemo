.class public Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;
.super Ljava/lang/Object;
.source "SocialPreferenceManager.java"


# static fields
.field private static a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getSocialSharedPreferences()Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getSocialSharedPreferences()Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getSocialSharedPreferences()Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized getSocialSharedPreferences()Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    .locals 3

    .prologue
    .line 14
    const-class v1, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    if-nez v0, :cond_0

    .line 16
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 17
    const-string/jumbo v2, "com.alipay.android.phone.social"

    .line 15
    invoke-static {v0, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    .line 19
    :cond_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->a:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getSocialSharedPreferences()Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static putBoolean(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getSocialSharedPreferences()Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 30
    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 31
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 32
    return-void
.end method

.method public static putInt(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getSocialSharedPreferences()Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putInt(Ljava/lang/String;I)Z

    .line 37
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 38
    return-void
.end method

.method public static putLong(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getSocialSharedPreferences()Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putLong(Ljava/lang/String;J)Z

    .line 43
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 44
    return-void
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getSocialSharedPreferences()Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 25
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 26
    return-void
.end method
