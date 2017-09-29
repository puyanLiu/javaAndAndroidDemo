.class public final Lcom/alipay/mobile/quinox/startup/StartupSafeguard;
.super Ljava/lang/Object;
.source "StartupSafeguard.java"


# static fields
.field static final ANOMALOUS_STARTUP_CRASH:Ljava/lang/String; = "crash"

.field static final ANOMALOUS_STARTUP_PENDING:Ljava/lang/String; = "pending"

.field static final KEY_STARTUP_RECORD_CRASH_TIMES:Ljava/lang/String; = "key_startup_record_times"

.field static final KEY_STARTUP_RECORD_PENDING_TIMES:Ljava/lang/String; = "key_startup_record_times"

.field public static final TAG:Ljava/lang/String; = "StartupSafeguard"

.field private static a:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/util/concurrent/CountDownLatch;

.field private i:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->i:J

    .line 82
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->h:Ljava/util/concurrent/CountDownLatch;

    .line 83
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 208
    const-string/jumbo v0, "framework_preferences"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 209
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v2, v2, 0x4

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    return v1
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ", bootFinish="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", finalClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    packed-switch p2, :pswitch_data_0

    .line 227
    const-string/jumbo v1, "StartupSafeguard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "clear some user data: times="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v1, "StartupSafeguard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "clearApplicationUserData(Partial): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 230
    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V

    .line 232
    const-string/jumbo v1, "pending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 238
    const-string/jumbo v1, "contactsdb"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    const-string/jumbo v1, "chatmsgdb"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    const-string/jumbo v1, "timelinedb"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    const-string/jumbo v1, "multimedia"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->clearApplicationDatabase(Landroid/content/Context;Ljava/util/Set;)V

    .line 245
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "_config.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    const-string/jumbo v1, "framework_preferences"

    const-string/jumbo v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    const-string/jumbo v1, "hotpatch_filepath_md5_storage.xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    const-string/jumbo v1, "DynamicRelease.xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    const-string/jumbo v1, "CrashCountInfo.xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    const-string/jumbo v1, "com.alipay.android.phone.social.xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    const-string/jumbo v1, "com.alipay.mobile.emotion.xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    const-string/jumbo v1, "com.alipay.android.phone.social.search.xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->clearSharePreference(Landroid/content/Context;Ljava/util/Set;)V

    goto :goto_0

    .line 258
    :pswitch_0
    const-string/jumbo v1, "StartupSafeguard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "clear all user data: times="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string/jumbo v1, "StartupSafeguard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "clearApplicationUserData(All): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 261
    invoke-static {v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->upload(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v1, "pending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 271
    const-string/jumbo v1, "CrashCountInfo.xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 272
    const-string/jumbo v1, "com.alipay.android.phone.social.xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    const-string/jumbo v1, "com.alipay.mobile.emotion.xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    const-string/jumbo v1, "com.alipay.android.phone.social.search.xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 275
    const-string/jumbo v1, "lib"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    const-string/jumbo v1, "mdap"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 279
    const-string/jumbo v2, "contactsdb"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    const-string/jumbo v2, "chatmsgdb"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 281
    const-string/jumbo v2, "timelinedb"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    const-string/jumbo v2, "multimedia"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->clearApplicationUserData(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;)V

    goto/16 :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->i:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    if-nez v0, :cond_1

    .line 95
    const-class v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    monitor-enter v1

    .line 96
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    .line 95
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_1
    sget-object v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getCountDownLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->h:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public final handleCrashOnStartup()V
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string/jumbo v1, "key_startup_record_times"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 203
    const-string/jumbo v1, "StartupSafeguard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleCrashOnStartup(times="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string/jumbo v2, "crash"

    invoke-direct {p0, v1, v0, v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 205
    return-void
.end method

.method public final handlePendingOnStartup(II)V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string/jumbo v1, "key_startup_record_times"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 190
    const-string/jumbo v1, "StartupSafeguard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Time out: handlePendingOnStartup(times="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 191
    const-string/jumbo v3, ", cpuFreq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " M HZ, timeOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Seconds)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    const-string/jumbo v2, "pending"

    invoke-direct {p0, v1, v0, v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 194
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 195
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 196
    return-void
.end method

.method public final init(Landroid/content/Context;Z)Lcom/alipay/mobile/quinox/startup/StartupSafeguard;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;

    .line 89
    iput-boolean p2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->e:Z

    .line 90
    return-object p0
.end method

.method public final isStartupCrash()Z
    .locals 3

    .prologue
    .line 115
    const-string/jumbo v0, "StartupSafeguard"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isStartupCrash() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isStartupPending()Z
    .locals 3

    .prologue
    .line 124
    const-string/jumbo v0, "StartupSafeguard"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isStartupPending() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final setStartupCrash(Z)V
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string/jumbo v0, "StartupSafeguard"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setStartupCrash(startupCrash="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void

    .line 131
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setStartupPending(Z)V
    .locals 6

    .prologue
    .line 141
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string/jumbo v0, "StartupSafeguard"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setStartupPending(startupPending="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    if-eqz p1, :cond_3

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->i:J

    .line 146
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->getCPUFrequencyMax()I

    move-result v2

    .line 147
    const/16 v0, 0x5dc

    if-lt v2, v0, :cond_2

    const/16 v0, 0x1e

    move v3, v0

    .line 148
    :goto_1
    invoke-static {}, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;-><init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;II)V

    .line 155
    const-string/jumbo v2, "startup_pending_monitor"

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 148
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/thirdparty/common/asynctask/AsyncTaskExecutor;->schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 183
    :cond_0
    :goto_2
    return-void

    .line 141
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 147
    :cond_2
    const/16 v0, 0x4b

    move v3, v0

    goto :goto_1

    .line 157
    :cond_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 158
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$2;-><init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_2

    .line 179
    :cond_4
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Should be call on UI Thread. (startupPending==false)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final trackStartup(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->f:Z

    .line 106
    iput-object p2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->g:Ljava/lang/String;

    .line 107
    return-void
.end method
