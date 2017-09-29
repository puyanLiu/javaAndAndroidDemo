.class public Lcom/alipay/pushsdk/push/m;
.super Ljava/lang/Object;
.source "PushManager.java"


# static fields
.field private static final synthetic E:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic F:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic G:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic H:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field public static h:I

.field public static i:J

.field private static final j:Ljava/lang/String;

.field private static k:Lcom/alipay/pushsdk/push/m;


# instance fields
.field private A:Landroid/app/PendingIntent;

.field private B:Landroid/os/PowerManager$WakeLock;

.field private C:I

.field private D:J

.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field private l:Ljava/util/concurrent/ExecutorService;

.field private m:Lcom/alipay/pushsdk/push/p;

.field private n:Lcom/alipay/pushsdk/push/q;

.field private o:Lcom/alipay/pushsdk/push/connection/i;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Lcom/alipay/pushsdk/push/b/c;

.field private s:Landroid/support/v4/content/LocalBroadcastManager;

.field private t:Landroid/content/BroadcastReceiver;

.field private u:Landroid/os/Handler;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private w:Z

.field private x:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private y:Landroid/app/AlarmManager;

.field private z:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "PushManager.java"

    const-class v2, Lcom/alipay/pushsdk/push/m;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "set"

    const-string/jumbo v3, "android.app.AlarmManager"

    const-string/jumbo v4, "int:long:android.app.PendingIntent"

    const-string/jumbo v5, "type:triggerAtMillis:operation"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2d7

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/pushsdk/push/m;->E:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "set"

    const-string/jumbo v3, "android.app.AlarmManager"

    const-string/jumbo v4, "int:long:android.app.PendingIntent"

    const-string/jumbo v5, "type:triggerAtMillis:operation"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x379

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/pushsdk/push/m;->F:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "acquire"

    const-string/jumbo v3, "android.os.PowerManager$WakeLock"

    const-string/jumbo v4, "long"

    const-string/jumbo v5, "timeout"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x39c

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/pushsdk/push/m;->G:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "release"

    const-string/jumbo v3, "android.os.PowerManager$WakeLock"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x3a9

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/m;->H:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 58
    const-class v0, Lcom/alipay/pushsdk/push/m;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/pushsdk/push/m;->k:Lcom/alipay/pushsdk/push/m;

    .line 75
    sget v0, Lcom/alipay/pushsdk/push/e/b;->a:I

    sput v0, Lcom/alipay/pushsdk/push/m;->h:I

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v2, p0, Lcom/alipay/pushsdk/push/m;->g:I

    .line 84
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->p:Ljava/lang/String;

    .line 95
    iput-boolean v2, p0, Lcom/alipay/pushsdk/push/m;->w:Z

    .line 98
    iput-object v1, p0, Lcom/alipay/pushsdk/push/m;->y:Landroid/app/AlarmManager;

    .line 99
    iput-object v1, p0, Lcom/alipay/pushsdk/push/m;->z:Landroid/app/PendingIntent;

    .line 100
    iput-object v1, p0, Lcom/alipay/pushsdk/push/m;->A:Landroid/app/PendingIntent;

    .line 102
    iput-object v1, p0, Lcom/alipay/pushsdk/push/m;->B:Landroid/os/PowerManager$WakeLock;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/pushsdk/push/m;->C:I

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/pushsdk/push/m;->D:J

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    .line 121
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/c;->a(Landroid/content/Context;)V

    .line 123
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/NotificationService;->a(Landroid/content/Context;)V

    .line 124
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->l:Ljava/util/concurrent/ExecutorService;

    .line 125
    new-instance v0, Lcom/alipay/pushsdk/push/p;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/p;-><init>(Lcom/alipay/pushsdk/push/m;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->m:Lcom/alipay/pushsdk/push/p;

    .line 126
    new-instance v0, Lcom/alipay/pushsdk/push/q;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/q;-><init>(Lcom/alipay/pushsdk/push/m;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->n:Lcom/alipay/pushsdk/push/q;

    .line 127
    iput-boolean v2, p0, Lcom/alipay/pushsdk/push/m;->q:Z

    .line 128
    new-instance v0, Lcom/alipay/pushsdk/push/b/d;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/b/d;-><init>(Lcom/alipay/pushsdk/push/m;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->r:Lcom/alipay/pushsdk/push/b/c;

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->u:Landroid/os/Handler;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->v:Ljava/util/List;

    .line 131
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    .line 132
    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 131
    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->y:Landroid/app/AlarmManager;

    .line 133
    invoke-static {p0}, Lcom/alipay/pushsdk/push/f/e;->a(Lcom/alipay/pushsdk/push/m;)Lcom/alipay/pushsdk/push/f/e;

    .line 134
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/alipay/pushsdk/push/m;->C:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/m;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/pushsdk/push/m;->D:J

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PushManager() getLastConnectedTime:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    iget-wide v1, p0, Lcom/alipay/pushsdk/push/m;->D:J

    invoke-static {v1, v2}, Lcom/alipay/pushsdk/util/o;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/alipay/pushsdk/push/s;

    invoke-direct {v0, p1}, Lcom/alipay/pushsdk/push/s;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/s;->c()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PushManager() flagTraceLog="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/pushsdk/push/connection/k;->c(Z)V

    .line 142
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 141
    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->s:Landroid/support/v4/content/LocalBroadcastManager;

    .line 143
    new-instance v0, Lcom/alipay/pushsdk/deliver/NotificationReceiver;

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    const-string/jumbo v2, ".push.action.SHOW_NOTIFICATION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/deliver/NotificationReceiver;-><init>(Ljava/lang/String;)V

    .line 143
    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->t:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".push.action.SHOW_NOTIFICATION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->s:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/m;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PushManager() executorService isShutdown="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->l:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->l:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->l:Ljava/util/concurrent/ExecutorService;

    .line 153
    :cond_0
    return-void

    .line 134
    :cond_1
    :try_start_1
    const-string/jumbo v0, "application info is no can not get package uid"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->printErr(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/pushsdk/push/m;
    .locals 3

    .prologue
    .line 109
    const-class v1, Lcom/alipay/pushsdk/push/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/pushsdk/push/m;->k:Lcom/alipay/pushsdk/push/m;

    if-nez v0, :cond_1

    .line 110
    if-nez p0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    .line 112
    const-string/jumbo v2, "PushManager getInstance params context cannot be null!"

    .line 111
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 114
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alipay/pushsdk/push/m;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/pushsdk/push/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/pushsdk/push/m;->k:Lcom/alipay/pushsdk/push/m;

    .line 116
    :cond_1
    sget-object v0, Lcom/alipay/pushsdk/push/m;->k:Lcom/alipay/pushsdk/push/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/pushsdk/push/m;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->l:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static a(Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;)V
    .locals 3

    .prologue
    .line 1060
    const-string/jumbo v0, "changeNetTunnel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "changeNetTunnel lTunnelChangeEventModel.newTunnelType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->newTunnelType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/pushsdk/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    iget v0, p0, Lcom/alipay/mobile/common/transport/strategy/TunnelChangeEventModel;->newTunnelType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1062
    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    const-string/jumbo v0, "netchange before chang to amnet"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1065
    const-string/jumbo v0, "changeNetTunnel"

    const-string/jumbo v1, "netchange changePushTunnel legacyPushChangeToAmnet"

    invoke-static {v0, v1}, Lcom/alipay/pushsdk/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "netchange changePushTunnel legacyPushChangeToAmnet"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/k;->a(Z)V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->a()Lcom/alipay/pushsdk/push/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/pushsdk/push/a/a;->c:Lcom/alipay/pushsdk/push/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->b()V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->a()V

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    const-string/jumbo v0, "netchange before chang to old push"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 1072
    const-string/jumbo v0, "changeNetTunnel"

    const-string/jumbo v1, "changeNetTunnel netchange changePushTunnel amnetChangeToLegacyPush"

    invoke-static {v0, v1}, Lcom/alipay/pushsdk/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "netchange changePushTunnel amnetChangeToLegacyPush"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/alipay/pushsdk/push/connection/k;->a(J)V

    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/k;->a(Z)V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->b()V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/a;->a()Lcom/alipay/pushsdk/push/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/pushsdk/push/a/a;->c:Lcom/alipay/pushsdk/push/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/m;->a()V

    goto :goto_0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 584
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    sget-object v0, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    const-string/jumbo v1, "addTask(runnable)..."

    invoke-static {v7, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->n:Lcom/alipay/pushsdk/push/q;

    iget-object v1, v0, Lcom/alipay/pushsdk/push/q;->b:Lcom/alipay/pushsdk/push/m;

    iget-object v1, v1, Lcom/alipay/pushsdk/push/m;->n:Lcom/alipay/pushsdk/push/q;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/alipay/pushsdk/push/q;->b:Lcom/alipay/pushsdk/push/m;

    iget-object v2, v2, Lcom/alipay/pushsdk/push/m;->n:Lcom/alipay/pushsdk/push/q;

    iget v3, v2, Lcom/alipay/pushsdk/push/q;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/alipay/pushsdk/push/q;->a:I

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    sget-object v3, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Incremented task count to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/alipay/pushsdk/push/q;->a:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->v:Ljava/util/List;

    monitor-enter v1

    .line 590
    const/4 v0, 0x4

    :try_start_1
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 591
    const/4 v0, 0x4

    sget-object v2, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addTask taskList="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/pushsdk/push/m;->v:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/alipay/pushsdk/push/m;->w:Z

    if-nez v0, :cond_7

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/m;->w:Z

    .line 597
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 598
    const/4 v0, 0x3

    sget-object v2, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addTask() runnable is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 598
    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_3
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 602
    const/4 v0, 0x5

    sget-object v2, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addTask(runnable)...taskSubmitter:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 604
    iget-object v4, p0, Lcom/alipay/pushsdk/push/m;->m:Lcom/alipay/pushsdk/push/p;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 603
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 602
    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_4
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->m:Lcom/alipay/pushsdk/push/p;

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/push/p;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->x:Ljava/util/concurrent/Future;

    .line 607
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->x:Ljava/util/concurrent/Future;

    if-nez v0, :cond_5

    .line 608
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->n:Lcom/alipay/pushsdk/push/q;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/q;->a()V

    .line 589
    :cond_5
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 615
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 616
    sget-object v0, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    const-string/jumbo v1, "addTask(runnable)... done"

    invoke-static {v7, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_6
    return-void

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 611
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    sget-object v2, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    const-string/jumbo v3, "runTask()..."

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v2, p0, Lcom/alipay/pushsdk/push/m;->v:Ljava/util/List;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/m;->w:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->x:Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->v:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/alipay/pushsdk/push/m;->v:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alipay/pushsdk/push/m;->w:Z

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x4

    sget-object v4, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "runTask() runnable is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v3, p0, Lcom/alipay/pushsdk/push/m;->m:Lcom/alipay/pushsdk/push/p;

    invoke-virtual {v3, v0}, Lcom/alipay/pushsdk/push/p;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->x:Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->x:Ljava/util/concurrent/Future;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->n:Lcom/alipay/pushsdk/push/q;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/q;->a()V

    :cond_a
    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->n:Lcom/alipay/pushsdk/push/q;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/q;->a()V

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    sget-object v2, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    const-string/jumbo v3, "runTask()...done"

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 589
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 612
    :cond_b
    const/4 v0, 0x5

    :try_start_5
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    sget-object v3, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    const-string/jumbo v4, "runTask(),taskList is empty"

    invoke-static {v0, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v2

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public static a(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 747
    .line 749
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "setExact"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 753
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/app/PendingIntent;

    aput-object v6, v4, v5

    .line 752
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 755
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 756
    aput-object p3, v3, v4

    .line 755
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 758
    const/4 v2, 0x5

    sget-object v3, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    .line 759
    const-string/jumbo v4, "setReflectTimer() invoke setExact api done."

    .line 758
    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :cond_0
    :goto_0
    return v0

    .line 762
    :catch_0
    move-exception v0

    .line 763
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 764
    sget-object v2, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    .line 767
    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/pushsdk/push/m;)Lcom/alipay/pushsdk/push/q;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->n:Lcom/alipay/pushsdk/push/q;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/pushsdk/push/m;)Lcom/alipay/pushsdk/push/connection/i;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->o:Lcom/alipay/pushsdk/push/connection/i;

    return-object v0
.end method

.method public static e()J
    .locals 2

    .prologue
    .line 284
    sget-wide v0, Lcom/alipay/pushsdk/push/m;->i:J

    return-wide v0
.end method

.method public static i()I
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lcom/alipay/pushsdk/push/m;->k:Lcom/alipay/pushsdk/push/m;

    if-nez v0, :cond_0

    .line 352
    sget v0, Lcom/alipay/pushsdk/push/e/b;->c:I

    .line 354
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/alipay/pushsdk/push/m;->h:I

    goto :goto_0
.end method

.method public static n()V
    .locals 0

    .prologue
    .line 479
    invoke-static {}, Lcom/alipay/pushsdk/push/t;->c()V

    .line 480
    return-void
.end method

.method static synthetic w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    return-object v0
.end method

.method private x()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->y:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->A:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->y:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->A:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 738
    :catch_0
    move-exception v0

    .line 739
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    sget-object v1, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 184
    const-string/jumbo v0, "connect()..."

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/m;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/alipay/pushsdk/push/connection/h;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/connection/h;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const-string/jumbo v0, "connect() ConnectionPolicy is false."

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/push/h/a;

    new-instance v1, Lcom/alipay/pushsdk/push/b/b;

    invoke-direct {v1, p0}, Lcom/alipay/pushsdk/push/b/b;-><init>(Lcom/alipay/pushsdk/push/m;)V

    invoke-direct {v0, v1, p0}, Lcom/alipay/pushsdk/push/h/a;-><init>(Lcom/alipay/pushsdk/push/b/b;Lcom/alipay/pushsdk/push/m;)V

    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/push/m;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(J)V
    .locals 2

    .prologue
    .line 288
    new-instance v0, Lcom/alipay/pushsdk/push/j;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/j;-><init>(Landroid/content/Context;)V

    .line 289
    invoke-virtual {v0, p1, p2}, Lcom/alipay/pushsdk/push/j;->a(J)V

    .line 290
    return-void
.end method

.method public final a(Lcom/alipay/pushsdk/push/connection/i;)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 268
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setConnection()... called. connection:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_0
    iput-object p1, p0, Lcom/alipay/pushsdk/push/m;->o:Lcom/alipay/pushsdk/push/connection/i;

    .line 273
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/alipay/pushsdk/push/m;->p:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 577
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    sget-object v0, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    const-string/jumbo v1, "submitSyncResponseTask()..."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/push/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/alipay/pushsdk/push/o;-><init>(Lcom/alipay/pushsdk/push/m;Ljava/lang/String;Ljava/lang/String;B)V

    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/push/m;->a(Ljava/lang/Runnable;)V

    .line 581
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 563
    iput-boolean p1, p0, Lcom/alipay/pushsdk/push/m;->q:Z

    .line 564
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 202
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    const-string/jumbo v1, "disconnect()..."

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/m;->q:Z

    .line 207
    invoke-direct {p0}, Lcom/alipay/pushsdk/push/m;->x()V

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->y:Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->z:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->y:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->z:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_1
    :goto_0
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    const-string/jumbo v1, "terminatePersistentConnection()..."

    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/alipay/pushsdk/push/n;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/n;-><init>(Lcom/alipay/pushsdk/push/m;)V

    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/push/m;->a(Ljava/lang/Runnable;)V

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/pushsdk/push/m;->c(J)V

    .line 217
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/m;->v()V

    .line 218
    return-void

    .line 209
    :catch_0
    move-exception v0

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(J)V
    .locals 2

    .prologue
    .line 298
    new-instance v0, Lcom/alipay/pushsdk/push/j;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/j;-><init>(Landroid/content/Context;)V

    .line 299
    invoke-virtual {v0, p1, p2}, Lcom/alipay/pushsdk/push/j;->b(J)V

    .line 300
    return-void
.end method

.method public final c()Lcom/alipay/pushsdk/push/connection/i;
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 255
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->o:Lcom/alipay/pushsdk/push/connection/i;

    if-eqz v0, :cond_0

    .line 256
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getConnection()... called. connection:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Lcom/alipay/pushsdk/push/m;->o:Lcom/alipay/pushsdk/push/connection/i;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->o:Lcom/alipay/pushsdk/push/connection/i;

    return-object v0
.end method

.method public final c(J)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 308
    new-instance v0, Lcom/alipay/pushsdk/push/j;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/j;-><init>(Landroid/content/Context;)V

    .line 309
    invoke-virtual {v0, p1, p2}, Lcom/alipay/pushsdk/push/j;->c(J)V

    .line 311
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    sget-object v0, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PushManager() setLastLostedTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-static {p1, p2}, Lcom/alipay/pushsdk/util/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_0
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final d(J)V
    .locals 2

    .prologue
    .line 323
    new-instance v0, Lcom/alipay/pushsdk/push/j;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/j;-><init>(Landroid/content/Context;)V

    .line 324
    invoke-virtual {v0, p1, p2}, Lcom/alipay/pushsdk/push/j;->d(J)V

    .line 325
    return-void
.end method

.method public final e(J)V
    .locals 10

    .prologue
    const/4 v6, 0x4

    const/4 v9, 0x0

    .line 694
    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/k;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wait long "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->A:Landroid/app/PendingIntent;

    if-nez v0, :cond_2

    .line 699
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 700
    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 701
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".push.action.KEEPLIVE"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-static {v1, v9, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->A:Landroid/app/PendingIntent;

    .line 707
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 708
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->y:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/m;->s()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    .line 710
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 709
    add-long/2addr v0, v3

    .line 711
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_3

    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 714
    :cond_3
    const/16 v3, 0x13

    if-lt v2, v3, :cond_5

    .line 715
    iget-object v2, p0, Lcom/alipay/pushsdk/push/m;->y:Landroid/app/AlarmManager;

    .line 716
    iget-object v3, p0, Lcom/alipay/pushsdk/push/m;->A:Landroid/app/PendingIntent;

    .line 715
    invoke-static {v2, v0, v1, v3}, Lcom/alipay/pushsdk/push/m;->a(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)Z

    move-result v2

    .line 717
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 718
    sget-object v3, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    .line 719
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startHeartAlarmTimer() setReflectTimer ret="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 718
    invoke-static {v6, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_4
    if-nez v2, :cond_0

    .line 727
    :cond_5
    iget-object v2, p0, Lcom/alipay/pushsdk/push/m;->y:Landroid/app/AlarmManager;

    .line 728
    iget-object v3, p0, Lcom/alipay/pushsdk/push/m;->A:Landroid/app/PendingIntent;

    sget-object v4, Lcom/alipay/pushsdk/push/m;->E:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v9}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x1

    invoke-static {v0, v1}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v4, p0, v2, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v5

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v4

    invoke-static {v5, v6, v7, v8, v4}, Lcom/alipay/mobile/aspect/Monitor;->ajc$inlineAccessMethod$com_alipay_mobile_aspect_Monitor$com_alipay_mobile_aspect_Monitor$processCallAlarmManagerSetPointcut(Lcom/alipay/mobile/aspect/Monitor;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint$StaticPart;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v9, v0, v1, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 303
    new-instance v0, Lcom/alipay/pushsdk/push/j;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/j;-><init>(Landroid/content/Context;)V

    .line 304
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 328
    new-instance v0, Lcom/alipay/pushsdk/push/j;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/j;-><init>(Landroid/content/Context;)V

    .line 329
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 342
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    sget-object v0, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    const-string/jumbo v1, "PushManager() getPushTrigger enter."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/push/j;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/j;-><init>(Landroid/content/Context;)V

    .line 347
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 358
    new-instance v0, Lcom/alipay/pushsdk/util/d;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/util/d;-><init>(Landroid/content/Context;)V

    .line 359
    invoke-virtual {v0}, Lcom/alipay/pushsdk/util/d;->a()Lcom/alipay/pushsdk/data/a;

    move-result-object v0

    .line 361
    iget-object v1, v0, Lcom/alipay/pushsdk/data/a;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/pushsdk/push/m;->c:Ljava/lang/String;

    .line 362
    iget v1, v0, Lcom/alipay/pushsdk/data/a;->c:I

    iput v1, p0, Lcom/alipay/pushsdk/push/m;->d:I

    .line 363
    iget v1, v0, Lcom/alipay/pushsdk/data/a;->f:I

    sput v1, Lcom/alipay/pushsdk/push/m;->h:I

    .line 364
    iget-object v1, v0, Lcom/alipay/pushsdk/data/a;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/pushsdk/push/m;->b:Ljava/lang/String;

    .line 365
    iget v0, v0, Lcom/alipay/pushsdk/data/a;->g:I

    iput v0, p0, Lcom/alipay/pushsdk/push/m;->g:I

    .line 367
    new-instance v0, Lcom/alipay/pushsdk/push/r;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/r;-><init>(Landroid/content/Context;)V

    .line 368
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/r;->b()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    sget-object v1, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadPushConfig() serverInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 370
    invoke-static {v6, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 374
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 376
    array-length v2, v1

    if-ne v2, v4, :cond_3

    .line 377
    aget-object v0, v1, v5

    if-eqz v0, :cond_2

    aget-object v0, v1, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 380
    const/4 v0, 0x1

    :try_start_0
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/pushsdk/push/m;->d:I

    .line 381
    const/4 v0, 0x0

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "loadPushConfig() pushHost:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pushPort:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 404
    iget v1, p0, Lcom/alipay/pushsdk/push/m;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", protocolVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/alipay/pushsdk/push/m;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 405
    return-void

    .line 383
    :catch_0
    move-exception v0

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    sget-object v0, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadPushConfig() invalid configPort="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    aget-object v1, v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 385
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_2
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    sget-object v0, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    .line 392
    const-string/jumbo v1, "loadPushConfig() configPort is null."

    .line 391
    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_3
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    sget-object v1, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadPushConfig() invalid serverList="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-static {v4, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final k()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    .line 411
    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 410
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 412
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 415
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 417
    const-string/jumbo v2, "MOBILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 423
    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    .line 424
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ActiveNetworkInfo() typeName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-static {v1, v2, v0}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->e:Ljava/lang/String;

    .line 430
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    iput v0, p0, Lcom/alipay/pushsdk/push/m;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkConnectType() proxyHost:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    iget-object v2, p0, Lcom/alipay/pushsdk/push/m;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", proxyPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/pushsdk/push/m;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-static {v7, v0, v1}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void

    .line 432
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->e:Ljava/lang/String;

    .line 433
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/pushsdk/push/m;->f:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    iput-object v6, p0, Lcom/alipay/pushsdk/push/m;->e:Ljava/lang/String;

    .line 442
    iput v5, p0, Lcom/alipay/pushsdk/push/m;->f:I

    goto :goto_0

    .line 436
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->e:Ljava/lang/String;

    .line 437
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/pushsdk/push/m;->f:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public final l()Lcom/alipay/pushsdk/push/b/c;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->r:Lcom/alipay/pushsdk/push/b/c;

    return-object v0
.end method

.method public final m()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x3e8

    const/4 v12, 0x4

    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x3

    .line 454
    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/k;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    const-string/jumbo v0, "just return cause amnet in use"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    invoke-static {v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 460
    sget-object v2, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    .line 461
    const-string/jumbo v3, "startReconnectionThread()... ReconnectionTask"

    .line 460
    invoke-static {v10, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_2
    monitor-enter p0

    .line 466
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 467
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/m;->c()Lcom/alipay/pushsdk/push/connection/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/connection/i;->i()V

    .line 464
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    iput-boolean v4, p0, Lcom/alipay/pushsdk/push/m;->q:Z

    .line 472
    invoke-direct {p0}, Lcom/alipay/pushsdk/push/m;->x()V

    .line 475
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/m;->z:Landroid/app/PendingIntent;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ".push.action.CONNECT"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-static {v3, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/pushsdk/push/m;->z:Landroid/app/PendingIntent;

    :cond_4
    iget-object v2, p0, Lcom/alipay/pushsdk/push/m;->y:Landroid/app/AlarmManager;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->d()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/m;->g()J

    move-result-wide v5

    invoke-static {v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getReconnTimer lastTryConnectTime="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/alipay/pushsdk/util/o;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", lastConnectedTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2, v3}, Lcom/alipay/pushsdk/util/o;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v7, v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    cmp-long v7, v2, v0

    if-lez v7, :cond_8

    cmp-long v5, v2, v5

    if-ltz v5, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->c()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v13

    sub-long/2addr v2, v5

    cmp-long v7, v2, v0

    if-gtz v7, :cond_a

    :goto_1
    invoke-static {v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getReconnTimer lostedTime="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", curWaitTime="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long v1, v0, v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v3, v0, :cond_9

    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->y:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/alipay/pushsdk/push/m;->z:Landroid/app/PendingIntent;

    invoke-static {v0, v1, v2, v5}, Lcom/alipay/pushsdk/push/m;->a(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)Z

    move-result v0

    :goto_3
    if-nez v0, :cond_7

    iget-object v5, p0, Lcom/alipay/pushsdk/push/m;->y:Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/alipay/pushsdk/push/m;->z:Landroid/app/PendingIntent;

    sget-object v7, Lcom/alipay/pushsdk/push/m;->F:Lorg/aspectj/lang/JoinPoint$StaticPart;

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v4}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x1

    invoke-static {v1, v2}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v6, v8, v9

    invoke-static {v7, p0, v5, v8}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v7

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v8

    invoke-interface {v7}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v7}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v7

    invoke-static {v8, v9, v10, v11, v7}, Lcom/alipay/mobile/aspect/Monitor;->ajc$inlineAccessMethod$com_alipay_mobile_aspect_Monitor$com_alipay_mobile_aspect_Monitor$processCallAlarmManagerSetPointcut(Lcom/alipay/mobile/aspect/Monitor;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint$StaticPart;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5, v4, v1, v2, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_7
    invoke-static {v12}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startReconnAlarmTimer  isHighVersionTimerSetted "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " sdkInt "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 475
    :cond_8
    invoke-static {}, Lcom/alipay/pushsdk/push/t;->b()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v13

    invoke-static {v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getReconnTimer reconnectionTask.waiting="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    move v0, v4

    goto/16 :goto_3

    :cond_a
    move-wide v0, v2

    goto/16 :goto_1
.end method

.method public final o()Z
    .locals 9

    .prologue
    const/4 v4, 0x5

    const/4 v8, 0x4

    .line 529
    const/4 v0, 0x0

    .line 531
    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->o:Lcom/alipay/pushsdk/push/connection/i;

    if-eqz v1, :cond_0

    .line 532
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    sget-object v1, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isConnected() connection="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    iget-object v3, p0, Lcom/alipay/pushsdk/push/m;->o:Lcom/alipay/pushsdk/push/connection/i;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 533
    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->o:Lcom/alipay/pushsdk/push/connection/i;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/pushsdk/push/m;->o:Lcom/alipay/pushsdk/push/connection/i;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/connection/i;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 540
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->d()J

    move-result-wide v1

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 543
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->e()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    .line 544
    const/4 v0, 0x1

    .line 546
    :cond_1
    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 549
    sget-object v5, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    .line 550
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "isConnected() lastTime="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 551
    invoke-static {v1, v2}, Lcom/alipay/pushsdk/util/o;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", del="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 552
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 550
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 547
    invoke-static {v8, v5, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_2
    return v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/alipay/pushsdk/push/m;->q:Z

    return v0
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 567
    const-string/jumbo v0, "submitRegisterTask()..."

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 568
    new-instance v0, Lcom/alipay/pushsdk/push/h/c;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/h/c;-><init>(Lcom/alipay/pushsdk/push/m;)V

    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/push/m;->a(Ljava/lang/Runnable;)V

    .line 569
    return-void
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 572
    const-string/jumbo v0, "submitHeartBeatTask()..."

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 573
    new-instance v0, Lcom/alipay/pushsdk/push/h/b;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/h/b;-><init>(Lcom/alipay/pushsdk/push/m;)V

    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/push/m;->a(Ljava/lang/Runnable;)V

    .line 574
    return-void
.end method

.method public final s()J
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 782
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->m()I

    move-result v0

    int-to-long v3, v0

    .line 784
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string/jumbo v0, "isAppInBackground context is null"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->e(Ljava/lang/String;)V

    move v0, v1

    .line 785
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/m;->t()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v0, :cond_3

    move v5, v2

    .line 787
    :goto_1
    if-eqz v5, :cond_4

    .line 788
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->l()I

    move-result v1

    int-to-long v1, v1

    .line 790
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isInBack:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " isIngoreFrontWhenInBackground:true isUseFront:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 791
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " keepAliveTime:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 790
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 792
    return-wide v1

    .line 784
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/alipay/pushsdk/util/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "isAppInBackground curProcessName:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->e(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "isAppInBackground packageName:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_3
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v5, v1

    .line 785
    goto :goto_1

    :cond_4
    move-wide v1, v3

    goto :goto_2
.end method

.method public final t()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 795
    const/4 v0, 0x0

    .line 797
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 799
    new-instance v1, Lcom/alipay/pushsdk/push/j;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/pushsdk/push/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/j;->a()J

    move-result-wide v1

    .line 800
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 801
    sget-object v3, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isFrontPolicy launchTime="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 801
    invoke-static {v6, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 806
    :cond_0
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->f()J

    move-result-wide v3

    .line 805
    invoke-static {v1, v2, v3, v4}, Lcom/alipay/pushsdk/util/o;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 807
    const/4 v0, 0x1

    .line 810
    :cond_1
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 811
    sget-object v1, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isFrontPolicy ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 815
    :cond_2
    return v0
.end method

.method public final u()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x4e20

    .line 918
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->B:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->B:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->B:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->a:Landroid/content/Context;

    .line 920
    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 919
    check-cast v0, Landroid/os/PowerManager;

    .line 921
    const/4 v1, 0x1

    sget-object v2, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->B:Landroid/os/PowerManager$WakeLock;

    .line 922
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->B:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->B:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 924
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->B:Landroid/os/PowerManager$WakeLock;

    sget-object v1, Lcom/alipay/pushsdk/push/m;->G:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v3, v4}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, p0, v0, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "Monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Call WakeLock.acquire() at: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    :cond_1
    return-void
.end method

.method public final v()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 935
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->B:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->B:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/m;->B:Landroid/os/PowerManager$WakeLock;

    sget-object v1, Lcom/alipay/pushsdk/push/m;->H:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, v0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Call WakeLock.release() at: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    invoke-interface {v1}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/m;->B:Landroid/os/PowerManager$WakeLock;

    .line 949
    return-void

    .line 938
    :catch_0
    move-exception v0

    .line 941
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 942
    sget-object v1, Lcom/alipay/pushsdk/push/m;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
