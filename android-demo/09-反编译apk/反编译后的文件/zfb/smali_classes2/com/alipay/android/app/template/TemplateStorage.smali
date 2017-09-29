.class Lcom/alipay/android/app/template/TemplateStorage;
.super Ljava/lang/Object;
.source "TemplateStorage.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/alipay/android/app/template/TplDbHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateStorage;->a:Ljava/lang/Object;

    .line 27
    new-instance v0, Lcom/alipay/android/app/template/TplDbHelper;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/template/TplDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateStorage;->b:Lcom/alipay/android/app/template/TplDbHelper;

    .line 28
    return-void
.end method

.method private b(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    .line 80
    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateStorage;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 82
    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/app/template/TemplateStorage;->b:Lcom/alipay/android/app/template/TplDbHelper;

    invoke-virtual {v3}, Lcom/alipay/android/app/template/TplDbHelper;->getTplDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    .line 83
    if-eqz v3, :cond_3

    .line 85
    iget-object v4, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 86
    iget-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    .line 87
    iget-object v4, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    .line 89
    :cond_0
    invoke-interface {v3, p1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    move-result-object v3

    .line 90
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->isCreated()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 91
    :cond_2
    iput-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_3
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 98
    return v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string/jumbo v3, "TemplateStorage.writeToDB"

    .line 95
    const-string/jumbo v4, "Error occur"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    .line 94
    invoke-static {v3, v4, v0, v5}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private c(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 121
    :goto_0
    return-object v0

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateStorage;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateStorage;->b:Lcom/alipay/android/app/template/TplDbHelper;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TplDbHelper;->getTplDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_2

    .line 110
    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    .line 111
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 112
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v3, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    :try_start_2
    const-string/jumbo v3, "TemplateStorage.readFromDB"

    .line 118
    const-string/jumbo v4, "Error occur"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    .line 117
    invoke-static {v3, v4, v0, v5}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    .line 121
    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/TemplateStorage;->c(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 35
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v0

    .line 36
    if-eqz p1, :cond_1

    .line 37
    iget-object v1, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_2
    const-string/jumbo v0, "EMPTY"

    .line 41
    :goto_0
    const-string/jumbo v1, "TemplateStorage.saveTemplate"

    .line 42
    const-string/jumbo v2, "failed"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "template(id:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ") is invalid"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v1, v2, v0, v5}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    const/4 v0, 0x0

    .line 48
    :goto_1
    return v0

    .line 40
    :cond_3
    iget-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_4
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/TemplateStorage;->b(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move-result v1

    .line 46
    const-string/jumbo v2, "TemplateStorage.saveTemplate"

    .line 47
    if-eqz v1, :cond_5

    const-string/jumbo v0, "success"

    :goto_2
    iget-object v3, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    .line 46
    invoke-static {v2, v0, v3, v5}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move v0, v1

    .line 48
    goto :goto_1

    .line 47
    :cond_5
    const-string/jumbo v0, "fail"

    goto :goto_2
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateStorage;->b:Lcom/alipay/android/app/template/TplDbHelper;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/TplDbHelper;->getTplDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    .line 68
    if-eqz v2, :cond_1

    .line 69
    invoke-interface {v2, p1}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v0, v2, :cond_0

    .line 75
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 69
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    const-string/jumbo v2, "TemplateStorage.deleteTemplate"

    .line 73
    const-string/jumbo v3, "Error occur"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    .line 72
    invoke-static {v2, v3, v0, v4}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    move v0, v1

    .line 75
    goto :goto_0
.end method
