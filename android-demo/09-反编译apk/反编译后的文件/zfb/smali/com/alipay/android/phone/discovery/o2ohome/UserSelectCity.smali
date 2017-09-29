.class public Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;
.super Ljava/lang/Object;
.source "UserSelectCity.java"


# static fields
.field private static final GROUPID:Ljava/lang/String; = "com.alipay.android.phone.discovery.o2ohome"

.field private static final HOUR_5_MINUTES:J = 0x12cL

.field private static final MINUTE_1_MILLIS:J = 0xea60L


# instance fields
.field private final context:Landroid/app/Activity;

.field private selAdCode:Ljava/lang/String;

.field private selCityName:Ljava/lang/String;

.field private timestampMinutes:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->selAdCode:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->selCityName:Ljava/lang/String;

    .line 23
    iput-wide v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->timestampMinutes:J

    .line 35
    iput-wide v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->timestampMinutes:J

    .line 36
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->context:Landroid/app/Activity;

    .line 37
    if-eqz p2, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->initCityInfoFromCache()V

    .line 47
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->initCityInfoFromCache()V

    return-void
.end method

.method private getLocationExpiryMinutes()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x12c

    .line 84
    .line 85
    const-string/jumbo v2, "O2OHOME_LOCATION_EXPIRY_MINUTES"

    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/ConfigServiceUtils;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 93
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 98
    :cond_0
    :goto_1
    return-wide v0

    .line 89
    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    move-wide v2, v0

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method private declared-synchronized initCityInfoFromCache()V
    .locals 4

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/util/ConfigServiceUtils;->getCurUserId()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->context:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "com.alipay.android.phone.discovery.o2ohome"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    const-string/jumbo v1, "selAdCode"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->selAdCode:Ljava/lang/String;

    .line 123
    const-string/jumbo v1, "selCityName"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->selCityName:Ljava/lang/String;

    .line 124
    const-string/jumbo v1, "selTimestamp"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->timestampMinutes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_0
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isCacheValid()Z
    .locals 6

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->timestampMinutes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->getLocationExpiryMinutes()J

    move-result-wide v0

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->timestampMinutes:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized saveCityInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/util/ConfigServiceUtils;->getCurUserId()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->context:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "com.alipay.android.phone.discovery.o2ohome"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->selAdCode:Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->selCityName:Ljava/lang/String;

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->timestampMinutes:J

    .line 109
    const-string/jumbo v1, "selAdCode"

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->selAdCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    const-string/jumbo v1, "selCityName"

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->selCityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    const-string/jumbo v1, "selTimestamp"

    iget-wide v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->timestampMinutes:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putLong(Ljava/lang/String;J)Z

    .line 112
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getSelectCity()Lcom/alipay/mobile/beehive/cityselect/model/CityVO;
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->isCacheValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->selAdCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->adCode:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->selCityName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    .line 77
    :cond_0
    return-object v0
.end method

.method public saveSelectCityInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->saveCityInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method
