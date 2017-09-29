.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;
.super Ljava/lang/Object;
.source "OpenplatformConfig.java"


# static fields
.field private static final APP_STORE_CONFIG:Ljava/lang/String; = "APP_STORE_CONFIG"

.field private static final APP_STORE_FIRST_TIME:Ljava/lang/String; = "APP_STORE_FIRST_TIME_"

.field private static final KEY_FIRST_TIME:Ljava/lang/String;

.field private static final KEY_HAS_MOVED_APP:Ljava/lang/String; = "key_has_moved_app"

.field private static final KEY_LAST_LOGIN:Ljava/lang/String; = "APP_STORE_LOGIN_VERSION"

.field private static final KEY_LAST_SECURITY_STAGE:Ljava/lang/String; = "key_last_security_stage"

.field private static final KEY_LAST_USER:Ljava/lang/String; = "key_last_user"

.field private static final KEY_MORE_APP_NEW_FLAG:Ljava/lang/String; = "key_more_app_new_flag"

.field private static final KEY_NEED_FETCH_APPS:Ljava/lang/String; = "key_need_fetch_apps"

.field private static final KEY_NEED_FETCH_CONFIGSTAGE:Ljava/lang/String; = "key_need_fetch_configstage"

.field private static final KEY_NEED_FETCH_SERVICEWINDOW_STAGE:Ljava/lang/String; = "key_need_fetch_windowservice_stage"

.field private static final KEY_NEED_FETCH_SOCIALSTAGE:Ljava/lang/String; = "key_need_fetch_socialstage"

.field private static final KEY_NEED_FETCH_SRARCHSTAGE:Ljava/lang/String; = "key_need_fetch_searchstage"

.field private static final KEY_NEED_FETCH_STRATEGY_STAGE:Ljava/lang/String; = "key_nedd_fetch_strategy_stage"

.field private static final KEY_NEED_FETCH_USERSTAGE:Ljava/lang/String; = "key_need_fetch_userstage"

.field private static final KEY_NEED_REFRESH_HOME:Ljava/lang/String; = "key_need_refresh_home"

.field private static final KEY_NEED_REFRESH_MORE:Ljava/lang/String; = "key_need_refresh_more"

.field private static final OLD_APP_STORE_FILE:Ljava/lang/String; = "APP_STORE_FIRST_TIME_8.3.0.092601"

.field private static final TAG:Ljava/lang/String; = "OpenplatformConfig"

.field private static sOpenplatformConfig:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;


# instance fields
.field private config:Landroid/content/SharedPreferences;

.field private oldConfig:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "APP_STORE_FIRST_TIME_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->KEY_FIRST_TIME:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->sOpenplatformConfig:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->oldConfig:Landroid/content/SharedPreferences;

    .line 54
    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    .line 59
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 60
    const-string/jumbo v1, "APP_STORE_FIRST_TIME_8.3.0.092601"

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->oldConfig:Landroid/content/SharedPreferences;

    .line 61
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 62
    const-string/jumbo v1, "APP_STORE_CONFIG"

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    .line 63
    return-void
.end method

.method private static getConfigBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 332
    .line 334
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "content://com.alipay.setting/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 336
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 337
    if-nez v1, :cond_0

    .line 348
    :goto_0
    return v7

    .line 341
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v6, :cond_1

    move v0, v6

    .line 344
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move v7, v0

    .line 348
    goto :goto_0

    :cond_1
    move v0, v7

    .line 342
    goto :goto_1

    .line 345
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v7

    .line 346
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "OpenplatformConfig"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 345
    :catch_1
    move-exception v1

    goto :goto_3

    :cond_2
    move v0, v7

    goto :goto_1
.end method

.method public static getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->sOpenplatformConfig:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->sOpenplatformConfig:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    .line 69
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->sOpenplatformConfig:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    return-object v0
.end method


# virtual methods
.method public clearHasMovedAppPreference()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->oldConfig:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->oldConfig:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    const-string/jumbo v1, "key_has_moved_app"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    :cond_0
    return-void
.end method

.method public getHasMovedApp()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->oldConfig:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->oldConfig:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "key_has_moved_app"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 130
    :cond_0
    return v0
.end method

.method public getLastUser()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "key_last_user"

    const-string/jumbo v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "-1"

    goto :goto_0
.end method

.method public getMoreAppNewFlag()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "key_more_app_new_flag"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 112
    :cond_0
    return v0
.end method

.method public getNeedFetchApps()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 187
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "key_need_fetch_apps"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 190
    :cond_0
    return v0
.end method

.method public getNeedFetchConfigStage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 217
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "key_need_fetch_configstage"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 220
    :cond_0
    return v0
.end method

.method public getNeedFetchSearchStage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 261
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "key_need_fetch_searchstage"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 264
    :cond_0
    return v0
.end method

.method public getNeedFetchServiceWindowStage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 231
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "key_need_fetch_windowservice_stage"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 234
    :cond_0
    return v0
.end method

.method public getNeedFetchSocialStage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 276
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "key_need_fetch_socialstage"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 279
    :cond_0
    return v0
.end method

.method public getNeedFetchStrategyStage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 246
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "key_nedd_fetch_strategy_stage"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 249
    :cond_0
    return v0
.end method

.method public getNeedFetchUserStage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 202
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "key_need_fetch_userstage"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 205
    :cond_0
    return v0
.end method

.method public getNeedRefreshHome()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "key_need_refresh_home"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 160
    :cond_0
    return v0
.end method

.method public getNeedRefreshMore()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "key_need_refresh_more"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 175
    :cond_0
    return v0
.end method

.method public isFirstLoginThisVersion()Z
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "APP_STORE_LOGIN_VERSION"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFirstTime()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->KEY_FIRST_TIME:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 76
    :cond_0
    return v0
.end method

.method public isPreOpen()Z
    .locals 2

    .prologue
    .line 324
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 326
    const-string/jumbo v1, "appcenter_pre"

    .line 325
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getConfigBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needRefreshSecurityStage(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 291
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "key_last_security_stage"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v0

    .line 296
    :cond_1
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 297
    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 299
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    .line 300
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 301
    const/4 v6, 0x2

    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 302
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    sub-long v3, v6, v4

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-gez v2, :cond_0

    move v0, v1

    .line 304
    goto :goto_0

    .line 306
    :catch_0
    move-exception v1

    .line 307
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "OpenplatformConfig"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFirstTime()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->KEY_FIRST_TIME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    :cond_0
    return-void
.end method

.method public setLastSecurityStageSetting(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    const-string/jumbo v2, "key_last_security_stage"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 319
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 321
    :cond_0
    return-void
.end method

.method public setLastUser(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 151
    const-string/jumbo v1, "key_last_user"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    :cond_0
    return-void
.end method

.method public setLoginVersion()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    const-string/jumbo v1, "APP_STORE_LOGIN_VERSION"

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    :cond_0
    return-void
.end method

.method public setMoreAppNewFlag(Z)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    const-string/jumbo v1, "key_more_app_new_flag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 124
    :cond_0
    return-void
.end method

.method public setNeedFetchApps(Z)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 196
    const-string/jumbo v1, "key_need_fetch_apps"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 197
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 199
    :cond_0
    return-void
.end method

.method public setNeedFetchConfigStage(Z)V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    const-string/jumbo v1, "key_need_fetch_configstage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 228
    :cond_0
    return-void
.end method

.method public setNeedFetchSearchStage(Z)V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 270
    const-string/jumbo v1, "key_need_fetch_searchstage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 271
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 273
    :cond_0
    return-void
.end method

.method public setNeedFetchServicewindowStage(Z)V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 240
    const-string/jumbo v1, "key_need_fetch_windowservice_stage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 243
    :cond_0
    return-void
.end method

.method public setNeedFetchSocialStage(Z)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 285
    const-string/jumbo v1, "key_need_fetch_socialstage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 288
    :cond_0
    return-void
.end method

.method public setNeedFetchStrategyStage(Z)V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 255
    const-string/jumbo v1, "key_nedd_fetch_strategy_stage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 256
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 258
    :cond_0
    return-void
.end method

.method public setNeedFetchUserStage(Z)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 211
    const-string/jumbo v1, "key_need_fetch_userstage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 214
    :cond_0
    return-void
.end method

.method public setNeedRefreshHome(Z)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 166
    const-string/jumbo v1, "key_need_refresh_home"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 169
    :cond_0
    return-void
.end method

.method public setNeedRefreshMore(Z)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    const-string/jumbo v1, "key_need_refresh_more"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 184
    :cond_0
    return-void
.end method
