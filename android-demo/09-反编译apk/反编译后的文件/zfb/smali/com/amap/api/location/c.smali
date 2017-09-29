.class public Lcom/amap/api/location/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/aps/l;

.field volatile b:Z

.field c:Z

.field private volatile d:Z

.field private e:Landroid/content/Context;

.field private f:J

.field private g:Lcom/amap/api/location/a$a;

.field private h:Lcom/amap/api/location/a;

.field private i:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amap/api/location/a$a;Lcom/amap/api/location/a;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    iput-boolean v2, p0, Lcom/amap/api/location/c;->d:Z

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/amap/api/location/c;->f:J

    iput-boolean v2, p0, Lcom/amap/api/location/c;->b:Z

    iput-boolean v2, p0, Lcom/amap/api/location/c;->i:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    iput-object p3, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    invoke-virtual {p0, v2}, Lcom/amap/api/location/c;->b(Z)V

    iput-object p1, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    new-instance v0, Lcom/aps/b;

    invoke-direct {v0}, Lcom/aps/b;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    iput-object p2, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    return-void
.end method

.method private e()Lcom/aps/c;
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0}, Lcom/aps/l;->a()Lcom/aps/c;
    :try_end_0
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/amap/api/location/c;->c:Z

    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/location/c;->c:Z
    :try_end_1
    .catch Lcom/amap/api/location/core/AMapLocException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/aps/c;

    invoke-direct {v0}, Lcom/aps/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/aps/c;->a(Lcom/amap/api/location/core/AMapLocException;)V

    iput-boolean v2, p0, Lcom/amap/api/location/c;->c:Z

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_2
    iput-boolean v2, p0, Lcom/amap/api/location/c;->c:Z

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private f()Z
    .locals 7

    const-wide/16 v5, 0x2710

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-wide v3, v3, Lcom/amap/api/location/a;->i:J

    sub-long v3, v1, v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-wide v3, v3, Lcom/amap/api/location/a;->e:J

    sub-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iput-boolean v0, v1, Lcom/amap/api/location/a;->d:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method a(J)V
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/location/c;->f:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lcom/amap/api/location/c;->f:J

    :cond_0
    return-void
.end method

.method a(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0, p1}, Lcom/aps/l;->a(Landroid/app/PendingIntent;)V

    return-void
.end method

.method a(Lcom/aps/k;Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0, p1, p2}, Lcom/aps/l;->a(Lcom/aps/k;Landroid/app/PendingIntent;)V

    return-void
.end method

.method declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/location/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/location/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/location/c;->a(Z)V

    iget-boolean v0, p0, Lcom/amap/api/location/c;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/location/c;->c()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    invoke-virtual {v0}, Lcom/amap/api/location/a;->b()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/location/c;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0, p1}, Lcom/aps/l;->b(Landroid/app/PendingIntent;)V

    return-void
.end method

.method b(Lcom/aps/k;Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0, p1, p2}, Lcom/aps/l;->b(Lcom/aps/k;Landroid/app/PendingIntent;)V

    return-void
.end method

.method declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/location/c;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0}, Lcom/aps/l;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/location/c;->i:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    iget-object v1, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/aps/l;->a(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "api_serverSDK_130905##S128DF1572465B890OE3F7A13167KLEI##"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/location/core/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/amap/api/location/core/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aps/l;->a(Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "key"

    iget-object v2, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/location/core/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v0, "X-INFO"

    iget-object v2, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    move-result-object v2

    const-string/jumbo v3, "loc"

    invoke-virtual {v2, v3}, Lcom/amap/api/location/core/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/c;->a(Landroid/content/Context;)Lcom/amap/api/location/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/core/c;->e()Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :try_start_4
    const-string/jumbo v3, "ex"

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/location/core/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    const-string/jumbo v0, "X-BIZ"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "User-Agent"

    const-string/jumbo v2, "AMAP_Location_SDK_Android 1.4.0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0, v1}, Lcom/aps/l;->a(Lorg/json/JSONObject;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    :goto_3
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/amap/api/location/c;->i:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    :catch_3
    move-exception v0

    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3
.end method

.method public run()V
    .locals 7

    const/4 v6, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/location/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/location/c;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/location/c;->i:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/location/c;->d:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/location/c;->d()V

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/amap/api/location/c;->d:Z

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/amap/api/location/c;->a()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    if-nez v0, :cond_9

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->d:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/amap/api/location/c;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->f:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_a

    :cond_4
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    iget-wide v2, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_6

    :try_start_3
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->f:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->d:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/amap/api/location/c;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I

    move-result v0

    if-ne v0, v6, :cond_7

    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->b(Landroid/content/Context;)Z

    :cond_7
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0}, Lcom/aps/l;->b()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_8
    :try_start_4
    iget-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    if-eqz v0, :cond_25

    iget-wide v0, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_9
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Lcom/amap/api/location/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/location/c;->c()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_a
    :try_start_6
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-object v0, v0, Lcom/amap/api/location/a;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v0

    if-gez v0, :cond_f

    if-eqz v1, :cond_c

    :try_start_7
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->f:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->d:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/amap/api/location/c;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    :cond_c
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I

    move-result v0

    if-ne v0, v6, :cond_d

    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->b(Landroid/content/Context;)Z

    :cond_d
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0}, Lcom/aps/l;->b()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_e
    :try_start_8
    iget-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    if-eqz v0, :cond_26

    iget-wide v0, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2

    :cond_f
    :try_start_9
    invoke-direct {p0}, Lcom/amap/api/location/c;->e()Lcom/aps/c;

    move-result-object v0

    if-nez v0, :cond_28

    new-instance v0, Lcom/aps/c;

    invoke-direct {v0}, Lcom/aps/c;-><init>()V

    new-instance v2, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v3, "\u670d\u52a1\u5668\u5f02\u5e38"

    invoke-direct {v2, v3}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/aps/c;->a(Lcom/amap/api/location/core/AMapLocException;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amap/api/location/c;->c:Z

    move-object v2, v0

    :goto_3
    if-eqz v2, :cond_10

    new-instance v0, Lcom/amap/api/location/AMapLocation;

    const-string/jumbo v3, ""

    invoke-direct {v0, v3}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "lbs"

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aps/c;->h()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {v2}, Lcom/aps/c;->g()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    invoke-virtual {v2}, Lcom/aps/c;->i()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    invoke-virtual {v2}, Lcom/aps/c;->j()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    invoke-virtual {v2}, Lcom/aps/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setPoiId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aps/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setFloor(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aps/c;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setCountry(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aps/c;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setRoad(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aps/c;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setPoiName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aps/c;->a()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setAMapException(Lcom/amap/api/location/core/AMapLocException;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "citycode"

    invoke-virtual {v2}, Lcom/aps/c;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "desc"

    invoke-virtual {v2}, Lcom/aps/c;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "adcode"

    invoke-virtual {v2}, Lcom/aps/c;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/aps/c;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/aps/c;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/aps/c;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setCityCode(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/amap/api/location/AMapLocation;->setAdCode(Ljava/lang/String;)V

    if-eqz v5, :cond_15

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_15

    const-string/jumbo v3, " "

    const-string/jumbo v5, ""

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setAddress(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v2}, Lcom/aps/c;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setCity(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aps/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setDistrict(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aps/c;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aps/c;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setProvince(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v1, v0

    :cond_10
    if-eqz v1, :cond_12

    :try_start_a
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->f:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->d:Z

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/amap/api/location/c;->f()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    :cond_12
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I

    move-result v0

    if-ne v0, v6, :cond_13

    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->b(Landroid/content/Context;)Z

    :cond_13
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0}, Lcom/aps/l;->b()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    :cond_14
    :try_start_b
    iget-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    if-eqz v0, :cond_27

    iget-wide v0, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_1

    :cond_15
    :try_start_c
    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocation;->setAddress(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Lcom/amap/api/location/AMapLocation;

    const-string/jumbo v0, ""

    invoke-direct {v2, v0}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    const-string/jumbo v1, "\u670d\u52a1\u5668\u5f02\u5e38"

    invoke-direct {v0, v1}, Lcom/amap/api/location/core/AMapLocException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/amap/api/location/AMapLocation;->setAMapException(Lcom/amap/api/location/core/AMapLocException;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v2, :cond_17

    :try_start_f
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->f:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->d:Z

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/amap/api/location/c;->f()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    :cond_17
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I

    move-result v0

    if-ne v0, v6, :cond_18

    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->b(Landroid/content/Context;)Z

    :cond_18
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0}, Lcom/aps/l;->b()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3

    :cond_19
    :try_start_10
    iget-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    if-eqz v0, :cond_1f

    iget-wide v0, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_1

    :cond_1a
    const-wide/16 v1, 0x7530

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0

    :goto_5
    :try_start_11
    throw v0
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v1, :cond_1c

    :try_start_12
    iget-object v2, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v2, v2, Lcom/amap/api/location/a;->f:Z

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v2, v2, Lcom/amap/api/location/a;->d:Z

    if-eqz v2, :cond_1b

    invoke-direct {p0}, Lcom/amap/api/location/c;->f()Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1b
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x64

    iput v1, v2, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v2}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    :cond_1c
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I

    move-result v1

    if-ne v1, v6, :cond_1d

    iget-object v1, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z

    iget-object v1, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/location/core/a;->b(Landroid/content/Context;)Z

    :cond_1d
    iget-object v1, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v1}, Lcom/aps/l;->b()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3

    :cond_1e
    :try_start_13
    iget-boolean v1, p0, Lcom/amap/api/location/c;->c:Z

    if-eqz v1, :cond_1a

    iget-wide v1, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_5

    :cond_1f
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_0

    goto/16 :goto_1

    :catch_4
    move-exception v0

    if-eqz v1, :cond_21

    :try_start_14
    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->f:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/amap/api/location/c;->h:Lcom/amap/api/location/a;

    iget-boolean v0, v0, Lcom/amap/api/location/a;->d:Z

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/amap/api/location/c;->f()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/location/c;->g:Lcom/amap/api/location/a$a;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    :cond_21
    invoke-static {}, Lcom/amap/api/location/core/a;->a()I

    move-result v0

    if-ne v0, v6, :cond_22

    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/amap/api/location/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->b(Landroid/content/Context;)Z

    :cond_22
    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/amap/api/location/c;->a:Lcom/aps/l;

    invoke-interface {v0}, Lcom/aps/l;->b()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_3

    :cond_23
    :try_start_15
    iget-boolean v0, p0, Lcom/amap/api/location/c;->c:Z

    if-eqz v0, :cond_24

    iget-wide v0, p0, Lcom/amap/api/location/c;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_2

    :cond_24
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_2

    :cond_25
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_1

    :cond_26
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_2

    :cond_27
    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_6

    :cond_28
    move-object v2, v0

    goto/16 :goto_3
.end method
