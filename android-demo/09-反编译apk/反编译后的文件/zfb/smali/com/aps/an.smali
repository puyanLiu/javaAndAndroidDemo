.class final Lcom/aps/an;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/aps/am;


# direct methods
.method constructor <init>(Lcom/aps/am;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/an;->a:Lcom/aps/am;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/aps/an;->a:Lcom/aps/am;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aps/am;->a(Lcom/aps/am;Landroid/os/Looper;)Landroid/os/Looper;

    iget-object v0, p0, Lcom/aps/an;->a:Lcom/aps/am;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/aps/am;->a(Lcom/aps/am;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v0, p0, Lcom/aps/an;->a:Lcom/aps/am;

    new-instance v1, Lcom/aps/ao;

    iget-object v2, p0, Lcom/aps/an;->a:Lcom/aps/am;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/aps/ao;-><init>(Lcom/aps/am;B)V

    invoke-static {v0, v1}, Lcom/aps/am;->a(Lcom/aps/am;Lcom/aps/ao;)Lcom/aps/ao;

    iget-object v0, p0, Lcom/aps/an;->a:Lcom/aps/am;

    iget-object v1, p0, Lcom/aps/an;->a:Lcom/aps/am;

    invoke-static {v1}, Lcom/aps/am;->a(Lcom/aps/am;)Lcom/aps/ao;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aps/am;->a(Lcom/aps/am;Landroid/telephony/PhoneStateListener;)V

    iget-object v0, p0, Lcom/aps/an;->a:Lcom/aps/am;

    new-instance v1, Lcom/aps/ap;

    iget-object v2, p0, Lcom/aps/an;->a:Lcom/aps/am;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/aps/ap;-><init>(Lcom/aps/am;B)V

    invoke-static {v0, v1}, Lcom/aps/am;->a(Lcom/aps/am;Lcom/aps/ap;)Lcom/aps/ap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/aps/an;->a:Lcom/aps/am;

    iget-object v1, p0, Lcom/aps/an;->a:Lcom/aps/am;

    invoke-static {v1}, Lcom/aps/am;->b(Lcom/aps/am;)Lcom/aps/ap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aps/am;->a(Lcom/aps/am;Landroid/location/GpsStatus$NmeaListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
