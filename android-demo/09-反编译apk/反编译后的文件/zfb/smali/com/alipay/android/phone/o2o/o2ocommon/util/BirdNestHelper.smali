.class public Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;
.super Ljava/lang/Object;
.source "BirdNestHelper.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private final templateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "o2ohome.BirdNestHelper"

    sput-object v0, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->context:Landroid/content/Context;

    .line 29
    const-class v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-static {v0}, Lcom/alipay/android/phone/o2o/o2ocommon/util/OpenPageHelper;->getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iput-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->templateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 30
    return-void
.end method


# virtual methods
.method public buildTemplate(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->templateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->templateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iget-object v4, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, p1, v4}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->handleBirdResponse(Ljava/util/Map;Landroid/content/Context;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    :goto_0
    const-string/jumbo v1, "O2OHOME"

    const-string/jumbo v4, "BirdNest_Rsp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v2

    invoke-static {v1, v4, v2, v3}, Lcom/alipay/android/phone/o2o/o2ocommon/util/MonitorLogHelper;->performance(Ljava/lang/String;Ljava/lang/String;J)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->checkLocalTemplate(Ljava/util/Map;)V

    .line 46
    :cond_0
    return-object v0

    .line 38
    :catch_0
    move-exception v1

    .line 39
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v5, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "buildTemplate(1) Exception"

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public buildTemplate(Ljava/util/Map;Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper$OnTemplatePrepareFinish;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper$OnTemplatePrepareFinish;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->templateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->templateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iget-object v4, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, p1, v4}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->handleBirdResponse(Ljava/util/Map;Landroid/content/Context;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    :goto_0
    const-string/jumbo v1, "O2OHOME"

    const-string/jumbo v4, "BirdNest_Rsp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v2

    invoke-static {v1, v4, v2, v3}, Lcom/alipay/android/phone/o2o/o2ocommon/util/MonitorLogHelper;->performance(Ljava/lang/String;Ljava/lang/String;J)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->checkLocalTemplate(Ljava/util/Map;)V

    .line 63
    :cond_0
    if-eqz p2, :cond_1

    .line 64
    invoke-interface {p2, v0}, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper$OnTemplatePrepareFinish;->onFinish(Ljava/util/Map;)V

    .line 66
    :cond_1
    return-void

    .line 55
    :catch_0
    move-exception v1

    .line 56
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v5, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "buildTemplate(2) Exception"

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public checkLocalTemplate(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    :cond_1
    return-void

    .line 101
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    if-ne v0, v3, :cond_0

    .line 103
    iget-object v3, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->templateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->context:Landroid/content/Context;

    invoke-virtual {v3, v0, v4}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->getCachedTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v3

    .line 104
    if-eqz v3, :cond_0

    .line 105
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->EXIST:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v1, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v5, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "use local birdNest template: "

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " versionTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBirdParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->templateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->templateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public requestTemplateAsync(Ljava/util/Map;Lcom/alipay/android/app/template/service/HandleBirdResponseCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/android/app/template/service/HandleBirdResponseCallback;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 69
    if-eqz p2, :cond_0

    .line 70
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->templateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->templateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iget-object v1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v1, p2}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->handleBirdResponseAsync(Ljava/util/Map;Landroid/content/Context;Lcom/alipay/android/app/template/service/HandleBirdResponseCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-interface {p2, v2}, Lcom/alipay/android/app/template/service/HandleBirdResponseCallback;->callback(Ljava/util/Map;)V

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/o2o/o2ocommon/util/BirdNestHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "buildTemplate(3) Exception"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 75
    :catch_1
    move-exception v0

    .line 82
    :cond_1
    invoke-interface {p2, v2}, Lcom/alipay/android/app/template/service/HandleBirdResponseCallback;->callback(Ljava/util/Map;)V

    goto :goto_0
.end method
