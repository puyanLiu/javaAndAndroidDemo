.class public Lcom/alipay/android/app/helper/TidHelper;
.super Ljava/lang/Object;
.source "TidHelper.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/helper/TidHelper;->a:Z

    .line 48
    return-void
.end method

.method public static a()Lcom/alipay/android/app/helper/Tid;
    .locals 4

    .prologue
    .line 265
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->f()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "loadLocalTid:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    .line 267
    new-instance v1, Lcom/alipay/android/app/helper/Tid;

    invoke-direct {v1}, Lcom/alipay/android/app/helper/Tid;-><init>()V

    .line 268
    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/helper/Tid;->setTid(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/helper/Tid;->setTidSeed(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/helper/Tid;->setTimestamp(J)V

    .line 271
    return-object v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;
    .locals 4

    .prologue
    .line 78
    const-class v1, Lcom/alipay/android/app/helper/TidHelper;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 81
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->i(Landroid/content/Context;)V

    .line 82
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->i(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->f()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->a(Lcom/alipay/android/app/tid/TidInfo;)Lcom/alipay/android/app/helper/Tid;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 83
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/Tid;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 85
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    const/4 v0, 0x0

    .line 94
    :cond_1
    :goto_1
    monitor-exit v1

    return-object v0

    .line 82
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "TidHelper:::loadTID > "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 89
    :cond_3
    const/4 v2, 0x1

    :try_start_2
    invoke-static {p0, v2}, Lcom/alipay/android/app/helper/TidHelper;->a(Landroid/content/Context;Z)Lcom/alipay/android/app/helper/Tid;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 90
    :catch_0
    move-exception v2

    :try_start_3
    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Z)Lcom/alipay/android/app/helper/Tid;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 177
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 178
    new-instance v7, Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-direct {v7}, Lcom/alipay/android/app/logic/request/RequestConfig;-><init>()V

    .line 179
    const-string/jumbo v0, "cashier"

    invoke-virtual {v7, v0}, Lcom/alipay/android/app/logic/request/RequestConfig;->a(Ljava/lang/String;)V

    .line 180
    const-string/jumbo v0, "gentid"

    invoke-virtual {v7, v0}, Lcom/alipay/android/app/logic/request/RequestConfig;->b(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->e()Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-static {v7}, Lcom/alipay/android/app/logic/util/LogicPackUtils;->a(Lcom/alipay/android/app/logic/request/RequestConfig;)[B

    move-result-object v1

    .line 184
    invoke-virtual {v7}, Lcom/alipay/android/app/logic/request/RequestConfig;->n()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-static {v7}, Lcom/alipay/android/app/logic/util/LogicHeaderUtil;->a(Lcom/alipay/android/app/logic/request/RequestConfig;)Ljava/util/List;

    move-result-object v4

    .line 186
    invoke-static {v3}, Lcom/alipay/android/app/source/ResponseWrapperFactory;->a(Ljava/lang/String;)Lcom/alipay/android/app/source/IResponseWrapper;

    move-result-object v0

    .line 187
    invoke-interface/range {v0 .. v5}, Lcom/alipay/android/app/source/IResponseWrapper;->a([BLjava/lang/String;Ljava/lang/String;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    .line 188
    check-cast v0, [Ljava/lang/Object;

    .line 189
    aget-object v0, v0, v5

    check-cast v0, Ljava/util/Map;

    .line 190
    const-string/jumbo v1, "content"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    const-string/jumbo v2, "msp-gzip"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/alipay/android/app/logic/request/RequestConfig;->a(Z)V

    .line 194
    invoke-static {v1, v7}, Lcom/alipay/android/app/logic/util/LogicPackUtils;->a(Ljava/lang/String;Lcom/alipay/android/app/logic/request/RequestConfig;)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    .line 197
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 199
    const-string/jumbo v1, "params"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    .line 200
    if-nez v1, :cond_0

    move v0, v5

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 202
    invoke-static {p0, v5}, Lcom/alipay/android/app/helper/TidHelper;->a(Landroid/content/Context;Z)Lcom/alipay/android/app/helper/Tid;

    move-result-object v0

    .line 226
    :goto_1
    return-object v0

    .line 200
    :cond_0
    const-string/jumbo v0, "public_key"

    invoke-virtual {v1, v0, v6}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alipay/android/app/IAppConfig;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->setRsaPublicKey(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_0

    .line 204
    :cond_2
    const-string/jumbo v0, "tid"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    const-string/jumbo v0, "client_key"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 209
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 210
    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/MspConfig;->q()Ljava/lang/String;

    move-result-object v0

    .line 213
    :cond_3
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->f()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v1

    .line 214
    invoke-virtual {v1, v2}, Lcom/alipay/android/app/tid/TidInfo;->a(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/tid/TidInfo;->b(Ljava/lang/String;)V

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/tid/TidInfo;->a(J)V

    .line 217
    invoke-virtual {v1, p0}, Lcom/alipay/android/app/tid/TidInfo;->a(Landroid/content/Context;)V

    move-object v0, v1

    .line 219
    :goto_2
    if-nez v0, :cond_4

    move-object v0, v6

    .line 220
    :goto_3
    if-nez v0, :cond_5

    .line 221
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    goto :goto_1

    .line 219
    :cond_4
    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->a(Lcom/alipay/android/app/tid/TidInfo;)Lcom/alipay/android/app/helper/Tid;

    move-result-object v0

    goto :goto_3

    .line 223
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "TidHelper:::requestTid > "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    goto :goto_1

    :cond_6
    move-object v0, v6

    goto :goto_2
.end method

.method private static a(Lcom/alipay/android/app/tid/TidInfo;)Lcom/alipay/android/app/helper/Tid;
    .locals 3

    .prologue
    .line 247
    if-nez p0, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 261
    :goto_0
    return-object v0

    .line 251
    :cond_0
    new-instance v0, Lcom/alipay/android/app/helper/Tid;

    invoke-direct {v0}, Lcom/alipay/android/app/helper/Tid;-><init>()V

    .line 253
    invoke-virtual {p0}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/helper/Tid;->setTid(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/alipay/android/app/tid/TidInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/helper/Tid;->setTidSeed(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/alipay/android/app/tid/TidInfo;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/helper/Tid;->setTimestamp(J)V

    goto :goto_0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    const-class v1, Lcom/alipay/android/app/helper/TidHelper;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->a(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/Tid;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/android/app/helper/Tid;->getTid()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 112
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 113
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 114
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "\u4e0d\u80fd\u5728\u4e3b\u7ebf\u7a0b\u4e2d\u8c03\u7528\u6b64\u65b9\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->i(Landroid/content/Context;)V

    .line 118
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->g()V

    .line 120
    invoke-static {p0, v0}, Lcom/alipay/android/app/helper/TidHelper;->a(Landroid/content/Context;Z)Lcom/alipay/android/app/helper/Tid;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/android/app/helper/Tid;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    :cond_1
    const/4 v0, 0x0

    .line 124
    :cond_2
    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->i(Landroid/content/Context;)V

    .line 137
    invoke-static {p0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->i(Landroid/content/Context;)V

    .line 142
    invoke-static {p0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->i(Landroid/content/Context;)V

    .line 147
    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/MspConfig;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->i(Landroid/content/Context;)V

    .line 152
    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/MspConfig;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 274
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V

    .line 276
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 277
    const-string/jumbo v2, "com.alipay.android.app"

    .line 278
    const/16 v3, 0x80

    .line 277
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 279
    if-nez v0, :cond_0

    move v0, v1

    .line 288
    :goto_0
    return v0

    .line 281
    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 282
    const-string/jumbo v2, "3.5.3"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v5, "\\."

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v0, "\\."

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v5, :cond_1

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v5, :cond_2

    move v2, v1

    :goto_3
    if-lt v2, v5, :cond_3

    move v0, v1

    :goto_4
    if-gez v0, :cond_5

    move v0, v1

    .line 283
    goto :goto_0

    .line 282
    :cond_1
    const-string/jumbo v0, "0"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "msp"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 286
    goto :goto_0

    .line 282
    :cond_2
    :try_start_1
    const-string/jumbo v0, "0"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v6, v0, :cond_4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    sub-int v0, v3, v0

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 288
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private static i(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 156
    sget-boolean v0, Lcom/alipay/android/app/helper/TidHelper;->a:Z

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/helper/TidHelper;->a:Z

    .line 160
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V

    .line 161
    invoke-static {p0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
