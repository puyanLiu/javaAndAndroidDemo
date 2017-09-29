.class public Lcom/alipay/pushsdk/push/s;
.super Ljava/lang/Object;
.source "PushSettingInfo.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/alipay/pushsdk/push/s;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 14
    sput-object v0, Lcom/alipay/pushsdk/push/s;->a:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alipay/pushsdk/push/s;->b:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/pushsdk/push/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/i;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/i;

    move-result-object v0

    .line 79
    const-string/jumbo v1, "setting_timectrl_state"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    return-void
.end method

.method public final a()Z
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x1

    .line 27
    iget-object v1, p0, Lcom/alipay/pushsdk/push/s;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/pushsdk/util/i;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/i;

    move-result-object v1

    .line 28
    const-string/jumbo v2, "setting_notify_state"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 31
    const-string/jumbo v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 34
    :cond_0
    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/pushsdk/push/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/i;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/i;

    move-result-object v0

    .line 100
    const-string/jumbo v1, "setting_tracelog_state"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x1

    .line 68
    iget-object v1, p0, Lcom/alipay/pushsdk/push/s;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/pushsdk/util/i;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/i;

    move-result-object v1

    .line 69
    const-string/jumbo v2, "setting_timectrl_state"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 72
    const-string/jumbo v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 74
    :cond_0
    return v0
.end method

.method public final c()Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 83
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lcom/alipay/pushsdk/push/s;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/pushsdk/util/i;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/i;

    move-result-object v1

    .line 86
    const-string/jumbo v2, "setting_tracelog_state"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    sget-object v2, Lcom/alipay/pushsdk/push/s;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getTraceLogState="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 92
    const-string/jumbo v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 95
    :cond_1
    return v0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/pushsdk/push/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/i;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/i;

    move-result-object v0

    .line 106
    const-string/jumbo v1, "setting_time_start"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 108
    :cond_0
    const-string/jumbo v0, "8"

    .line 111
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x4

    .line 136
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/s;->d()I

    move-result v2

    .line 137
    iget-object v0, p0, Lcom/alipay/pushsdk/push/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/i;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/i;

    move-result-object v0

    const-string/jumbo v3, "setting_time_end"

    invoke-virtual {v0, v3}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v0, "22"

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 139
    invoke-static {}, Lcom/alipay/pushsdk/util/o;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 140
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    sget-object v4, Lcom/alipay/pushsdk/push/s;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "isNotificationTime() settingStart="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", settingEnd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", curHour="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 143
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 141
    invoke-static {v7, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_2
    if-ge v3, v0, :cond_3

    if-lt v3, v2, :cond_3

    move v0, v1

    .line 160
    :goto_0
    return v0

    .line 150
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/s;->b()Z

    move-result v0

    .line 151
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 152
    sget-object v2, Lcom/alipay/pushsdk/push/s;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isNotificationTime() timeCtrl="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-static {v7, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_4
    if-nez v0, :cond_5

    move v0, v1

    .line 158
    goto :goto_0

    .line 160
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
