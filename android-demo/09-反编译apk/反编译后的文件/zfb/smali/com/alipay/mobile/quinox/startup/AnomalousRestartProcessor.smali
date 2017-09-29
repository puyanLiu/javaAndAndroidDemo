.class public Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;
.super Ljava/lang/Object;
.source "AnomalousRestartProcessor.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static a:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;


# instance fields
.field private b:Z

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->b:Z

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    return-void
.end method

.method private static a(Ljava/util/List;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 189
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    const-string/jumbo v0, ""

    .line 201
    :goto_0
    return-object v0

    .line 192
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_2

    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_2
    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_3

    .line 196
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :cond_3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;J)Ljava/util/List;
    .locals 6

    .prologue
    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    return-object v0

    .line 171
    :cond_1
    const-string/jumbo v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 172
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 173
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 175
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private declared-synchronized a(J)Z
    .locals 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 254
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->d:Landroid/content/Context;

    const-string/jumbo v3, "framework_preferences"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 255
    const-string/jumbo v2, "pushARLogTime"

    const-string/jumbo v3, "-1"

    invoke-interface {v6, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 258
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 262
    :goto_0
    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 263
    sub-long v2, p1, v2

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 264
    :try_start_2
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "pushARLogTime"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    :goto_1
    monitor-exit p0

    return v0

    :catch_0
    move-exception v2

    move-wide v2, v4

    goto :goto_0

    :cond_0
    move v0, v1

    .line 267
    goto :goto_1

    .line 270
    :cond_1
    :try_start_3
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "pushARLogTime"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$0(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;Ljava/lang/String;J)Ljava/util/List;
    .locals 1

    .prologue
    .line 165
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;Ljava/util/List;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    invoke-static {p1, p2}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;J)Z
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->b(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;J)Z
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a(J)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized b(J)Z
    .locals 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 283
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->d:Landroid/content/Context;

    const-string/jumbo v3, "framework_preferences"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 284
    const-string/jumbo v2, "mainARLogTime"

    const-string/jumbo v3, "-1"

    invoke-interface {v6, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 287
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 291
    :goto_0
    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 292
    sub-long v2, p1, v2

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 293
    :try_start_2
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "mainARLogTime"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    :goto_1
    monitor-exit p0

    return v0

    :catch_0
    move-exception v2

    move-wide v2, v4

    goto :goto_0

    :cond_0
    move v0, v1

    .line 296
    goto :goto_1

    .line 299
    :cond_1
    :try_start_3
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "mainARLogTime"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    if-nez v0, :cond_1

    .line 52
    const-class v1, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->d:Landroid/content/Context;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->b:Z

    .line 65
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$1;-><init>(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    :cond_0
    :goto_0
    return-object p0

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$2;-><init>(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setUIStarted(Z)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71
    return-void
.end method

.method public declared-synchronized shouldReportPushProcessException(J)Z
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->d:Landroid/content/Context;

    const-string/jumbo v2, "framework_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 213
    const-string/jumbo v0, "pushProcessCrashLogTimes"

    const-string/jumbo v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v3

    .line 215
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 216
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v0, 0x2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    const-wide/16 v6, 0x3c

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    move v0, v1

    .line 222
    :goto_0
    monitor-exit p0

    return v0

    .line 221
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pushProcessCrashLogTimes"

    const/4 v2, 0x2

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    const/4 v0, 0x1

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldReportPushProcessOtherException(J)Z
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->d:Landroid/content/Context;

    const-string/jumbo v2, "framework_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 234
    const-string/jumbo v0, "pushProcessOtherCrashLogTimes"

    const-string/jumbo v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v3

    .line 236
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 237
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v0, 0x2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    const-wide/16 v6, 0x3c

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    move v0, v1

    .line 243
    :goto_0
    monitor-exit p0

    return v0

    .line 242
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pushProcessOtherCrashLogTimes"

    const/4 v2, 0x2

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    const/4 v0, 0x1

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
