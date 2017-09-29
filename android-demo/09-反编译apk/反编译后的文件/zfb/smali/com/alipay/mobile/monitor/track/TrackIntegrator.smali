.class public Lcom/alipay/mobile/monitor/track/TrackIntegrator;
.super Ljava/lang/Object;
.source "TrackIntegrator.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static d:Lcom/alipay/mobile/monitor/track/TrackIntegrator;


# instance fields
.field private a:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alipay/mobile/monitor/track/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alipay/mobile/monitor/track/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alipay/mobile/monitor/track/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private i:J

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a:Landroid/util/Pair;

    .line 50
    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->b:Landroid/util/Pair;

    .line 51
    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->c:Landroid/util/Pair;

    .line 59
    iput-boolean v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->f:Z

    .line 61
    iput-boolean v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->g:Z

    .line 99
    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->h:Ljava/lang/ref/WeakReference;

    .line 100
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->i:J

    .line 101
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->j:J

    .line 64
    new-instance v0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    invoke-direct {v0}, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->e:Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/monitor/track/TrackIntegrator;)Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->e:Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    return-object v0
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 451
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->f:Z

    if-nez v0, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/monitor/track/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/monitor/track/a;-><init>(Lcom/alipay/mobile/monitor/track/TrackIntegrator;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 494
    const-string/jumbo v0, "com.alipay.android.launcher.TabLauncher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const/4 v0, 0x0

    .line 498
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->g:Z

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;
    .locals 2

    .prologue
    .line 68
    const-class v1, Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->d:Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    invoke-direct {v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;-><init>()V

    sput-object v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->d:Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    .line 72
    :cond_0
    sget-object v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->d:Lcom/alipay/mobile/monitor/track/TrackIntegrator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addClickInterceptor(Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->e:Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->addClickInterceptor(Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;)V

    .line 81
    return-void
.end method

.method public autoTrackClick(Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->f:Z

    .line 89
    return-void
.end method

.method public autoTrackPage(Z)V
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->g:Z

    .line 97
    return-void
.end method

.method public createActivity(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 108
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->h:Ljava/lang/ref/WeakReference;

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->i:J

    .line 113
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->j:J

    goto :goto_0
.end method

.method public displayActivity(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 121
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 128
    :goto_1
    if-eqz v1, :cond_0

    if-ne v1, p1, :cond_0

    if-ne p1, v0, :cond_0

    .line 129
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->j:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->i:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->j:J

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/monitor/track/b;

    .line 134
    iget-wide v1, v0, Lcom/alipay/mobile/monitor/track/b;->g:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_0

    .line 135
    iget-wide v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->j:J

    iput-wide v1, v0, Lcom/alipay/mobile/monitor/track/b;->g:J

    goto :goto_0

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_1
.end method

.method public enterActivity(Landroid/app/Activity;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 147
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "viewSwitch"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    new-instance v1, Lcom/alipay/mobile/monitor/track/b;

    invoke-direct {v1, p0, v6}, Lcom/alipay/mobile/monitor/track/b;-><init>(Lcom/alipay/mobile/monitor/track/TrackIntegrator;B)V

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobile/monitor/track/b;->a:J

    .line 156
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v2, "actionID"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v2, "actionToken"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/monitor/track/b;->c:Ljava/lang/String;

    .line 158
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v2, "actionDesc"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/monitor/track/b;->d:Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    .line 161
    instance-of v2, p1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v2, :cond_7

    move-object v0, p1

    .line 162
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 166
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    .line 168
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getSourceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/monitor/track/b;->f:Ljava/lang/String;

    .line 171
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8fdb\u5165\u9875\u9762:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n\u70b9\u51fb\u6765\u6e90:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/mobile/monitor/track/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")\r\n\u4e1a\u52a1\u6765\u6e90:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/mobile/monitor/track/b;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n\u6240\u5728\u5e94\u7528:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v0, "test"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 180
    iget-object v0, v1, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "appid\u4e3a\u7a7a"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_4
    iget-object v0, v1, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    const-string/jumbo v3, "appID"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 185
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5f53\u524d\u9875\u9762\u5e94\u7528\u548cappID\u4e0d\u4e00\u81f4\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    const-string/jumbo v5, "appID"

    invoke-interface {v4, v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v2, "refViewID"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    iget-object v2, v1, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    iget-object v2, v1, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 191
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u6765\u6e90\u63a7\u4ef6\u548c\u548crefViewID\u4e0d\u4e00\u81f4\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_6
    new-instance v0, Landroid/util/Pair;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a:Landroid/util/Pair;

    .line 200
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1, v6}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 163
    :cond_7
    instance-of v2, p1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 164
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public enterFragment(Landroid/support/v4/app/Fragment;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 265
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    iget-boolean v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->g:Z

    if-nez v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "viewSwitch"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    new-instance v0, Lcom/alipay/mobile/monitor/track/b;

    invoke-direct {v0, p0, v5}, Lcom/alipay/mobile/monitor/track/b;-><init>(Lcom/alipay/mobile/monitor/track/TrackIntegrator;B)V

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/monitor/track/b;->a:J

    .line 274
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string/jumbo v2, "actionID"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    .line 275
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string/jumbo v2, "actionToken"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/monitor/track/b;->c:Ljava/lang/String;

    .line 276
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    const-string/jumbo v2, "actionDesc"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/monitor/track/b;->d:Ljava/lang/String;

    .line 278
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8fdb\u5165\u9875\u9762:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6765\u6e90\u63a7\u4ef6:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mobile/monitor/track/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->b:Landroid/util/Pair;

    .line 285
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public enterH5Page(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public enterView(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->enterView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public enterView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 344
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->enterView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 345
    return-void
.end method

.method public enterView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "viewSwitch"

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    new-instance v1, Lcom/alipay/mobile/monitor/track/b;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/monitor/track/b;-><init>(Lcom/alipay/mobile/monitor/track/TrackIntegrator;B)V

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobile/monitor/track/b;->a:J

    .line 356
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v2, "actionID"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    .line 357
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v2, "actionToken"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/monitor/track/b;->c:Ljava/lang/String;

    .line 358
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v2, "actionDesc"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/monitor/track/b;->d:Ljava/lang/String;

    .line 359
    iput-object p3, v1, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    .line 360
    iput-object p4, v1, Lcom/alipay/mobile/monitor/track/b;->f:Ljava/lang/String;

    .line 361
    if-eqz p5, :cond_2

    .line 363
    const-string/jumbo v0, "launchTime"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 365
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 366
    iput-wide v2, v1, Lcom/alipay/mobile/monitor/track/b;->g:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :cond_2
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8fdb\u5165\u9875\u9762:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n\u70b9\u51fb\u6765\u6e90:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/mobile/monitor/track/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")\r\n\u4e1a\u52a1\u6765\u6e90:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/mobile/monitor/track/b;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n\u6240\u5728\u5e94\u7528:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string/jumbo v0, "test"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 381
    iget-object v0, v1, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 382
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "appid\u4e3a\u7a7a"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_3
    iget-object v0, v1, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    const-string/jumbo v3, "appID"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 386
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5f53\u524d\u9875\u9762\u5e94\u7528\u548cappID\u4e0d\u4e00\u81f4\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    const-string/jumbo v5, "appID"

    invoke-interface {v4, v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v2, "refViewID"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-object v2, v1, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    iget-object v2, v1, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 392
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u6765\u6e90\u63a7\u4ef6\u548c\u548crefViewID\u4e0d\u4e00\u81f4\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_5
    const-string/jumbo v0, "com.alipay.android.phone.home.widget.HomeWidgetGroup"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "20000002"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_6
    const-string/jumbo v0, "com.alipay.android.phone.discovery.o2ohome.O2oWidgetGroup"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "20000238"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    const-string/jumbo v0, "com.alipay.mobile.socialwidget.ui.SocialHomePage"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "20000217"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const-string/jumbo v0, "com.alipay.android.widgets.asset.AssetWidgetGroup"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "20000004"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 399
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "appId\u4e0d\u6b63\u786e\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_a
    new-instance v0, Landroid/util/Pair;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->c:Landroid/util/Pair;

    .line 407
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 368
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "launchTime cast Exception"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public leaveActivity(Landroid/app/Activity;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/16 v8, 0x3e

    const/4 v3, 0x0

    .line 209
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    instance-of v0, p1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 216
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    move-object v1, v0

    .line 222
    :goto_1
    instance-of v0, p1, Lcom/alipay/mobile/framework/app/ui/ActivityTrackable;

    if-eqz v0, :cond_8

    move-object v0, p1

    .line 223
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityTrackable;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityTrackable;->getActivityTrackId()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 227
    :goto_2
    if-eqz v1, :cond_4

    .line 228
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getStartActivityCount()I

    move-result v6

    move v0, v3

    .line 229
    :goto_3
    if-ge v3, v6, :cond_5

    .line 230
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getActivityAt(I)Landroid/app/Activity;

    move-result-object v7

    .line 231
    if-ne v7, p1, :cond_7

    .line 232
    const/4 v0, 0x1

    move v2, v0

    .line 234
    :goto_4
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto :goto_3

    .line 217
    :cond_2
    instance-of v0, p1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_9

    move-object v0, p1

    .line 218
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 234
    :cond_3
    const-string/jumbo v0, "unkown"

    goto :goto_5

    :cond_4
    move v0, v3

    .line 237
    :cond_5
    if-nez v0, :cond_6

    .line 238
    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 244
    new-instance v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/monitor/track/b;

    .line 246
    iget-object v2, v0, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackId(Ljava/lang/String;)V

    .line 247
    iget-object v2, v0, Lcom/alipay/mobile/monitor/track/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackToken(Ljava/lang/String;)V

    .line 248
    iget-object v2, v0, Lcom/alipay/mobile/monitor/track/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackDesc(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setViewID(Ljava/lang/String;)V

    .line 250
    iget-object v2, v0, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 251
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v6, v0, Lcom/alipay/mobile/monitor/track/b;->a:J

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 253
    iget-wide v2, v0, Lcom/alipay/mobile/monitor/track/b;->g:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 254
    const-string/jumbo v2, "sourceappid"

    iget-object v0, v0, Lcom/alipay/mobile/monitor/track/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->autoOpenPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto/16 :goto_0

    :cond_7
    move v2, v0

    goto/16 :goto_4

    :cond_8
    move-object v4, v2

    goto/16 :goto_2

    :cond_9
    move-object v1, v2

    goto/16 :goto_1
.end method

.method public leaveFragment(Landroid/support/v4/app/Fragment;)V
    .locals 6

    .prologue
    .line 294
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    iget-boolean v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->g:Z

    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->b:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->b:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 301
    new-instance v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/monitor/track/b;

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/alipay/mobile/monitor/track/b;->a:J

    sub-long/2addr v2, v4

    .line 305
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 306
    iget-object v2, v0, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackId(Ljava/lang/String;)V

    .line 307
    iget-object v2, v0, Lcom/alipay/mobile/monitor/track/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackToken(Ljava/lang/String;)V

    .line 308
    iget-object v0, v0, Lcom/alipay/mobile/monitor/track/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackDesc(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->autoOpenPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto :goto_0
.end method

.method public leaveH5Page(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public leaveView(Landroid/view/View;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 415
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    const-string/jumbo v1, ""

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->c:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 426
    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    new-instance v2, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 428
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->c:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/monitor/track/b;

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/alipay/mobile/monitor/track/b;->a:J

    sub-long/2addr v3, v5

    .line 431
    iget-object v5, v0, Lcom/alipay/mobile/monitor/track/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 432
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 434
    iget-wide v3, v0, Lcom/alipay/mobile/monitor/track/b;->g:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 435
    const-string/jumbo v1, "sourceappid"

    iget-object v3, v0, Lcom/alipay/mobile/monitor/track/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v1, v0, Lcom/alipay/mobile/monitor/track/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackId(Ljava/lang/String;)V

    .line 437
    iget-object v1, v0, Lcom/alipay/mobile/monitor/track/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackToken(Ljava/lang/String;)V

    .line 438
    iget-object v0, v0, Lcom/alipay/mobile/monitor/track/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackDesc(Ljava/lang/String;)V

    .line 440
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->autoOpenPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto/16 :goto_0
.end method
