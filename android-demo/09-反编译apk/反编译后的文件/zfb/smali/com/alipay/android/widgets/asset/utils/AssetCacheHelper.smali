.class public final Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;
.super Ljava/lang/Object;
.source "AssetCacheHelper.java"


# static fields
.field private static a:Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;


# instance fields
.field private b:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

.field private c:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

.field private d:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 65
    const-class v0, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    .line 66
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->b:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    .line 69
    const-class v0, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    .line 68
    iput-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->c:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    .line 71
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "wealthhome_preference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->d:Landroid/content/SharedPreferences;

    .line 73
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;
    .locals 2

    .prologue
    .line 51
    const-class v1, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a:Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    invoke-direct {v0}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;-><init>()V

    sput-object v0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a:Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    .line 54
    :cond_0
    sget-object v0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a:Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->c:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    .line 164
    const-string/jumbo v2, "_wealthWidgetHomeData_hide_amount"

    .line 165
    new-instance v3, Lcom/alipay/android/widgets/asset/utils/c;

    invoke-direct {v3, p0}, Lcom/alipay/android/widgets/asset/utils/c;-><init>(Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;)V

    .line 163
    invoke-virtual {v0, p1, v2, v3}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->get(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 167
    if-nez v0, :cond_0

    move v0, v1

    .line 171
    :goto_0
    return v0

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;
    .locals 4

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->c:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    .line 110
    const-string/jumbo v2, "_wealthWidgetHomeData_9_0"

    .line 111
    new-instance v3, Lcom/alipay/android/widgets/asset/utils/a;

    invoke-direct {v3, p0}, Lcom/alipay/android/widgets/asset/utils/a;-><init>(Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;)V

    .line 109
    invoke-virtual {v0, p1, v2, v3}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->get(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-class v3, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->b:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeDynamicV92Result;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 131
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->c:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    const-string/jumbo v1, "_wealthWidgetHomeData_9_0"

    invoke-virtual {v0, p2, v1, p1}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthHome"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8bbe\u7f6e\u7f13\u5b58\uff0cwealthHomeResult="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-class v2, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->c:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    const-string/jumbo v1, "_wealthWidgetHomeData_insurance_guide"

    .line 155
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 154
    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-class v2, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;)V
    .locals 4

    .prologue
    .line 221
    if-nez p2, :cond_0

    .line 231
    :goto_0
    return-void

    .line 225
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->c:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    const-string/jumbo v1, "_wealthWidgetAnalyzeData"

    invoke-virtual {v0, p1, v1, p2}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "wealthAnalysis"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8bbe\u7f6e\u7f13\u5b58\uff0cwealthAnalysisResult="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-class v2, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->b:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "amount_hide_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 188
    return-void
.end method

.method public final b(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->c:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    .line 142
    const-string/jumbo v2, "_wealthWidgetHomeData_insurance_guide"

    .line 143
    new-instance v3, Lcom/alipay/android/widgets/asset/utils/b;

    invoke-direct {v3, p0}, Lcom/alipay/android/widgets/asset/utils/b;-><init>(Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;)V

    .line 141
    invoke-virtual {v0, p1, v2, v3}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->get(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 145
    if-nez v0, :cond_0

    move v0, v1

    .line 149
    :goto_0
    return v0

    .line 145
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->d:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "amount_hide_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-direct {p0, p1}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->e(Ljava/lang/String;)Z

    move-result v0

    .line 181
    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->a(Ljava/lang/String;Z)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->d:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "amount_hide_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;
    .locals 6

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;->c:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    .line 238
    const-string/jumbo v2, "_wealthWidgetAnalyzeData"

    .line 239
    new-instance v3, Lcom/alipay/android/widgets/asset/utils/d;

    invoke-direct {v3, p0}, Lcom/alipay/android/widgets/asset/utils/d;-><init>(Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;)V

    .line 237
    invoke-virtual {v0, p1, v2, v3}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->get(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthAnalysisResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "WealthHome"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u83b7\u53d6\u7f13\u5b58\uff0cwealthHomeResult="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    :goto_0
    return-object v0

    .line 242
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 243
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-class v3, Lcom/alipay/android/widgets/asset/utils/AssetCacheHelper;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 242
    :catch_1
    move-exception v1

    goto :goto_1
.end method
